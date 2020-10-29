// ============================================================================
// Copyright (c) 2018 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development
//   Kits made by Terasic.  Other use of this code, including the selling
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use
//   or functionality of this code.
//
// ============================================================================
//
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Wed Jan 31 14:15:58 2018
// ============================================================================

`define ENABLE_DDR4A
`define ENABLE_DDR4B
`define ENABLE_DDR4C
`define ENABLE_DDR4D
//`define ENABLE_PCIE
`define ENABLE_QSFP28A
`define ENABLE_QSFP28B
`define ENABLE_QSFP28C
`define ENABLE_QSFP28D
//`define ENABLE_HPS

module DE10_Pro(

      ///////// CLOCK /////////
      input              CLK_100_B3I,
      input              CLK_50_B2C,
      input              CLK_50_B2L,
      input              CLK_50_B3C,
      input              CLK_50_B3I,
      input              CLK_50_B3L,

      ///////// Buttons /////////
      input              CPU_RESET_n,
      input    [ 1: 0]   BUTTON,


      ///////// Swtiches /////////
      input    [ 1: 0]   SW,

      ///////// LED /////////
      output   [ 3: 0]   LED, //LED is Low-Active

      ///////// FLASH /////////
      output             FLASH_CLK,
      output   [27: 1]   FLASH_A,
      inout    [15: 0]   FLASH_D,
      output             FLASH_CE_n,
      output             FLASH_WE_n,
      output             FLASH_OE_n,
      output             FLASH_ADV_n,
      output             FLASH_RESET_n,
      input              FLASH_RDY_BSY_n,

`ifdef ENABLE_DDR4A
      ///////// DDR4A /////////
      input              DDR4A_REFCLK_p,
      output   [16: 0]   DDR4A_A,
      output   [ 1: 0]   DDR4A_BA,
      output   [ 1: 0]   DDR4A_BG,
      output             DDR4A_CK,
      output             DDR4A_CK_n,
      output             DDR4A_CKE,
      inout    [ 8: 0]   DDR4A_DQS,
      inout    [ 8: 0]   DDR4A_DQS_n,
      inout    [71: 0]   DDR4A_DQ,
      inout    [ 8: 0]   DDR4A_DBI_n,
      output             DDR4A_CS_n,
      output             DDR4A_RESET_n,
      output             DDR4A_ODT,
      output             DDR4A_PAR,
      input              DDR4A_ALERT_n,
      output             DDR4A_ACT_n,
      input              DDR4A_EVENT_n,
      inout              DDR4A_SCL,
      inout              DDR4A_SDA,
      input              DDR4A_RZQ,
`endif /*ENABLE_DDR4A*/

`ifdef ENABLE_DDR4B
      ///////// DDR4B /////////
      input              DDR4B_REFCLK_p,
      output   [16: 0]   DDR4B_A,
      output   [ 1: 0]   DDR4B_BA,
      output   [ 1: 0]   DDR4B_BG,
      output             DDR4B_CK,
      output             DDR4B_CK_n,
      output             DDR4B_CKE,
      inout    [ 8: 0]   DDR4B_DQS,
      inout    [ 8: 0]   DDR4B_DQS_n,
      inout    [71: 0]   DDR4B_DQ,
      inout    [ 8: 0]   DDR4B_DBI_n,
      output             DDR4B_CS_n,
      output             DDR4B_RESET_n,
      output             DDR4B_ODT,
      output             DDR4B_PAR,
      input              DDR4B_ALERT_n,
      output             DDR4B_ACT_n,
      input              DDR4B_EVENT_n,
      inout              DDR4B_SCL,
      inout              DDR4B_SDA,
      input              DDR4B_RZQ,
`endif /*ENABLE_DDR4B*/

`ifdef ENABLE_DDR4C
      ///////// DDR4C /////////
      input              DDR4C_REFCLK_p,
      output   [16: 0]   DDR4C_A,
      output   [ 1: 0]   DDR4C_BA,
      output   [ 1: 0]   DDR4C_BG,
      output             DDR4C_CK,
      output             DDR4C_CK_n,
      output             DDR4C_CKE,
      inout    [ 8: 0]   DDR4C_DQS,
      inout    [ 8: 0]   DDR4C_DQS_n,
      inout    [71: 0]   DDR4C_DQ,
      inout    [ 8: 0]   DDR4C_DBI_n,
      output             DDR4C_CS_n,
      output             DDR4C_RESET_n,
      output             DDR4C_ODT,
      output             DDR4C_PAR,
      input              DDR4C_ALERT_n,
      output             DDR4C_ACT_n,
      input              DDR4C_EVENT_n,
      inout              DDR4C_SCL,
      inout              DDR4C_SDA,
      input              DDR4C_RZQ,
`endif /*ENABLE_DDR4C*/

`ifdef ENABLE_DDR4D
      ///////// DDR4D /////////
      input              DDR4D_REFCLK_p,
      output   [16: 0]   DDR4D_A,
      output   [ 1: 0]   DDR4D_BA,
      output   [ 1: 0]   DDR4D_BG,
      output             DDR4D_CK,
      output             DDR4D_CK_n,
      output             DDR4D_CKE,
      inout    [ 8: 0]   DDR4D_DQS,
      inout    [ 8: 0]   DDR4D_DQS_n,
      inout    [71: 0]   DDR4D_DQ,
      inout    [ 8: 0]   DDR4D_DBI_n,
      output             DDR4D_CS_n,
      output             DDR4D_RESET_n,
      output             DDR4D_ODT,
      output             DDR4D_PAR,
      input              DDR4D_ALERT_n,
      output             DDR4D_ACT_n,
      input              DDR4D_EVENT_n,
      inout              DDR4D_SCL,
      inout              DDR4D_SDA,
      input              DDR4D_RZQ,
`endif /*ENABLE_DDR4D*/

      ///////// SI5340A0 /////////
      inout              SI5340A0_I2C_SCL,
      inout              SI5340A0_I2C_SDA,
      input              SI5340A0_INTR,
      output             SI5340A0_OE_n,
      output             SI5340A0_RST_n,

      ///////// SI5340A1 /////////
      inout              SI5340A1_I2C_SCL,
      inout              SI5340A1_I2C_SDA,
      input              SI5340A1_INTR,
      output             SI5340A1_OE_n,
      output             SI5340A1_RST_n,

      ///////// I2Cs /////////
      inout              FAN_I2C_SCL,
      inout              FAN_I2C_SDA,
      input              FAN_ALERT_n,
      inout              POWER_MONITOR_I2C_SCL,
      inout              POWER_MONITOR_I2C_SDA,
      input              POWER_MONITOR_ALERT_n,
      inout              TEMP_I2C_SCL,
      inout              TEMP_I2C_SDA,

      ///////// GPIO /////////
      inout    [ 1: 0]   GPIO_CLK,
      inout    [ 3: 0]   GPIO_P,

`ifdef ENABLE_PCIE
      ///////// PCIE /////////
      inout              PCIE_SMBCLK,
      inout              PCIE_SMBDAT,
      input              PCIE_REFCLK_p,
      output   [15: 0]   PCIE_TX_p,
      input    [15: 0]   PCIE_RX_p,
      input              PCIE_PERST_n,
      output             PCIE_WAKE_n,
`endif /*ENABLE_PCIE*/

`ifdef ENABLE_QSFP28A
      ///////// QSFP28A /////////
      input              QSFP28A_REFCLK_p,
      output   [ 3: 0]   QSFP28A_TX_p,
      input    [ 3: 0]   QSFP28A_RX_p,
      input              QSFP28A_INTERRUPT_n,
      output             QSFP28A_LP_MODE,
      input              QSFP28A_MOD_PRS_n,
      output             QSFP28A_MOD_SEL_n,
      output             QSFP28A_RST_n,
      inout              QSFP28A_SCL,
      inout              QSFP28A_SDA,
`endif /*ENABLE_QSFP28A*/

`ifdef ENABLE_QSFP28B
      ///////// QSFP28B /////////
      input              QSFP28B_REFCLK_p,
      output   [ 3: 0]   QSFP28B_TX_p,
      input    [ 3: 0]   QSFP28B_RX_p,
      input              QSFP28B_INTERRUPT_n,
      output             QSFP28B_LP_MODE,
      input              QSFP28B_MOD_PRS_n,
      output             QSFP28B_MOD_SEL_n,
      output             QSFP28B_RST_n,
      inout              QSFP28B_SCL,
      inout              QSFP28B_SDA,
`endif /*ENABLE_QSFP28B*/

`ifdef ENABLE_QSFP28C
      ///////// QSFP28C /////////
      input              QSFP28C_REFCLK_p,
      output   [ 3: 0]   QSFP28C_TX_p,
      input    [ 3: 0]   QSFP28C_RX_p,
      input              QSFP28C_INTERRUPT_n,
      output             QSFP28C_LP_MODE,
      input              QSFP28C_MOD_PRS_n,
      output             QSFP28C_MOD_SEL_n,
      output             QSFP28C_RST_n,
      inout              QSFP28C_SCL,
      inout              QSFP28C_SDA,
`endif /*ENABLE_QSFP28C*/

`ifdef ENABLE_QSFP28D
      ///////// QSFP28D /////////
      input              QSFP28D_REFCLK_p,
      output   [ 3: 0]   QSFP28D_TX_p,
      input    [ 3: 0]   QSFP28D_RX_p,
      input              QSFP28D_INTERRUPT_n,
      output             QSFP28D_LP_MODE,
      input              QSFP28D_MOD_PRS_n,
      output             QSFP28D_MOD_SEL_n,
      output             QSFP28D_RST_n,
      inout              QSFP28D_SCL,
      inout              QSFP28D_SDA,
`endif /*ENABLE_QSFP28D*/


`ifdef ENABLE_HPS
      ///////// HPS /////////

      // USB
      input              HPS_USB0_CLK,
      output             HPS_USB0_STP,
      input              HPS_USB0_DIR,
      inout    [ 7: 0]   HPS_USB0_DATA,
      input              HPS_USB0_NXT,

      // Ethernet
      output             HPS_EMAC0_TX_CLK,
      output             HPS_EMAC0_TX_CTL,
      input              HPS_EMAC0_RX_CLK,
      input              HPS_EMAC0_RX_CTL,
      output   [ 3: 0]   HPS_EMAC0_TXD,
      input    [ 3: 0]   HPS_EMAC0_RXD,
      inout              HPS_EMAC0_MDIO,
      output             HPS_EMAC0_MDC,

      // uart
      output             HPS_UART0_TX,
      input              HPS_UART0_RX,
      output             HPS_FPGA_UART1_TX,
      input              HPS_FPGA_UART1_RX,

      // sdcard
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout    [ 3: 0]   HPS_SD_DATA,
      input              HPS_OSC_CLK,

      // user io
      inout              HPS_LED,
      inout              HPS_KEY,

      // card detection
      inout              HPS_CARD_PRSNT_n,

`endif /*ENABLE_HPS*/


       ///////// EXP /////////
      input              EXP_EN,

      ///////// UFL /////////
      inout              UFL_CLKIN_p,
      inout              UFL_CLKIN_n

);


