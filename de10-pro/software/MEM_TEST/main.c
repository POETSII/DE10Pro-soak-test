#include "terasic_includes.h"
#include "mem_verify.h"


#define A_STATUS_BIT_FAIL        0x0800
#define A_STATUS_BIT_SUCCESS     0x0400
#define A_STATUS_BIT_RESET_DONE  0x0200
#define A_BIT_MASK               0x0E00


#define B_STATUS_BIT_FAIL        0x0100
#define B_STATUS_BIT_SUCCESS     0x0080
#define B_STATUS_BIT_RESET_DONE  0x0040
#define B_BIT_MASK               0x01C0

#define C_STATUS_BIT_FAIL        0x0020
#define C_STATUS_BIT_SUCCESS     0x0010
#define C_STATUS_BIT_RESET_DONE  0x0008
#define C_BIT_MASK               0x0038

#define D_STATUS_BIT_FAIL        0x0004
#define D_STATUS_BIT_SUCCESS     0x0002
#define D_STATUS_BIT_RESET_DONE  0x0001
#define D_BIT_MASK               0x0007

#define STATUS_BIT_FAIL          0x0004
#define STATUS_BIT_SUCCESS       0x0002
#define STATUS_BIT_RESET_DONE    0x0001
#define BIT_MASK                 0x0007




typedef bool (*LP_VERIFY_FUNC)(void);


bool TEST_DDR4(void);
bool TEST_DDR4_QUICK(void);

typedef struct{
    LP_VERIFY_FUNC func;
    char szName[128];
}FUNC_INFO;

FUNC_INFO szFuncList[] = {
	{TEST_DDR4,         "DDR4x4 Test"},
	{TEST_DDR4_QUICK,   "DDR4x4 Quick Test"},

};


void GUI_ShowMenu(void){
    int nNum,i;

    nNum = sizeof(szFuncList)/sizeof(szFuncList[0]);
    printf("======= DE10-Pro NIOS DDR4x4 Program =======\r\n");
    for(i=0;i<nNum;i++){
        printf("[%d] %s\r\n", i, szFuncList[i].szName);
    }
    printf("Input your chioce:");
}

int GUI_QueryUser(void){
    int nChoice = 0;
    scanf("%d", &nChoice);
    printf("%d\r\n", nChoice);
    return nChoice;
}

//===============================================================
int main(void){
    const int powerScale = 4800;
    while (1) {
      printf("Temp: %i\n", IORD(TEMP_PIO_BASE, 0x00));
      printf("PowerMin: %iW\n", IORD(POWER_MIN_PIO_BASE, 0x00)/powerScale);
      printf("PowerMax: %iW\n", IORD(POWER_MAX_PIO_BASE, 0x00)/powerScale);
      printf("Press <ENTER> for another temp/power reading\n");
      getchar();
      //usleep(1000000);
    }

/*
    int nChoice;
    int nNum;
    bool bPass;
    nNum = sizeof(szFuncList)/sizeof(szFuncList[0]);
    while(1){
    	GUI_ShowMenu();
        nChoice = GUI_QueryUser();
        if (nChoice >= 0 && nChoice < nNum){
            bPass = szFuncList[nChoice].func();
            printf("%s Test:%s\r\n", szFuncList[nChoice].szName, bPass?"PASS":"NG");
        }
    }
*/
}


