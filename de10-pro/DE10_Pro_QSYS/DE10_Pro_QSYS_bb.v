module DE10_Pro_QSYS (
		inout  wire         powerreader_0_power_i2c_export_sda,                  //                  powerreader_0_power_i2c.export_sda
		inout  wire         powerreader_0_power_i2c_export_scl,                  //                                         .export_scl
		inout  wire         tempreader_0_i2c_signals_scl,                        //                 tempreader_0_i2c_signals.scl
		inout  wire         tempreader_0_i2c_signals_sda,                        //                                         .sda
		input  wire         alt_e100s10_0_status_clk_status,                     //                     alt_e100s10_0_status.clk_status
		input  wire         alt_e100s10_0_status_status_write,                   //                                         .status_write
		input  wire         alt_e100s10_0_status_status_read,                    //                                         .status_read
		input  wire [15:0]  alt_e100s10_0_status_status_addr,                    //                                         .status_addr
		input  wire [31:0]  alt_e100s10_0_status_status_writedata,               //                                         .status_writedata
		output wire [31:0]  alt_e100s10_0_status_status_readdata,                //                                         .status_readdata
		output wire         alt_e100s10_0_status_status_readdata_valid,          //                                         .status_readdata_valid
		output wire         alt_e100s10_0_status_status_waitrequest,             //                                         .status_waitrequest
		output wire         alt_e100s10_0_avalon_st_tx_clk_txmac,                //               alt_e100s10_0_avalon_st_tx.clk_txmac
		input  wire         alt_e100s10_0_avalon_st_tx_l8_tx_startofpacket,      //                                         .l8_tx_startofpacket
		input  wire         alt_e100s10_0_avalon_st_tx_l8_tx_endofpacket,        //                                         .l8_tx_endofpacket
		input  wire         alt_e100s10_0_avalon_st_tx_l8_tx_valid,              //                                         .l8_tx_valid
		output wire         alt_e100s10_0_avalon_st_tx_l8_tx_ready,              //                                         .l8_tx_ready
		input  wire         alt_e100s10_0_avalon_st_tx_l8_tx_error,              //                                         .l8_tx_error
		input  wire [5:0]   alt_e100s10_0_avalon_st_tx_l8_tx_empty,              //                                         .l8_tx_empty
		input  wire [511:0] alt_e100s10_0_avalon_st_tx_l8_tx_data,               //                                         .l8_tx_data
		output wire         alt_e100s10_0_avalon_st_rx_clk_rxmac,                //               alt_e100s10_0_avalon_st_rx.clk_rxmac
		output wire [5:0]   alt_e100s10_0_avalon_st_rx_l8_rx_error,              //                                         .l8_rx_error
		output wire         alt_e100s10_0_avalon_st_rx_l8_rx_valid,              //                                         .l8_rx_valid
		output wire         alt_e100s10_0_avalon_st_rx_l8_rx_startofpacket,      //                                         .l8_rx_startofpacket
		output wire         alt_e100s10_0_avalon_st_rx_l8_rx_endofpacket,        //                                         .l8_rx_endofpacket
		output wire [5:0]   alt_e100s10_0_avalon_st_rx_l8_rx_empty,              //                                         .l8_rx_empty
		output wire [511:0] alt_e100s10_0_avalon_st_rx_l8_rx_data,               //                                         .l8_rx_data
		output wire [3:0]   alt_e100s10_0_serial_lanes_tx_serial,                //               alt_e100s10_0_serial_lanes.tx_serial
		input  wire [3:0]   alt_e100s10_0_serial_lanes_rx_serial,                //                                         .rx_serial
		input  wire         alt_e100s10_0_reconfig_reconfig_clk,                 //                   alt_e100s10_0_reconfig.reconfig_clk
		input  wire         alt_e100s10_0_reconfig_reconfig_reset,               //                                         .reconfig_reset
		input  wire         alt_e100s10_0_reconfig_reconfig_write,               //                                         .reconfig_write
		input  wire         alt_e100s10_0_reconfig_reconfig_read,                //                                         .reconfig_read
		input  wire [12:0]  alt_e100s10_0_reconfig_reconfig_address,             //                                         .reconfig_address
		input  wire [31:0]  alt_e100s10_0_reconfig_reconfig_writedata,           //                                         .reconfig_writedata
		output wire [31:0]  alt_e100s10_0_reconfig_reconfig_readdata,            //                                         .reconfig_readdata
		output wire         alt_e100s10_0_reconfig_reconfig_waitrequest,         //                                         .reconfig_waitrequest
		output wire         alt_e100s10_0_other_tx_lanes_stable,                 //                      alt_e100s10_0_other.tx_lanes_stable
		output wire         alt_e100s10_0_other_rx_pcs_ready,                    //                                         .rx_pcs_ready
		output wire         alt_e100s10_0_other_rx_block_lock,                   //                                         .rx_block_lock
		output wire         alt_e100s10_0_other_rx_am_lock,                      //                                         .rx_am_lock
		input  wire         alt_e100s10_0_other_clk_ref,                         //                                         .clk_ref
		input  wire         alt_e100s10_0_other_csr_rst_n,                       //                                         .csr_rst_n
		input  wire         alt_e100s10_0_other_tx_rst_n,                        //                                         .tx_rst_n
		input  wire         alt_e100s10_0_other_rx_rst_n,                        //                                         .rx_rst_n
		input  wire [1:0]   alt_e100s10_0_other_tx_serial_clk,                   //                                         .tx_serial_clk
		input  wire [1:0]   alt_e100s10_0_other_tx_pll_locked,                   //                                         .tx_pll_locked
		output wire         alt_e100s10_0_stats_l8_txstatus_valid,               //                      alt_e100s10_0_stats.l8_txstatus_valid
		output wire [39:0]  alt_e100s10_0_stats_l8_txstatus_data,                //                                         .l8_txstatus_data
		output wire [6:0]   alt_e100s10_0_stats_l8_txstatus_error,               //                                         .l8_txstatus_error
		output wire         alt_e100s10_0_stats_l8_rxstatus_valid,               //                                         .l8_rxstatus_valid
		output wire [39:0]  alt_e100s10_0_stats_l8_rxstatus_data,                //                                         .l8_rxstatus_data
		input  wire         alt_e100s10_1_status_clk_status,                     //                     alt_e100s10_1_status.clk_status
		input  wire         alt_e100s10_1_status_status_write,                   //                                         .status_write
		input  wire         alt_e100s10_1_status_status_read,                    //                                         .status_read
		input  wire [15:0]  alt_e100s10_1_status_status_addr,                    //                                         .status_addr
		input  wire [31:0]  alt_e100s10_1_status_status_writedata,               //                                         .status_writedata
		output wire [31:0]  alt_e100s10_1_status_status_readdata,                //                                         .status_readdata
		output wire         alt_e100s10_1_status_status_readdata_valid,          //                                         .status_readdata_valid
		output wire         alt_e100s10_1_status_status_waitrequest,             //                                         .status_waitrequest
		output wire         alt_e100s10_1_avalon_st_tx_clk_txmac,                //               alt_e100s10_1_avalon_st_tx.clk_txmac
		input  wire         alt_e100s10_1_avalon_st_tx_l8_tx_startofpacket,      //                                         .l8_tx_startofpacket
		input  wire         alt_e100s10_1_avalon_st_tx_l8_tx_endofpacket,        //                                         .l8_tx_endofpacket
		input  wire         alt_e100s10_1_avalon_st_tx_l8_tx_valid,              //                                         .l8_tx_valid
		output wire         alt_e100s10_1_avalon_st_tx_l8_tx_ready,              //                                         .l8_tx_ready
		input  wire         alt_e100s10_1_avalon_st_tx_l8_tx_error,              //                                         .l8_tx_error
		input  wire [5:0]   alt_e100s10_1_avalon_st_tx_l8_tx_empty,              //                                         .l8_tx_empty
		input  wire [511:0] alt_e100s10_1_avalon_st_tx_l8_tx_data,               //                                         .l8_tx_data
		output wire         alt_e100s10_1_avalon_st_rx_clk_rxmac,                //               alt_e100s10_1_avalon_st_rx.clk_rxmac
		output wire [5:0]   alt_e100s10_1_avalon_st_rx_l8_rx_error,              //                                         .l8_rx_error
		output wire         alt_e100s10_1_avalon_st_rx_l8_rx_valid,              //                                         .l8_rx_valid
		output wire         alt_e100s10_1_avalon_st_rx_l8_rx_startofpacket,      //                                         .l8_rx_startofpacket
		output wire         alt_e100s10_1_avalon_st_rx_l8_rx_endofpacket,        //                                         .l8_rx_endofpacket
		output wire [5:0]   alt_e100s10_1_avalon_st_rx_l8_rx_empty,              //                                         .l8_rx_empty
		output wire [511:0] alt_e100s10_1_avalon_st_rx_l8_rx_data,               //                                         .l8_rx_data
		output wire [3:0]   alt_e100s10_1_serial_lanes_tx_serial,                //               alt_e100s10_1_serial_lanes.tx_serial
		input  wire [3:0]   alt_e100s10_1_serial_lanes_rx_serial,                //                                         .rx_serial
		input  wire         alt_e100s10_1_reconfig_reconfig_clk,                 //                   alt_e100s10_1_reconfig.reconfig_clk
		input  wire         alt_e100s10_1_reconfig_reconfig_reset,               //                                         .reconfig_reset
		input  wire         alt_e100s10_1_reconfig_reconfig_write,               //                                         .reconfig_write
		input  wire         alt_e100s10_1_reconfig_reconfig_read,                //                                         .reconfig_read
		input  wire [12:0]  alt_e100s10_1_reconfig_reconfig_address,             //                                         .reconfig_address
		input  wire [31:0]  alt_e100s10_1_reconfig_reconfig_writedata,           //                                         .reconfig_writedata
		output wire [31:0]  alt_e100s10_1_reconfig_reconfig_readdata,            //                                         .reconfig_readdata
		output wire         alt_e100s10_1_reconfig_reconfig_waitrequest,         //                                         .reconfig_waitrequest
		output wire         alt_e100s10_1_other_tx_lanes_stable,                 //                      alt_e100s10_1_other.tx_lanes_stable
		output wire         alt_e100s10_1_other_rx_pcs_ready,                    //                                         .rx_pcs_ready
		output wire         alt_e100s10_1_other_rx_block_lock,                   //                                         .rx_block_lock
		output wire         alt_e100s10_1_other_rx_am_lock,                      //                                         .rx_am_lock
		input  wire         alt_e100s10_1_other_clk_ref,                         //                                         .clk_ref
		input  wire         alt_e100s10_1_other_csr_rst_n,                       //                                         .csr_rst_n
		input  wire         alt_e100s10_1_other_tx_rst_n,                        //                                         .tx_rst_n
		input  wire         alt_e100s10_1_other_rx_rst_n,                        //                                         .rx_rst_n
		input  wire [1:0]   alt_e100s10_1_other_tx_serial_clk,                   //                                         .tx_serial_clk
		input  wire [1:0]   alt_e100s10_1_other_tx_pll_locked,                   //                                         .tx_pll_locked
		output wire         alt_e100s10_1_stats_l8_txstatus_valid,               //                      alt_e100s10_1_stats.l8_txstatus_valid
		output wire [39:0]  alt_e100s10_1_stats_l8_txstatus_data,                //                                         .l8_txstatus_data
		output wire [6:0]   alt_e100s10_1_stats_l8_txstatus_error,               //                                         .l8_txstatus_error
		output wire         alt_e100s10_1_stats_l8_rxstatus_valid,               //                                         .l8_rxstatus_valid
		output wire [39:0]  alt_e100s10_1_stats_l8_rxstatus_data,                //                                         .l8_rxstatus_data
		input  wire         alt_e100s10_2_status_clk_status,                     //                     alt_e100s10_2_status.clk_status
		input  wire         alt_e100s10_2_status_status_write,                   //                                         .status_write
		input  wire         alt_e100s10_2_status_status_read,                    //                                         .status_read
		input  wire [15:0]  alt_e100s10_2_status_status_addr,                    //                                         .status_addr
		input  wire [31:0]  alt_e100s10_2_status_status_writedata,               //                                         .status_writedata
		output wire [31:0]  alt_e100s10_2_status_status_readdata,                //                                         .status_readdata
		output wire         alt_e100s10_2_status_status_readdata_valid,          //                                         .status_readdata_valid
		output wire         alt_e100s10_2_status_status_waitrequest,             //                                         .status_waitrequest
		output wire         alt_e100s10_2_avalon_st_tx_clk_txmac,                //               alt_e100s10_2_avalon_st_tx.clk_txmac
		input  wire         alt_e100s10_2_avalon_st_tx_l8_tx_startofpacket,      //                                         .l8_tx_startofpacket
		input  wire         alt_e100s10_2_avalon_st_tx_l8_tx_endofpacket,        //                                         .l8_tx_endofpacket
		input  wire         alt_e100s10_2_avalon_st_tx_l8_tx_valid,              //                                         .l8_tx_valid
		output wire         alt_e100s10_2_avalon_st_tx_l8_tx_ready,              //                                         .l8_tx_ready
		input  wire         alt_e100s10_2_avalon_st_tx_l8_tx_error,              //                                         .l8_tx_error
		input  wire [5:0]   alt_e100s10_2_avalon_st_tx_l8_tx_empty,              //                                         .l8_tx_empty
		input  wire [511:0] alt_e100s10_2_avalon_st_tx_l8_tx_data,               //                                         .l8_tx_data
		output wire         alt_e100s10_2_avalon_st_rx_clk_rxmac,                //               alt_e100s10_2_avalon_st_rx.clk_rxmac
		output wire [5:0]   alt_e100s10_2_avalon_st_rx_l8_rx_error,              //                                         .l8_rx_error
		output wire         alt_e100s10_2_avalon_st_rx_l8_rx_valid,              //                                         .l8_rx_valid
		output wire         alt_e100s10_2_avalon_st_rx_l8_rx_startofpacket,      //                                         .l8_rx_startofpacket
		output wire         alt_e100s10_2_avalon_st_rx_l8_rx_endofpacket,        //                                         .l8_rx_endofpacket
		output wire [5:0]   alt_e100s10_2_avalon_st_rx_l8_rx_empty,              //                                         .l8_rx_empty
		output wire [511:0] alt_e100s10_2_avalon_st_rx_l8_rx_data,               //                                         .l8_rx_data
		output wire [3:0]   alt_e100s10_2_serial_lanes_tx_serial,                //               alt_e100s10_2_serial_lanes.tx_serial
		input  wire [3:0]   alt_e100s10_2_serial_lanes_rx_serial,                //                                         .rx_serial
		input  wire         alt_e100s10_2_reconfig_reconfig_clk,                 //                   alt_e100s10_2_reconfig.reconfig_clk
		input  wire         alt_e100s10_2_reconfig_reconfig_reset,               //                                         .reconfig_reset
		input  wire         alt_e100s10_2_reconfig_reconfig_write,               //                                         .reconfig_write
		input  wire         alt_e100s10_2_reconfig_reconfig_read,                //                                         .reconfig_read
		input  wire [12:0]  alt_e100s10_2_reconfig_reconfig_address,             //                                         .reconfig_address
		input  wire [31:0]  alt_e100s10_2_reconfig_reconfig_writedata,           //                                         .reconfig_writedata
		output wire [31:0]  alt_e100s10_2_reconfig_reconfig_readdata,            //                                         .reconfig_readdata
		output wire         alt_e100s10_2_reconfig_reconfig_waitrequest,         //                                         .reconfig_waitrequest
		output wire         alt_e100s10_2_other_tx_lanes_stable,                 //                      alt_e100s10_2_other.tx_lanes_stable
		output wire         alt_e100s10_2_other_rx_pcs_ready,                    //                                         .rx_pcs_ready
		output wire         alt_e100s10_2_other_rx_block_lock,                   //                                         .rx_block_lock
		output wire         alt_e100s10_2_other_rx_am_lock,                      //                                         .rx_am_lock
		input  wire         alt_e100s10_2_other_clk_ref,                         //                                         .clk_ref
		input  wire         alt_e100s10_2_other_csr_rst_n,                       //                                         .csr_rst_n
		input  wire         alt_e100s10_2_other_tx_rst_n,                        //                                         .tx_rst_n
		input  wire         alt_e100s10_2_other_rx_rst_n,                        //                                         .rx_rst_n
		input  wire [1:0]   alt_e100s10_2_other_tx_serial_clk,                   //                                         .tx_serial_clk
		input  wire [1:0]   alt_e100s10_2_other_tx_pll_locked,                   //                                         .tx_pll_locked
		output wire         alt_e100s10_2_stats_l8_txstatus_valid,               //                      alt_e100s10_2_stats.l8_txstatus_valid
		output wire [39:0]  alt_e100s10_2_stats_l8_txstatus_data,                //                                         .l8_txstatus_data
		output wire [6:0]   alt_e100s10_2_stats_l8_txstatus_error,               //                                         .l8_txstatus_error
		output wire         alt_e100s10_2_stats_l8_rxstatus_valid,               //                                         .l8_rxstatus_valid
		output wire [39:0]  alt_e100s10_2_stats_l8_rxstatus_data,                //                                         .l8_rxstatus_data
		input  wire         alt_e100s10_3_status_clk_status,                     //                     alt_e100s10_3_status.clk_status
		input  wire         alt_e100s10_3_status_status_write,                   //                                         .status_write
		input  wire         alt_e100s10_3_status_status_read,                    //                                         .status_read
		input  wire [15:0]  alt_e100s10_3_status_status_addr,                    //                                         .status_addr
		input  wire [31:0]  alt_e100s10_3_status_status_writedata,               //                                         .status_writedata
		output wire [31:0]  alt_e100s10_3_status_status_readdata,                //                                         .status_readdata
		output wire         alt_e100s10_3_status_status_readdata_valid,          //                                         .status_readdata_valid
		output wire         alt_e100s10_3_status_status_waitrequest,             //                                         .status_waitrequest
		output wire         alt_e100s10_3_avalon_st_tx_clk_txmac,                //               alt_e100s10_3_avalon_st_tx.clk_txmac
		input  wire         alt_e100s10_3_avalon_st_tx_l8_tx_startofpacket,      //                                         .l8_tx_startofpacket
		input  wire         alt_e100s10_3_avalon_st_tx_l8_tx_endofpacket,        //                                         .l8_tx_endofpacket
		input  wire         alt_e100s10_3_avalon_st_tx_l8_tx_valid,              //                                         .l8_tx_valid
		output wire         alt_e100s10_3_avalon_st_tx_l8_tx_ready,              //                                         .l8_tx_ready
		input  wire         alt_e100s10_3_avalon_st_tx_l8_tx_error,              //                                         .l8_tx_error
		input  wire [5:0]   alt_e100s10_3_avalon_st_tx_l8_tx_empty,              //                                         .l8_tx_empty
		input  wire [511:0] alt_e100s10_3_avalon_st_tx_l8_tx_data,               //                                         .l8_tx_data
		output wire         alt_e100s10_3_avalon_st_rx_clk_rxmac,                //               alt_e100s10_3_avalon_st_rx.clk_rxmac
		output wire [5:0]   alt_e100s10_3_avalon_st_rx_l8_rx_error,              //                                         .l8_rx_error
		output wire         alt_e100s10_3_avalon_st_rx_l8_rx_valid,              //                                         .l8_rx_valid
		output wire         alt_e100s10_3_avalon_st_rx_l8_rx_startofpacket,      //                                         .l8_rx_startofpacket
		output wire         alt_e100s10_3_avalon_st_rx_l8_rx_endofpacket,        //                                         .l8_rx_endofpacket
		output wire [5:0]   alt_e100s10_3_avalon_st_rx_l8_rx_empty,              //                                         .l8_rx_empty
		output wire [511:0] alt_e100s10_3_avalon_st_rx_l8_rx_data,               //                                         .l8_rx_data
		output wire [3:0]   alt_e100s10_3_serial_lanes_tx_serial,                //               alt_e100s10_3_serial_lanes.tx_serial
		input  wire [3:0]   alt_e100s10_3_serial_lanes_rx_serial,                //                                         .rx_serial
		input  wire         alt_e100s10_3_reconfig_reconfig_clk,                 //                   alt_e100s10_3_reconfig.reconfig_clk
		input  wire         alt_e100s10_3_reconfig_reconfig_reset,               //                                         .reconfig_reset
		input  wire         alt_e100s10_3_reconfig_reconfig_write,               //                                         .reconfig_write
		input  wire         alt_e100s10_3_reconfig_reconfig_read,                //                                         .reconfig_read
		input  wire [12:0]  alt_e100s10_3_reconfig_reconfig_address,             //                                         .reconfig_address
		input  wire [31:0]  alt_e100s10_3_reconfig_reconfig_writedata,           //                                         .reconfig_writedata
		output wire [31:0]  alt_e100s10_3_reconfig_reconfig_readdata,            //                                         .reconfig_readdata
		output wire         alt_e100s10_3_reconfig_reconfig_waitrequest,         //                                         .reconfig_waitrequest
		output wire         alt_e100s10_3_other_tx_lanes_stable,                 //                      alt_e100s10_3_other.tx_lanes_stable
		output wire         alt_e100s10_3_other_rx_pcs_ready,                    //                                         .rx_pcs_ready
		output wire         alt_e100s10_3_other_rx_block_lock,                   //                                         .rx_block_lock
		output wire         alt_e100s10_3_other_rx_am_lock,                      //                                         .rx_am_lock
		input  wire         alt_e100s10_3_other_clk_ref,                         //                                         .clk_ref
		input  wire         alt_e100s10_3_other_csr_rst_n,                       //                                         .csr_rst_n
		input  wire         alt_e100s10_3_other_tx_rst_n,                        //                                         .tx_rst_n
		input  wire         alt_e100s10_3_other_rx_rst_n,                        //                                         .rx_rst_n
		input  wire [1:0]   alt_e100s10_3_other_tx_serial_clk,                   //                                         .tx_serial_clk
		input  wire [1:0]   alt_e100s10_3_other_tx_pll_locked,                   //                                         .tx_pll_locked
		output wire         alt_e100s10_3_stats_l8_txstatus_valid,               //                      alt_e100s10_3_stats.l8_txstatus_valid
		output wire [39:0]  alt_e100s10_3_stats_l8_txstatus_data,                //                                         .l8_txstatus_data
		output wire [6:0]   alt_e100s10_3_stats_l8_txstatus_error,               //                                         .l8_txstatus_error
		output wire         alt_e100s10_3_stats_l8_rxstatus_valid,               //                                         .l8_rxstatus_valid
		output wire [39:0]  alt_e100s10_3_stats_l8_rxstatus_data,                //                                         .l8_rxstatus_data
		input  wire [1:0]   button_external_connection_export,                   //               button_external_connection.export
		input  wire         clk_clk,                                             //                                      clk.clk
		output wire         ddr4_local_reset_req_external_connection_export,     // ddr4_local_reset_req_external_connection.export
		input  wire [11:0]  ddr4_status_external_connection_export,              //          ddr4_status_external_connection.export
		input  wire         emif_s10_ddr4_a_local_reset_req_local_reset_req,     //          emif_s10_ddr4_a_local_reset_req.local_reset_req
		output wire         emif_s10_ddr4_a_local_reset_status_local_reset_done, //       emif_s10_ddr4_a_local_reset_status.local_reset_done
		input  wire         emif_s10_ddr4_a_pll_ref_clk_clk,                     //              emif_s10_ddr4_a_pll_ref_clk.clk
		input  wire         emif_s10_ddr4_a_oct_oct_rzqin,                       //                      emif_s10_ddr4_a_oct.oct_rzqin
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_ck,                          //                      emif_s10_ddr4_a_mem.mem_ck
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_ck_n,                        //                                         .mem_ck_n
		output wire [16:0]  emif_s10_ddr4_a_mem_mem_a,                           //                                         .mem_a
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_act_n,                       //                                         .mem_act_n
		output wire [1:0]   emif_s10_ddr4_a_mem_mem_ba,                          //                                         .mem_ba
		output wire [1:0]   emif_s10_ddr4_a_mem_mem_bg,                          //                                         .mem_bg
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_cke,                         //                                         .mem_cke
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_cs_n,                        //                                         .mem_cs_n
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_odt,                         //                                         .mem_odt
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_reset_n,                     //                                         .mem_reset_n
		output wire [0:0]   emif_s10_ddr4_a_mem_mem_par,                         //                                         .mem_par
		input  wire [0:0]   emif_s10_ddr4_a_mem_mem_alert_n,                     //                                         .mem_alert_n
		inout  wire [8:0]   emif_s10_ddr4_a_mem_mem_dqs,                         //                                         .mem_dqs
		inout  wire [8:0]   emif_s10_ddr4_a_mem_mem_dqs_n,                       //                                         .mem_dqs_n
		inout  wire [71:0]  emif_s10_ddr4_a_mem_mem_dq,                          //                                         .mem_dq
		inout  wire [8:0]   emif_s10_ddr4_a_mem_mem_dbi_n,                       //                                         .mem_dbi_n
		output wire         emif_s10_ddr4_a_status_local_cal_success,            //                   emif_s10_ddr4_a_status.local_cal_success
		output wire         emif_s10_ddr4_a_status_local_cal_fail,               //                                         .local_cal_fail
		input  wire         emif_s10_ddr4_b_local_reset_req_local_reset_req,     //          emif_s10_ddr4_b_local_reset_req.local_reset_req
		output wire         emif_s10_ddr4_b_local_reset_status_local_reset_done, //       emif_s10_ddr4_b_local_reset_status.local_reset_done
		input  wire         emif_s10_ddr4_b_pll_ref_clk_clk,                     //              emif_s10_ddr4_b_pll_ref_clk.clk
		input  wire         emif_s10_ddr4_b_oct_oct_rzqin,                       //                      emif_s10_ddr4_b_oct.oct_rzqin
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_ck,                          //                      emif_s10_ddr4_b_mem.mem_ck
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_ck_n,                        //                                         .mem_ck_n
		output wire [16:0]  emif_s10_ddr4_b_mem_mem_a,                           //                                         .mem_a
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_act_n,                       //                                         .mem_act_n
		output wire [1:0]   emif_s10_ddr4_b_mem_mem_ba,                          //                                         .mem_ba
		output wire [1:0]   emif_s10_ddr4_b_mem_mem_bg,                          //                                         .mem_bg
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_cke,                         //                                         .mem_cke
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_cs_n,                        //                                         .mem_cs_n
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_odt,                         //                                         .mem_odt
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_reset_n,                     //                                         .mem_reset_n
		output wire [0:0]   emif_s10_ddr4_b_mem_mem_par,                         //                                         .mem_par
		input  wire [0:0]   emif_s10_ddr4_b_mem_mem_alert_n,                     //                                         .mem_alert_n
		inout  wire [8:0]   emif_s10_ddr4_b_mem_mem_dqs,                         //                                         .mem_dqs
		inout  wire [8:0]   emif_s10_ddr4_b_mem_mem_dqs_n,                       //                                         .mem_dqs_n
		inout  wire [71:0]  emif_s10_ddr4_b_mem_mem_dq,                          //                                         .mem_dq
		inout  wire [8:0]   emif_s10_ddr4_b_mem_mem_dbi_n,                       //                                         .mem_dbi_n
		output wire         emif_s10_ddr4_b_status_local_cal_success,            //                   emif_s10_ddr4_b_status.local_cal_success
		output wire         emif_s10_ddr4_b_status_local_cal_fail,               //                                         .local_cal_fail
		input  wire         emif_s10_ddr4_c_local_reset_req_local_reset_req,     //          emif_s10_ddr4_c_local_reset_req.local_reset_req
		output wire         emif_s10_ddr4_c_local_reset_status_local_reset_done, //       emif_s10_ddr4_c_local_reset_status.local_reset_done
		input  wire         emif_s10_ddr4_c_pll_ref_clk_clk,                     //              emif_s10_ddr4_c_pll_ref_clk.clk
		input  wire         emif_s10_ddr4_c_oct_oct_rzqin,                       //                      emif_s10_ddr4_c_oct.oct_rzqin
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_ck,                          //                      emif_s10_ddr4_c_mem.mem_ck
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_ck_n,                        //                                         .mem_ck_n
		output wire [16:0]  emif_s10_ddr4_c_mem_mem_a,                           //                                         .mem_a
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_act_n,                       //                                         .mem_act_n
		output wire [1:0]   emif_s10_ddr4_c_mem_mem_ba,                          //                                         .mem_ba
		output wire [1:0]   emif_s10_ddr4_c_mem_mem_bg,                          //                                         .mem_bg
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_cke,                         //                                         .mem_cke
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_cs_n,                        //                                         .mem_cs_n
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_odt,                         //                                         .mem_odt
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_reset_n,                     //                                         .mem_reset_n
		output wire [0:0]   emif_s10_ddr4_c_mem_mem_par,                         //                                         .mem_par
		input  wire [0:0]   emif_s10_ddr4_c_mem_mem_alert_n,                     //                                         .mem_alert_n
		inout  wire [8:0]   emif_s10_ddr4_c_mem_mem_dqs,                         //                                         .mem_dqs
		inout  wire [8:0]   emif_s10_ddr4_c_mem_mem_dqs_n,                       //                                         .mem_dqs_n
		inout  wire [71:0]  emif_s10_ddr4_c_mem_mem_dq,                          //                                         .mem_dq
		inout  wire [8:0]   emif_s10_ddr4_c_mem_mem_dbi_n,                       //                                         .mem_dbi_n
		output wire         emif_s10_ddr4_c_status_local_cal_success,            //                   emif_s10_ddr4_c_status.local_cal_success
		output wire         emif_s10_ddr4_c_status_local_cal_fail,               //                                         .local_cal_fail
		input  wire         emif_s10_ddr4_d_local_reset_req_local_reset_req,     //          emif_s10_ddr4_d_local_reset_req.local_reset_req
		output wire         emif_s10_ddr4_d_local_reset_status_local_reset_done, //       emif_s10_ddr4_d_local_reset_status.local_reset_done
		input  wire         emif_s10_ddr4_d_pll_ref_clk_clk,                     //              emif_s10_ddr4_d_pll_ref_clk.clk
		input  wire         emif_s10_ddr4_d_oct_oct_rzqin,                       //                      emif_s10_ddr4_d_oct.oct_rzqin
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_ck,                          //                      emif_s10_ddr4_d_mem.mem_ck
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_ck_n,                        //                                         .mem_ck_n
		output wire [16:0]  emif_s10_ddr4_d_mem_mem_a,                           //                                         .mem_a
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_act_n,                       //                                         .mem_act_n
		output wire [1:0]   emif_s10_ddr4_d_mem_mem_ba,                          //                                         .mem_ba
		output wire [1:0]   emif_s10_ddr4_d_mem_mem_bg,                          //                                         .mem_bg
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_cke,                         //                                         .mem_cke
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_cs_n,                        //                                         .mem_cs_n
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_odt,                         //                                         .mem_odt
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_reset_n,                     //                                         .mem_reset_n
		output wire [0:0]   emif_s10_ddr4_d_mem_mem_par,                         //                                         .mem_par
		input  wire [0:0]   emif_s10_ddr4_d_mem_mem_alert_n,                     //                                         .mem_alert_n
		inout  wire [8:0]   emif_s10_ddr4_d_mem_mem_dqs,                         //                                         .mem_dqs
		inout  wire [8:0]   emif_s10_ddr4_d_mem_mem_dqs_n,                       //                                         .mem_dqs_n
		inout  wire [71:0]  emif_s10_ddr4_d_mem_mem_dq,                          //                                         .mem_dq
		inout  wire [8:0]   emif_s10_ddr4_d_mem_mem_dbi_n,                       //                                         .mem_dbi_n
		output wire         emif_s10_ddr4_d_status_local_cal_success,            //                   emif_s10_ddr4_d_status.local_cal_success
		output wire         emif_s10_ddr4_d_status_local_cal_fail,               //                                         .local_cal_fail
		output wire         iopll_0_locked_export,                               //                           iopll_0_locked.export
		input  wire         reset_reset                                          //                                    reset.reset
	);
endmodule