//=======================================================
//  REG/WIRE declarations
//=======================================================
wire reset_n;
wire ddr4_local_reset_req;
//ddr4a
wire ddr4_a_local_reset_done;
wire ddr4_a_status_local_cal_fail;
wire ddr4_a_status_local_cal_success;
//ddr4b
wire ddr4_b_local_reset_done;
wire ddr4_b_status_local_cal_fail;
wire ddr4_b_status_local_cal_success;
//ddr4c
wire ddr4_c_local_reset_done;
wire ddr4_c_status_local_cal_fail;
wire ddr4_c_status_local_cal_success;
//ddr4d
wire ddr4_d_local_reset_done;
wire ddr4_d_status_local_cal_fail;
wire ddr4_d_status_local_cal_success;


wire [11:0] ddr4_status;

// Reset release
wire ninit_done;
reset_release reset_release (
        .ninit_done(ninit_done)
        );

// 100G MAC A
wire txClockA;
wire rxClockA;
wire txReadyA;
wire rxValidA;
wire serial_clkA_1;
wire pll_lockedA_1;
wire serial_clkA_2;
wire pll_lockedA_2;
wire [1:0] pll_lockedA;
atx_pll_s100 atx1A (
  .pll_refclk0(QSFP28A_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkA_1),
  .pll_locked(pll_lockedA_1),
  .pll_cal_busy()
);
atx_pll_s100 atx2A (
  .pll_refclk0(QSFP28A_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkA_2),
  .pll_locked(pll_lockedA_2),
  .pll_cal_busy()
);
assign pll_lockedA = {pll_lockedA_1, pll_lockedA_2};