bool TEST_DDR4(void){
	bool bPassA, bPassB, bPassC, bPassD, bLoop;
	bool bPassSubA[4], bPassSubB[4], bPassSubC[4], bPassSubD[4];
	int TestIndex ;
	alt_u32 InitValue = 0x01;
	bool bShowMessage = TRUE, bTimeout, bDone;
	alt_u32 TimeStart, TimeCalStart, TimeElapsed;
	alt_u16 Status,ButtonStatus;
	const alt_u8 ButtonMask = 0x03; // 2 key
	const alt_u32 CalTimeout = alt_ticks_per_second()*3/2; // 1.5 second
	const alt_u32 ResetTimeout = alt_ticks_per_second()*2; // 2 second
	alt_u64 span_base;
	alt_u32 span_base_lo, span_base_hi;
	alt_u32 i;

	IOWR(DDR4_LOCAL_RESET_REQ_BASE, 0x00, 0x00);


	printf("===== DDR4x4 Test! Size=A: 4GB, B: 4GB, C: 4GB, D: 4GB =====\r\n");

//	while(1){
        printf("\n==========================================================\n");

        printf("Press any BUTTON on the board to start test [BUTTON-0 for continued test] \n");
/*
        ButtonStatus = ButtonMask;
        while((ButtonStatus & ButtonMask) == ButtonMask){
        	ButtonStatus = IORD(BUTTON_BASE, 0);
        	//ButtonStatus = 0x01;
        }

        if ((ButtonStatus & 0x01) == 0x00){
            bLoop = TRUE;
        }else{
            bLoop = FALSE;
            usleep(300*1000);
        }
*/
  bLoop = FALSE;


		//
        bPassA = TRUE;
        bPassB = TRUE;
        bPassC = TRUE;
        bPassD = TRUE;
        TestIndex = 0;

        do{
        	TestIndex++;
        	printf("=====> DDR4x4 Testing, Iteration: %d\n", TestIndex);

        	// reset (0 --> 1 --> 0)
//        	printf("local reset reqeust\r\n");
        	IOWR(DDR4_LOCAL_RESET_REQ_BASE, 0x00, 0x01);
        	usleep(2*1000);
        	IOWR(DDR4_LOCAL_RESET_REQ_BASE, 0x00, 0x00);
        	usleep(2*1000);

        	TimeStart = alt_nticks();
        	bTimeout = FALSE;
        	bDone = FALSE;


        	// check reset done
        	do{
        		Status = IORD(DDR4_STATUS_BASE, 0x00);
           		if (
				    ((Status & A_STATUS_BIT_RESET_DONE) == A_STATUS_BIT_RESET_DONE)
				 && ((Status & B_STATUS_BIT_RESET_DONE) == B_STATUS_BIT_RESET_DONE)
				 && ((Status & C_STATUS_BIT_RESET_DONE) == C_STATUS_BIT_RESET_DONE)
				 && ((Status & D_STATUS_BIT_RESET_DONE) == D_STATUS_BIT_RESET_DONE)
			       )
					bDone = TRUE;
				else if ((alt_nticks()-TimeStart) > ResetTimeout)
        			bTimeout = TRUE;
        	}while(!bDone && !bTimeout);

        	if (!bTimeout){
        		TimeElapsed = alt_nticks()-TimeStart;
            	printf("DDR4x4 Reset durations, %.3f seconds\r\n", (float)TimeElapsed/(float)alt_ticks_per_second());
        	}else{
        		printf("DDR4x4 Reset done Timeout, \r\n");
        		printf("status: A[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 9) & BIT_MASK);
            	printf("B[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 6) & BIT_MASK);
            	printf("C[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 3) & BIT_MASK);
            	printf("D[local_fail, local_pass, reset_done] = %04xh \r\n",  (Status >> 0) & BIT_MASK);
        	}


        	// check calibration done
        	if (!bTimeout){
        		bDone = FALSE;

        		TimeCalStart = alt_nticks();
        		do{
        			Status = IORD(DDR4_STATUS_BASE, 0x00);
        			if (
					    ((Status & (A_STATUS_BIT_SUCCESS | A_STATUS_BIT_FAIL)) != 0)
					 &&	((Status & (B_STATUS_BIT_SUCCESS | B_STATUS_BIT_FAIL)) != 0)
					 && ((Status & (C_STATUS_BIT_SUCCESS | C_STATUS_BIT_FAIL)) != 0)
					 && ((Status & (D_STATUS_BIT_SUCCESS | D_STATUS_BIT_FAIL)) != 0)
					   )
        				bDone = TRUE;
        			else if ((alt_nticks()-TimeCalStart) > CalTimeout)
        				bTimeout = TRUE;
        		}while(!bDone && !bTimeout);

        		if (bTimeout){
        			printf("DDR4x4 Calibration Timeout, \r\n");
            		printf("status: A[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 9) & BIT_MASK);
                	printf("B[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 6) & BIT_MASK);
                	printf("C[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 3) & BIT_MASK);
                	printf("D[local_fail, local_pass, reset_done] = %04xh \r\n",  (Status >> 0) & BIT_MASK);
        		}
        		else{
        			printf("DDR4x4 Calibration Duration:%.3f seconds, \r\n", (float)(alt_nticks()-TimeCalStart)/(float)alt_ticks_per_second());
        		}

        	}


        	////////////////////////////
        	// Testing //
        	// DDR4-A
        	TimeStart = alt_nticks();
        	printf("== DDR4-A Testing...\r\n");
        	if (((Status & A_STATUS_BIT_FAIL) == A_STATUS_BIT_FAIL) || (((Status & A_STATUS_BIT_SUCCESS) != A_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 9) & BIT_MASK);
        		bPassA = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}

        	if (bPassA) {
        		for (i = 0; i < 4; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: \r\n", i, i + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubA[i] = TMEM_Verify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, InitValue << i,  bShowMessage);
        			bPassA = bPassA && bPassSubA[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4A test:%s, %d seconds\r\n", bPassA ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));


        	////////////////////////////
        	// DDR4-B
        	TimeStart = alt_nticks();
        	printf("== DDR4-B Testing...\r\n");
        	if (((Status & B_STATUS_BIT_FAIL) == B_STATUS_BIT_FAIL) || (((Status & B_STATUS_BIT_SUCCESS) != B_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 6) & BIT_MASK);
        		bPassB = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}

        	if (bPassB) {
        		for (i = 4; i < 8; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: \r\n", (i-4), (i-4) + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubB[i] = TMEM_Verify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, InitValue << i,  bShowMessage);
        			bPassB = bPassB && bPassSubB[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4B test:%s, %d seconds\r\n", bPassB ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));


        	////////////////////////////
        	// DDR4-C
        	TimeStart = alt_nticks();
        	printf("== DDR4-C Testing...\r\n");
        	if (((Status & C_STATUS_BIT_FAIL) == C_STATUS_BIT_FAIL) || (((Status & C_STATUS_BIT_SUCCESS) != C_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 3) & BIT_MASK);
        		bPassC = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}


        	if (bPassC) {
        		for (i = 8; i < 12; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: \r\n", (i-8), (i-8) + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubC[i] = TMEM_Verify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, InitValue << i,  bShowMessage);
        			bPassC = bPassC && bPassSubC[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4C test:%s, %d seconds\r\n", bPassC ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));


        	////////////////////////////
        	// DDR4-D
        	TimeStart = alt_nticks();
        	printf("== DDR4-D Testing...\r\n");
        	if (((Status & D_STATUS_BIT_FAIL) == D_STATUS_BIT_FAIL) || (((Status & D_STATUS_BIT_SUCCESS) != D_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 0) & BIT_MASK);
        		bPassD = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}


        	if (bPassD) {
        		for (i = 12; i < 16; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: \r\n", (i-12), (i-12) + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubD[i] = TMEM_Verify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, InitValue << i,  bShowMessage);
        			bPassD = bPassD && bPassSubD[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4D test:%s, %d seconds\r\n", bPassD ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));



            if (bPassA && bPassB && bPassC && bPassD && bLoop){  // is abort loop?
            	//ButtonStatus = IORD(BUTTON_BASE, 0);
            	//if ((ButtonStatus & ButtonMask) != ButtonMask)
            		bLoop = FALSE; // press any key to abort continued test
            }


        }while(bLoop && bPassA && bPassB && bPassC && bPassD);
//	} // while(1)

    return bPassA && bPassB && bPassC && bPassD;
}



bool TEST_DDR4_QUICK(void){
	bool bPassA, bPassB, bPassC, bPassD, bLoop;
	bool bPassSubA[4], bPassSubB[4], bPassSubC[4], bPassSubD[4];
	int TestIndex ;
	alt_u32 InitValue = 0x01;
	bool bShowMessage = TRUE, bTimeout, bDone;
	alt_u32 TimeStart, TimeCalStart, TimeElapsed;
	alt_u16 Status,ButtonStatus;
	const alt_u8 ButtonMask = 0x03; // 2 key
	const alt_u32 CalTimeout = alt_ticks_per_second()*3/2; // 1.5 second
	const alt_u32 ResetTimeout = alt_ticks_per_second()*2; // 2 second
	alt_u64 span_base;
	alt_u32 span_base_lo, span_base_hi;
	alt_u32 i;

	IOWR(DDR4_LOCAL_RESET_REQ_BASE, 0x00, 0x00);


	printf("===== DDR4x4 Test! Size=A: 4GB, B: 4GB, C: 4GB, D: 4GB =====\r\n");

//	while(1){
        printf("\n==========================================================\n");

        printf("Press any BUTTON on the board to start test [BUTTON-0 for continued test] \n");
/*
        ButtonStatus = ButtonMask;
        while((ButtonStatus & ButtonMask) == ButtonMask){
        	ButtonStatus = IORD(BUTTON_BASE, 0);
        	//ButtonStatus = 0x01;
        }

        if ((ButtonStatus & 0x01) == 0x00){
            bLoop = TRUE;
        }else{
            bLoop = FALSE;
            usleep(300*1000);
        }
*/
  bLoop = FALSE;
 


		//
        bPassA = TRUE;
        bPassB = TRUE;
        bPassC = TRUE;
        bPassD = TRUE;
        TestIndex = 0;

        do{
        	TestIndex++;
        	printf("=====> DDR4x4 Testing, Iteration: %d\n", TestIndex);

        	// reset (0 --> 1 --> 0)
//        	printf("local reset reqeust\r\n");
        	IOWR(DDR4_LOCAL_RESET_REQ_BASE, 0x00, 0x01);
        	usleep(2*1000);
        	IOWR(DDR4_LOCAL_RESET_REQ_BASE, 0x00, 0x00);
        	usleep(2*1000);

        	TimeStart = alt_nticks();
        	bTimeout = FALSE;
        	bDone = FALSE;

        	// check reset done
        	do{
        		Status = IORD(DDR4_STATUS_BASE, 0x00);
           		if (
				    ((Status & A_STATUS_BIT_RESET_DONE) == A_STATUS_BIT_RESET_DONE)
				 && ((Status & B_STATUS_BIT_RESET_DONE) == B_STATUS_BIT_RESET_DONE)
				 && ((Status & C_STATUS_BIT_RESET_DONE) == C_STATUS_BIT_RESET_DONE)
				 && ((Status & D_STATUS_BIT_RESET_DONE) == D_STATUS_BIT_RESET_DONE)
			       )
					bDone = TRUE;
				else if ((alt_nticks()-TimeStart) > ResetTimeout)
        			bTimeout = TRUE;
        	}while(!bDone && !bTimeout);

        	if (!bTimeout){
        		TimeElapsed = alt_nticks()-TimeStart;
            	printf("DDR4x4 Reset durations, %.3f seconds\r\n", (float)TimeElapsed/(float)alt_ticks_per_second());
        	}else{
        		printf("DDR4x4 Reset done Timeout, \r\n");
        		printf("status: A[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 9) & BIT_MASK);
            	printf("B[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 6) & BIT_MASK);
            	printf("C[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 3) & BIT_MASK);
            	printf("D[local_fail, local_pass, reset_done] = %04xh \r\n",  (Status >> 0) & BIT_MASK);
        	}

        	// check calibration done
        	if (!bTimeout){
        		bDone = FALSE;

        		usleep(500*1000);

        		TimeCalStart = alt_nticks();
        		do{
        			Status = IORD(DDR4_STATUS_BASE, 0x00);
        			if (
					    ((Status & (A_STATUS_BIT_SUCCESS | A_STATUS_BIT_FAIL)) != 0)
					 &&	((Status & (B_STATUS_BIT_SUCCESS | B_STATUS_BIT_FAIL)) != 0)
					 && ((Status & (C_STATUS_BIT_SUCCESS | C_STATUS_BIT_FAIL)) != 0)
					 && ((Status & (D_STATUS_BIT_SUCCESS | D_STATUS_BIT_FAIL)) != 0)
					   )
        				bDone = TRUE;
        			else if ((alt_nticks()-TimeCalStart) > CalTimeout)
        				bTimeout = TRUE;
        		}while(!bDone && !bTimeout);

        		if (bTimeout){
        			printf("DDR4x4 Calibration Timeout, \r\n");
            		printf("status: A[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 9) & BIT_MASK);
                	printf("B[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 6) & BIT_MASK);
                	printf("C[local_fail, local_pass, reset_done] = %04xh, \r\n", (Status >> 3) & BIT_MASK);
                	printf("D[local_fail, local_pass, reset_done] = %04xh \r\n",  (Status >> 0) & BIT_MASK);
        		}
        		else{
        			printf("DDR4x4 Calibration Duration:%.3f seconds, \r\n", (float)(alt_nticks()-TimeCalStart)/(float)alt_ticks_per_second());
        		}

        	}

        	////////////////////////////
        	// Testing //
        	// DDR4-A
        	TimeStart = alt_nticks();
        	printf("== DDR4-A Testing...\r\n");
        	if (((Status & A_STATUS_BIT_FAIL) == A_STATUS_BIT_FAIL) || (((Status & A_STATUS_BIT_SUCCESS) != A_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 9) & BIT_MASK);
        		bPassA = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}


        	if (bPassA){
        		for (i = 0; i < 4; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: ", i, i + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubA[i] = TMEM_QuickVerify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, 32,  28);
        			bPassA = bPassA && bPassSubA[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4A test:%s, %d seconds\r\n", bPassA ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));


        	////////////////////////////
        	// DDR4-B
        	TimeStart = alt_nticks();
        	printf("== DDR4-B Testing...\r\n");
        	if (((Status & B_STATUS_BIT_FAIL) == B_STATUS_BIT_FAIL) || (((Status & B_STATUS_BIT_SUCCESS) != B_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 6) & BIT_MASK);
        		bPassB = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}


        	if (bPassB) {
        		for (i = 4; i < 8; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: ", (i-4), (i-4) + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubB[i] = TMEM_QuickVerify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, 32,  28);
        			bPassB = bPassB && bPassSubB[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4B test:%s, %d seconds\r\n", bPassB ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));


        	////////////////////////////
        	// DDR4-C
        	TimeStart = alt_nticks();
        	printf("== DDR4-C Testing...\r\n");
        	if (((Status & C_STATUS_BIT_FAIL) == C_STATUS_BIT_FAIL) || (((Status & C_STATUS_BIT_SUCCESS) != C_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 3) & BIT_MASK);
        		bPassC = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}


        	if (bPassC) {
        		for (i = 8; i < 12; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: ", (i-8), (i-8) + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubC[i] = TMEM_QuickVerify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, 32,  28);
        			bPassC = bPassC && bPassSubC[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4C test:%s, %d seconds\r\n", bPassC ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));


        	////////////////////////////
        	// DDR4-D
        	TimeStart = alt_nticks();
        	printf("== DDR4-D Testing...\r\n");
        	if (((Status & D_STATUS_BIT_FAIL) == D_STATUS_BIT_FAIL) || (((Status & D_STATUS_BIT_SUCCESS) != D_STATUS_BIT_SUCCESS))){
        		printf("local init done: fail(Status[local_fail,local_pass, reset_done]=%04xh)\r\n", (Status >> 0) & BIT_MASK);
        		bPassD = FALSE;
        	}else{
        		//printf("status=%xh\r\n", Status);
        	}


        	if (bPassD) {
        		for (i = 12; i < 16; i++){
        			printf("DDR4 address bank: %dGB ~ %dGB: ", (i-12), (i-12) + 1);
        			span_base = (alt_u64)ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN * i;
        			span_base_lo = span_base & 0xffffffff;
        			span_base_hi = (span_base >> 32) & 0xffffffff;
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 0, span_base_lo);
        			IOWR(ADDRESS_SPAN_EXTENDER_DDR4_CNTL_BASE, 1, span_base_hi);

            		bPassSubD[i] = TMEM_QuickVerify(ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_BASE, ADDRESS_SPAN_EXTENDER_DDR4_WINDOWED_SLAVE_SPAN, 32,  28);
        			bPassD = bPassD && bPassSubD[i];
        		}
        	}

        	TimeElapsed = alt_nticks() - TimeStart;
        	printf("DDR4D test:%s, %d seconds\r\n", bPassD ? "Pass" : "NG", (int)(TimeElapsed/alt_ticks_per_second()));



            if (bPassA && bPassB && bPassC && bPassD && bLoop){  // is abort loop?
            	//ButtonStatus = IORD(BUTTON_BASE, 0);
            	//if ((ButtonStatus & ButtonMask) != ButtonMask)
            		bLoop = FALSE; // press any key to abort continued test
            }


        }while(bLoop && bPassA && bPassB && bPassC && bPassD);
//	} // while(1)


    return bPassA && bPassB && bPassC && bPassD;
}