// 100G MAC B
wire txClockB;
wire rxClockB;
wire txReadyB;
wire rxValidB;
wire serial_clkB_1;
wire pll_lockedB_1;
wire serial_clkB_2;
wire pll_lockedB_2;
wire [1:0] pll_lockedB;
atx_pll_s100 atx1B (
  .pll_refclk0(QSFP28B_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkB_1),
  .pll_locked(pll_lockedB_1),
  .pll_cal_busy()
);
atx_pll_s100 atx2B (
  .pll_refclk0(QSFP28B_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkB_2),
  .pll_locked(pll_lockedB_2),
  .pll_cal_busy()
);
assign pll_lockedB = {pll_lockedB_1, pll_lockedB_2};

// 100G MAC C
wire txClockC;
wire rxClockC;
wire txReadyC;
wire rxValidC;
wire serial_clkC_1;
wire pll_lockedC_1;
wire serial_clkC_2;
wire pll_lockedC_2;
wire [1:0] pll_lockedC;
atx_pll_s100 atx1C (
  .pll_refclk0(QSFP28C_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkC_1),
  .pll_locked(pll_lockedC_1),
  .pll_cal_busy()
);
atx_pll_s100 atx2C (
  .pll_refclk0(QSFP28C_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkC_2),
  .pll_locked(pll_lockedC_2),
  .pll_cal_busy()
);
assign pll_lockedC = {pll_lockedC_1, pll_lockedC_2};

// 100G MAC D
wire txClockD;
wire rxClockD;
wire txReadyD;
wire rxValidD;
wire serial_clkD_1;
wire pll_lockedD_1;
wire serial_clkD_2;
wire pll_lockedD_2;
wire [1:0] pll_lockedD;
atx_pll_s100 atx1D (
  .pll_refclk0(QSFP28D_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkD_1),
  .pll_locked(pll_lockedD_1),
  .pll_cal_busy()
);
atx_pll_s100 atx2D (
  .pll_refclk0(QSFP28D_REFCLK_p),
  .tx_serial_clk_gxt(serial_clkD_2),
  .pll_locked(pll_lockedD_2),
  .pll_cal_busy()
);
assign pll_lockedD = {pll_lockedD_1, pll_lockedD_2};




//=======================================================
//  Structural coding
//=======================================================
assign reset_n = !ninit_done && CPU_RESET_n;
assign ddr4_status = {ddr4_a_status_local_cal_fail, ddr4_a_status_local_cal_success, ddr4_a_local_reset_done,
                      ddr4_b_status_local_cal_fail, ddr4_b_status_local_cal_success, ddr4_b_local_reset_done,
							 ddr4_c_status_local_cal_fail, ddr4_c_status_local_cal_success, ddr4_c_local_reset_done,
							 ddr4_d_status_local_cal_fail, ddr4_d_status_local_cal_success, ddr4_d_local_reset_done
							 };

		
DE10_Pro_QSYS DE10_Pro_QSYS_inst (
		/*input  wire        */    .clk_clk(CLK_50_B3I),                                             
		/*input  wire        */    .reset_reset(~reset_n),                                          

		/*output wire        */    .iopll_0_locked_export(),                               
		/*input  wire [1:0]  */    .button_external_connection_export(BUTTON),                   

		/*output wire        */    .ddr4_local_reset_req_external_connection_export(ddr4_local_reset_req),     
		/*input  wire [11:0] */    .ddr4_status_external_connection_export(ddr4_status),              

		//ddr4a
		/*input  wire        */    .emif_s10_ddr4_a_local_reset_req_local_reset_req(ddr4_local_reset_req),     
		/*output wire        */    .emif_s10_ddr4_a_local_reset_status_local_reset_done(ddr4_a_local_reset_done), 

		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_ck(DDR4A_CK),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_ck_n(DDR4A_CK_n),                        
		/*output wire [16:0] */    .emif_s10_ddr4_a_mem_mem_a(DDR4A_A),                           
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_act_n(DDR4A_ACT_n),                       
		/*output wire [1:0]  */    .emif_s10_ddr4_a_mem_mem_ba(DDR4A_BA),                          
		/*output wire [1:0]  */    .emif_s10_ddr4_a_mem_mem_bg(DDR4A_BG),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_cke(DDR4A_CKE),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_cs_n(DDR4A_CS_n),                        
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_odt(DDR4A_ODT),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_reset_n(DDR4A_RESET_n),                     
		/*output wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_par(DDR4A_PAR),                         
		/*input  wire [0:0]  */    .emif_s10_ddr4_a_mem_mem_alert_n(DDR4A_ALERT_n),                     
		/*inout  wire [8:0]  */    .emif_s10_ddr4_a_mem_mem_dqs(DDR4A_DQS),                         
		/*inout  wire [8:0]  */    .emif_s10_ddr4_a_mem_mem_dqs_n(DDR4A_DQS_n),                       
		/*inout  wire [71:0] */    .emif_s10_ddr4_a_mem_mem_dq(DDR4A_DQ),                          
		/*inout  wire [8:0]  */    .emif_s10_ddr4_a_mem_mem_dbi_n(DDR4A_DBI_n),                       
		/*input  wire        */    .emif_s10_ddr4_a_oct_oct_rzqin(DDR4A_RZQ),                       
		/*input  wire        */    .emif_s10_ddr4_a_pll_ref_clk_clk(DDR4A_REFCLK_p),                     
		/*output wire        */    .emif_s10_ddr4_a_status_local_cal_success(ddr4_a_status_local_cal_success),            
		/*output wire        */    .emif_s10_ddr4_a_status_local_cal_fail(ddr4_a_status_local_cal_fail),               

		//ddr4b
		/*input  wire        */    .emif_s10_ddr4_b_local_reset_req_local_reset_req(ddr4_local_reset_req),     
		/*output wire        */    .emif_s10_ddr4_b_local_reset_status_local_reset_done(ddr4_b_local_reset_done), 

		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_ck(DDR4B_CK),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_ck_n(DDR4B_CK_n),                        
		/*output wire [16:0] */    .emif_s10_ddr4_b_mem_mem_a(DDR4B_A),                           
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_act_n(DDR4B_ACT_n),                       
		/*output wire [1:0]  */    .emif_s10_ddr4_b_mem_mem_ba(DDR4B_BA),                          
		/*output wire [1:0]  */    .emif_s10_ddr4_b_mem_mem_bg(DDR4B_BG),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_cke(DDR4B_CKE),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_cs_n(DDR4B_CS_n),                        
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_odt(DDR4B_ODT),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_reset_n(DDR4B_RESET_n),                     
		/*output wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_par(DDR4B_PAR),                         
		/*input  wire [0:0]  */    .emif_s10_ddr4_b_mem_mem_alert_n(DDR4B_ALERT_n),                     
		/*inout  wire [8:0]  */    .emif_s10_ddr4_b_mem_mem_dqs(DDR4B_DQS),                         
		/*inout  wire [8:0]  */    .emif_s10_ddr4_b_mem_mem_dqs_n(DDR4B_DQS_n),                       
		/*inout  wire [71:0] */    .emif_s10_ddr4_b_mem_mem_dq(DDR4B_DQ),                          
		/*inout  wire [8:0]  */    .emif_s10_ddr4_b_mem_mem_dbi_n(DDR4B_DBI_n),                       
		/*input  wire        */    .emif_s10_ddr4_b_oct_oct_rzqin(DDR4B_RZQ),                       
		/*input  wire        */    .emif_s10_ddr4_b_pll_ref_clk_clk(DDR4B_REFCLK_p),                     
		/*output wire        */    .emif_s10_ddr4_b_status_local_cal_success(ddr4_b_status_local_cal_success),            
		/*output wire        */    .emif_s10_ddr4_b_status_local_cal_fail(ddr4_b_status_local_cal_fail),               

		//ddr4c
		/*input  wire        */    .emif_s10_ddr4_c_local_reset_req_local_reset_req(ddr4_local_reset_req),     
		/*output wire        */    .emif_s10_ddr4_c_local_reset_status_local_reset_done(ddr4_c_local_reset_done), 

		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_ck(DDR4C_CK),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_ck_n(DDR4C_CK_n),                        
		/*output wire [16:0] */    .emif_s10_ddr4_c_mem_mem_a(DDR4C_A),                           
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_act_n(DDR4C_ACT_n),                       
		/*output wire [1:0]  */    .emif_s10_ddr4_c_mem_mem_ba(DDR4C_BA),                          
		/*output wire [1:0]  */    .emif_s10_ddr4_c_mem_mem_bg(DDR4C_BG),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_cke(DDR4C_CKE),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_cs_n(DDR4C_CS_n),                        
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_odt(DDR4C_ODT),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_reset_n(DDR4C_RESET_n),                     
		/*output wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_par(DDR4C_PAR),                         
		/*input  wire [0:0]  */    .emif_s10_ddr4_c_mem_mem_alert_n(DDR4C_ALERT_n),                     
		/*inout  wire [8:0]  */    .emif_s10_ddr4_c_mem_mem_dqs(DDR4C_DQS),                         
		/*inout  wire [8:0]  */    .emif_s10_ddr4_c_mem_mem_dqs_n(DDR4C_DQS_n),                       
		/*inout  wire [71:0] */    .emif_s10_ddr4_c_mem_mem_dq(DDR4C_DQ),                          
		/*inout  wire [8:0]  */    .emif_s10_ddr4_c_mem_mem_dbi_n(DDR4C_DBI_n),                       
		/*input  wire        */    .emif_s10_ddr4_c_oct_oct_rzqin(DDR4C_RZQ),                       
		/*input  wire        */    .emif_s10_ddr4_c_pll_ref_clk_clk(DDR4C_REFCLK_p),                     
		/*output wire        */    .emif_s10_ddr4_c_status_local_cal_success(ddr4_c_status_local_cal_success),            
		/*output wire        */    .emif_s10_ddr4_c_status_local_cal_fail(ddr4_c_status_local_cal_fail),               

		//ddr4d
		/*input  wire        */    .emif_s10_ddr4_d_local_reset_req_local_reset_req(ddr4_local_reset_req),     
		/*output wire        */    .emif_s10_ddr4_d_local_reset_status_local_reset_done(ddr4_d_local_reset_done), 

		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_ck(DDR4D_CK),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_ck_n(DDR4D_CK_n),                        
		/*output wire [16:0] */    .emif_s10_ddr4_d_mem_mem_a(DDR4D_A),                           
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_act_n(DDR4D_ACT_n),                       
		/*output wire [1:0]  */    .emif_s10_ddr4_d_mem_mem_ba(DDR4D_BA),                          
		/*output wire [1:0]  */    .emif_s10_ddr4_d_mem_mem_bg(DDR4D_BG),                          
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_cke(DDR4D_CKE),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_cs_n(DDR4D_CS_n),                        
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_odt(DDR4D_ODT),                         
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_reset_n(DDR4D_RESET_n),                     
		/*output wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_par(DDR4D_PAR),                         
		/*input  wire [0:0]  */    .emif_s10_ddr4_d_mem_mem_alert_n(DDR4D_ALERT_n),                     
		/*inout  wire [8:0]  */    .emif_s10_ddr4_d_mem_mem_dqs(DDR4D_DQS),                         
		/*inout  wire [8:0]  */    .emif_s10_ddr4_d_mem_mem_dqs_n(DDR4D_DQS_n),                       
		/*inout  wire [71:0] */    .emif_s10_ddr4_d_mem_mem_dq(DDR4D_DQ),                          
		/*inout  wire [8:0]  */    .emif_s10_ddr4_d_mem_mem_dbi_n(DDR4D_DBI_n),                       
		/*input  wire        */    .emif_s10_ddr4_d_oct_oct_rzqin(DDR4D_RZQ),                       
		/*input  wire        */    .emif_s10_ddr4_d_pll_ref_clk_clk(DDR4D_REFCLK_p),                     
		/*output wire        */    .emif_s10_ddr4_d_status_local_cal_success(ddr4_d_status_local_cal_success),            
		/*output wire        */ .emif_s10_ddr4_d_status_local_cal_fail(ddr4_d_status_local_cal_fail),

        .alt_e100s10_0_status_clk_status                     (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_0_status_status_write                   (0),                                                                  //   input,    width = 1,
        .alt_e100s10_0_status_status_read                    (0),                                                                  //   input,    width = 1,
        .alt_e100s10_0_status_status_addr                    (0),                                                                  //   input,   width = 16,
        .alt_e100s10_0_status_status_writedata               (0),                                                                  //   input,   width = 32,
        .alt_e100s10_0_avalon_st_tx_clk_txmac                (txClockA),                                                           //  output,    width = 1,
        .alt_e100s10_0_avalon_st_tx_l8_tx_startofpacket      (1),                                                                  //   input,    width = 1,
        .alt_e100s10_0_avalon_st_tx_l8_tx_endofpacket        (1),                                                                  //   input,    width = 1,
        .alt_e100s10_0_avalon_st_tx_l8_tx_valid              (1),                                                                  //   input,    width = 1,
        .alt_e100s10_0_avalon_st_tx_l8_tx_ready              (txReadyA),                                                           //  output,    width = 1,
        .alt_e100s10_0_avalon_st_tx_l8_tx_error              (0),                                                                  //   input,    width = 1,
        .alt_e100s10_0_avalon_st_tx_l8_tx_empty              (0),                                                                  //   input,    width = 6,
        .alt_e100s10_0_avalon_st_tx_l8_tx_data               (0),                                                                  //   input,  width = 512,
        .alt_e100s10_0_avalon_st_rx_clk_rxmac                (rxClockA),                                                           //  output,    width = 1,
        .alt_e100s10_0_avalon_st_rx_l8_rx_valid              (rxValidA),                                                           //  output,    width = 1,
        .alt_e100s10_0_serial_lanes_tx_serial                (QSFP28A_TX_p),                                                       //  output,    width = 4,
        .alt_e100s10_0_serial_lanes_rx_serial                (QSFP28A_RX_p),                                                       //   input,    width = 4,
        .alt_e100s10_0_reconfig_reconfig_clk                 (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_0_reconfig_reconfig_reset               (~reset_n),                                                           //   input,    width = 1,
        .alt_e100s10_0_reconfig_reconfig_write               (0),                                                                  //   input,    width = 1,
        .alt_e100s10_0_reconfig_reconfig_read                (0),                                                                  //   input,    width = 1,
        .alt_e100s10_0_reconfig_reconfig_address             (0),                                                                  //   input,   width = 13,
        .alt_e100s10_0_reconfig_reconfig_writedata           (0),                                                                  //   input,   width = 32,
        .alt_e100s10_0_other_clk_ref                         (QSFP28A_REFCLK_p),                                                   //   input,    width = 1,
        .alt_e100s10_0_other_csr_rst_n                       (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_0_other_tx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_0_other_rx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_0_other_tx_serial_clk                   ({serial_clkA_1, serial_clkA_2}),                                     //   input,    width = 2,
        .alt_e100s10_0_other_tx_pll_locked                   (pll_lockedA),                                                        //   input,    width = 2,

        .alt_e100s10_1_status_clk_status                     (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_1_status_status_write                   (0),                                                                  //   input,    width = 1,
        .alt_e100s10_1_status_status_read                    (0),                                                                  //   input,    width = 1,
        .alt_e100s10_1_status_status_addr                    (0),                                                                  //   input,   width = 16,
        .alt_e100s10_1_status_status_writedata               (0),                                                                  //   input,   width = 32,
        .alt_e100s10_1_avalon_st_tx_clk_txmac                (txClockB),                                                           //  output,    width = 1,
        .alt_e100s10_1_avalon_st_tx_l8_tx_startofpacket      (1),                                                                  //   input,    width = 1,
        .alt_e100s10_1_avalon_st_tx_l8_tx_endofpacket        (1),                                                                  //   input,    width = 1,
        .alt_e100s10_1_avalon_st_tx_l8_tx_valid              (1),                                                                  //   input,    width = 1,
        .alt_e100s10_1_avalon_st_tx_l8_tx_ready              (txReadyB),                                                           //  output,    width = 1,
        .alt_e100s10_1_avalon_st_tx_l8_tx_error              (0),                                                                  //   input,    width = 1,
        .alt_e100s10_1_avalon_st_tx_l8_tx_empty              (0),                                                                  //   input,    width = 6,
        .alt_e100s10_1_avalon_st_tx_l8_tx_data               (0),                                                                  //   input,  width = 512,
        .alt_e100s10_1_avalon_st_rx_clk_rxmac                (rxClockB),                                                           //  output,    width = 1,
        .alt_e100s10_1_avalon_st_rx_l8_rx_valid              (rxValidB),                                                           //  output,    width = 1,
        .alt_e100s10_1_serial_lanes_tx_serial                (QSFP28B_TX_p),                                                       //  output,    width = 4,
        .alt_e100s10_1_serial_lanes_rx_serial                (QSFP28B_RX_p),                                                       //   input,    width = 4,
        .alt_e100s10_1_reconfig_reconfig_clk                 (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_1_reconfig_reconfig_reset               (~reset_n),                                                           //   input,    width = 1,
        .alt_e100s10_1_reconfig_reconfig_write               (0),                                                                  //   input,    width = 1,
        .alt_e100s10_1_reconfig_reconfig_read                (0),                                                                  //   input,    width = 1,
        .alt_e100s10_1_reconfig_reconfig_address             (0),                                                                  //   input,   width = 13,
        .alt_e100s10_1_reconfig_reconfig_writedata           (0),                                                                  //   input,   width = 32,
        .alt_e100s10_1_other_clk_ref                         (QSFP28B_REFCLK_p),                                                   //   input,    width = 1,
        .alt_e100s10_1_other_csr_rst_n                       (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_1_other_tx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_1_other_rx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_1_other_tx_serial_clk                   ({serial_clkB_1, serial_clkB_2}),                                     //   input,    width = 2,
        .alt_e100s10_1_other_tx_pll_locked                   (pll_lockedB),                                                        //   input,    width = 2,

        .alt_e100s10_2_status_clk_status                     (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_2_status_status_write                   (0),                                                                  //   input,    width = 1,
        .alt_e100s10_2_status_status_read                    (0),                                                                  //   input,    width = 1,
        .alt_e100s10_2_status_status_addr                    (0),                                                                  //   input,   width = 16,
        .alt_e100s10_2_status_status_writedata               (0),                                                                  //   input,   width = 32,
        .alt_e100s10_2_avalon_st_tx_clk_txmac                (txClockC),                                                           //  output,    width = 1,
        .alt_e100s10_2_avalon_st_tx_l8_tx_startofpacket      (1),                                                                  //   input,    width = 1,
        .alt_e100s10_2_avalon_st_tx_l8_tx_endofpacket        (1),                                                                  //   input,    width = 1,
        .alt_e100s10_2_avalon_st_tx_l8_tx_valid              (1),                                                                  //   input,    width = 1,
        .alt_e100s10_2_avalon_st_tx_l8_tx_ready              (txReadyC),                                                           //  output,    width = 1,
        .alt_e100s10_2_avalon_st_tx_l8_tx_error              (0),                                                                  //   input,    width = 1,
        .alt_e100s10_2_avalon_st_tx_l8_tx_empty              (0),                                                                  //   input,    width = 6,
        .alt_e100s10_2_avalon_st_tx_l8_tx_data               (0),                                                                  //   input,  width = 512,
        .alt_e100s10_2_avalon_st_rx_clk_rxmac                (rxClockC),                                                           //  output,    width = 1,
        .alt_e100s10_2_avalon_st_rx_l8_rx_valid              (rxValidC),                                                           //  output,    width = 1,
        .alt_e100s10_2_serial_lanes_tx_serial                (QSFP28C_TX_p),                                                       //  output,    width = 4,
        .alt_e100s10_2_serial_lanes_rx_serial                (QSFP28C_RX_p),                                                       //   input,    width = 4,
        .alt_e100s10_2_reconfig_reconfig_clk                 (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_2_reconfig_reconfig_reset               (~reset_n),                                                           //   input,    width = 1,
        .alt_e100s10_2_reconfig_reconfig_write               (0),                                                                  //   input,    width = 1,
        .alt_e100s10_2_reconfig_reconfig_read                (0),                                                                  //   input,    width = 1,
        .alt_e100s10_2_reconfig_reconfig_address             (0),                                                                  //   input,   width = 13,
        .alt_e100s10_2_reconfig_reconfig_writedata           (0),                                                                  //   input,   width = 32,
        .alt_e100s10_2_other_clk_ref                         (QSFP28C_REFCLK_p),                                                   //   input,    width = 1,
        .alt_e100s10_2_other_csr_rst_n                       (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_2_other_tx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_2_other_rx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_2_other_tx_serial_clk                   ({serial_clkC_1, serial_clkC_2}),                                     //   input,    width = 2,
        .alt_e100s10_2_other_tx_pll_locked                   (pll_lockedC),                                                        //   input,    width = 2,

        .alt_e100s10_3_status_clk_status                     (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_3_status_status_write                   (0),                                                                  //   input,    width = 1,
        .alt_e100s10_3_status_status_read                    (0),                                                                  //   input,    width = 1,
        .alt_e100s10_3_status_status_addr                    (0),                                                                  //   input,   width = 16,
        .alt_e100s10_3_status_status_writedata               (0),                                                                  //   input,   width = 32,
        .alt_e100s10_3_avalon_st_tx_clk_txmac                (txClockD),                                                           //  output,    width = 1,
        .alt_e100s10_3_avalon_st_tx_l8_tx_startofpacket      (1),                                                                  //   input,    width = 1,
        .alt_e100s10_3_avalon_st_tx_l8_tx_endofpacket        (1),                                                                  //   input,    width = 1,
        .alt_e100s10_3_avalon_st_tx_l8_tx_valid              (1),                                                                  //   input,    width = 1,
        .alt_e100s10_3_avalon_st_tx_l8_tx_ready              (txReadyD),                                                           //  output,    width = 1,
        .alt_e100s10_3_avalon_st_tx_l8_tx_error              (0),                                                                  //   input,    width = 1,
        .alt_e100s10_3_avalon_st_tx_l8_tx_empty              (0),                                                                  //   input,    width = 6,
        .alt_e100s10_3_avalon_st_tx_l8_tx_data               (0),                                                                  //   input,  width = 512,
        .alt_e100s10_3_avalon_st_rx_clk_rxmac                (rxClockD),                                                           //  output,    width = 1,
        .alt_e100s10_3_avalon_st_rx_l8_rx_valid              (rxValidD),                                                           //  output,    width = 1,
        .alt_e100s10_3_serial_lanes_tx_serial                (QSFP28D_TX_p),                                                       //  output,    width = 4,
        .alt_e100s10_3_serial_lanes_rx_serial                (QSFP28D_RX_p),                                                       //   input,    width = 4,
        .alt_e100s10_3_reconfig_reconfig_clk                 (CLK_50_B3I),                                                         //   input,    width = 1,
        .alt_e100s10_3_reconfig_reconfig_reset               (~reset_n),                                                           //   input,    width = 1,
        .alt_e100s10_3_reconfig_reconfig_write               (0),                                                                  //   input,    width = 1,
        .alt_e100s10_3_reconfig_reconfig_read                (0),                                                                  //   input,    width = 1,
        .alt_e100s10_3_reconfig_reconfig_address             (0),                                                                  //   input,   width = 13,
        .alt_e100s10_3_reconfig_reconfig_writedata           (0),                                                                  //   input,   width = 32,
        .alt_e100s10_3_other_clk_ref                         (QSFP28D_REFCLK_p),                                                   //   input,    width = 1,
        .alt_e100s10_3_other_csr_rst_n                       (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_3_other_tx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_3_other_rx_rst_n                        (reset_n),                                                            //   input,    width = 1,
        .alt_e100s10_3_other_tx_serial_clk                   ({serial_clkD_1, serial_clkD_2}),                                     //   input,    width = 2,
        .alt_e100s10_3_other_tx_pll_locked                   (pll_lockedD)                                                         //   input,    width = 2,

	);



//heart_beat  heart_beat_0 ( .CLK(DDR4A_REFCLK_p ),     .CLK_FREQ  (300_000_000) , . CK_1HZ (LED[0]) );
//heart_beat  heart_beat_1 ( .CLK(DDR4B_REFCLK_p ),     .CLK_FREQ  (300_000_000) , . CK_1HZ (LED[1]) );
heart_beat  heart_beat_2 ( .CLK(DDR4C_REFCLK_p ),     .CLK_FREQ  (300_000_000) , . CK_1HZ (LED[2]) );
heart_beat  heart_beat_3 ( .CLK(DDR4D_REFCLK_p ),     .CLK_FREQ  (300_000_000) , . CK_1HZ (LED[3]) );

// Avoid 100G MAC stuff being optimised away
assign LED[0] = rxValidA || rxValidB || rxValidC || rxValidD;
assign LED[1] = txReadyA || txReadyB || txReadyC || txReadyD;



assign SI5340A0_RST_n = 1'b1;
assign SI5340A1_RST_n = 1'b1;

assign SI5340A0_OE_n = 1'b0;
assign SI5340A1_OE_n = 1'b0;



endmodule
