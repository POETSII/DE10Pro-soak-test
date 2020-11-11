	component DE10_Pro_QSYS is
		port (
			powerreader_0_power_i2c_export_sda                  : inout std_logic                      := 'X';             -- export_sda
			powerreader_0_power_i2c_export_scl                  : inout std_logic                      := 'X';             -- export_scl
			tempreader_0_i2c_signals_scl                        : inout std_logic                      := 'X';             -- scl
			tempreader_0_i2c_signals_sda                        : inout std_logic                      := 'X';             -- sda
			alt_e100s10_0_status_clk_status                     : in    std_logic                      := 'X';             -- clk_status
			alt_e100s10_0_status_status_write                   : in    std_logic                      := 'X';             -- status_write
			alt_e100s10_0_status_status_read                    : in    std_logic                      := 'X';             -- status_read
			alt_e100s10_0_status_status_addr                    : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- status_addr
			alt_e100s10_0_status_status_writedata               : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- status_writedata
			alt_e100s10_0_status_status_readdata                : out   std_logic_vector(31 downto 0);                     -- status_readdata
			alt_e100s10_0_status_status_readdata_valid          : out   std_logic;                                         -- status_readdata_valid
			alt_e100s10_0_status_status_waitrequest             : out   std_logic;                                         -- status_waitrequest
			alt_e100s10_0_avalon_st_tx_clk_txmac                : out   std_logic;                                         -- clk_txmac
			alt_e100s10_0_avalon_st_tx_l8_tx_startofpacket      : in    std_logic                      := 'X';             -- l8_tx_startofpacket
			alt_e100s10_0_avalon_st_tx_l8_tx_endofpacket        : in    std_logic                      := 'X';             -- l8_tx_endofpacket
			alt_e100s10_0_avalon_st_tx_l8_tx_valid              : in    std_logic                      := 'X';             -- l8_tx_valid
			alt_e100s10_0_avalon_st_tx_l8_tx_ready              : out   std_logic;                                         -- l8_tx_ready
			alt_e100s10_0_avalon_st_tx_l8_tx_error              : in    std_logic                      := 'X';             -- l8_tx_error
			alt_e100s10_0_avalon_st_tx_l8_tx_empty              : in    std_logic_vector(5 downto 0)   := (others => 'X'); -- l8_tx_empty
			alt_e100s10_0_avalon_st_tx_l8_tx_data               : in    std_logic_vector(511 downto 0) := (others => 'X'); -- l8_tx_data
			alt_e100s10_0_avalon_st_rx_clk_rxmac                : out   std_logic;                                         -- clk_rxmac
			alt_e100s10_0_avalon_st_rx_l8_rx_error              : out   std_logic_vector(5 downto 0);                      -- l8_rx_error
			alt_e100s10_0_avalon_st_rx_l8_rx_valid              : out   std_logic;                                         -- l8_rx_valid
			alt_e100s10_0_avalon_st_rx_l8_rx_startofpacket      : out   std_logic;                                         -- l8_rx_startofpacket
			alt_e100s10_0_avalon_st_rx_l8_rx_endofpacket        : out   std_logic;                                         -- l8_rx_endofpacket
			alt_e100s10_0_avalon_st_rx_l8_rx_empty              : out   std_logic_vector(5 downto 0);                      -- l8_rx_empty
			alt_e100s10_0_avalon_st_rx_l8_rx_data               : out   std_logic_vector(511 downto 0);                    -- l8_rx_data
			alt_e100s10_0_serial_lanes_tx_serial                : out   std_logic_vector(3 downto 0);                      -- tx_serial
			alt_e100s10_0_serial_lanes_rx_serial                : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rx_serial
			alt_e100s10_0_reconfig_reconfig_clk                 : in    std_logic                      := 'X';             -- reconfig_clk
			alt_e100s10_0_reconfig_reconfig_reset               : in    std_logic                      := 'X';             -- reconfig_reset
			alt_e100s10_0_reconfig_reconfig_write               : in    std_logic                      := 'X';             -- reconfig_write
			alt_e100s10_0_reconfig_reconfig_read                : in    std_logic                      := 'X';             -- reconfig_read
			alt_e100s10_0_reconfig_reconfig_address             : in    std_logic_vector(12 downto 0)  := (others => 'X'); -- reconfig_address
			alt_e100s10_0_reconfig_reconfig_writedata           : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- reconfig_writedata
			alt_e100s10_0_reconfig_reconfig_readdata            : out   std_logic_vector(31 downto 0);                     -- reconfig_readdata
			alt_e100s10_0_reconfig_reconfig_waitrequest         : out   std_logic;                                         -- reconfig_waitrequest
			alt_e100s10_0_other_tx_lanes_stable                 : out   std_logic;                                         -- tx_lanes_stable
			alt_e100s10_0_other_rx_pcs_ready                    : out   std_logic;                                         -- rx_pcs_ready
			alt_e100s10_0_other_rx_block_lock                   : out   std_logic;                                         -- rx_block_lock
			alt_e100s10_0_other_rx_am_lock                      : out   std_logic;                                         -- rx_am_lock
			alt_e100s10_0_other_clk_ref                         : in    std_logic                      := 'X';             -- clk_ref
			alt_e100s10_0_other_csr_rst_n                       : in    std_logic                      := 'X';             -- csr_rst_n
			alt_e100s10_0_other_tx_rst_n                        : in    std_logic                      := 'X';             -- tx_rst_n
			alt_e100s10_0_other_rx_rst_n                        : in    std_logic                      := 'X';             -- rx_rst_n
			alt_e100s10_0_other_tx_serial_clk                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_serial_clk
			alt_e100s10_0_other_tx_pll_locked                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_pll_locked
			alt_e100s10_0_stats_l8_txstatus_valid               : out   std_logic;                                         -- l8_txstatus_valid
			alt_e100s10_0_stats_l8_txstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_txstatus_data
			alt_e100s10_0_stats_l8_txstatus_error               : out   std_logic_vector(6 downto 0);                      -- l8_txstatus_error
			alt_e100s10_0_stats_l8_rxstatus_valid               : out   std_logic;                                         -- l8_rxstatus_valid
			alt_e100s10_0_stats_l8_rxstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_rxstatus_data
			alt_e100s10_1_status_clk_status                     : in    std_logic                      := 'X';             -- clk_status
			alt_e100s10_1_status_status_write                   : in    std_logic                      := 'X';             -- status_write
			alt_e100s10_1_status_status_read                    : in    std_logic                      := 'X';             -- status_read
			alt_e100s10_1_status_status_addr                    : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- status_addr
			alt_e100s10_1_status_status_writedata               : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- status_writedata
			alt_e100s10_1_status_status_readdata                : out   std_logic_vector(31 downto 0);                     -- status_readdata
			alt_e100s10_1_status_status_readdata_valid          : out   std_logic;                                         -- status_readdata_valid
			alt_e100s10_1_status_status_waitrequest             : out   std_logic;                                         -- status_waitrequest
			alt_e100s10_1_avalon_st_tx_clk_txmac                : out   std_logic;                                         -- clk_txmac
			alt_e100s10_1_avalon_st_tx_l8_tx_startofpacket      : in    std_logic                      := 'X';             -- l8_tx_startofpacket
			alt_e100s10_1_avalon_st_tx_l8_tx_endofpacket        : in    std_logic                      := 'X';             -- l8_tx_endofpacket
			alt_e100s10_1_avalon_st_tx_l8_tx_valid              : in    std_logic                      := 'X';             -- l8_tx_valid
			alt_e100s10_1_avalon_st_tx_l8_tx_ready              : out   std_logic;                                         -- l8_tx_ready
			alt_e100s10_1_avalon_st_tx_l8_tx_error              : in    std_logic                      := 'X';             -- l8_tx_error
			alt_e100s10_1_avalon_st_tx_l8_tx_empty              : in    std_logic_vector(5 downto 0)   := (others => 'X'); -- l8_tx_empty
			alt_e100s10_1_avalon_st_tx_l8_tx_data               : in    std_logic_vector(511 downto 0) := (others => 'X'); -- l8_tx_data
			alt_e100s10_1_avalon_st_rx_clk_rxmac                : out   std_logic;                                         -- clk_rxmac
			alt_e100s10_1_avalon_st_rx_l8_rx_error              : out   std_logic_vector(5 downto 0);                      -- l8_rx_error
			alt_e100s10_1_avalon_st_rx_l8_rx_valid              : out   std_logic;                                         -- l8_rx_valid
			alt_e100s10_1_avalon_st_rx_l8_rx_startofpacket      : out   std_logic;                                         -- l8_rx_startofpacket
			alt_e100s10_1_avalon_st_rx_l8_rx_endofpacket        : out   std_logic;                                         -- l8_rx_endofpacket
			alt_e100s10_1_avalon_st_rx_l8_rx_empty              : out   std_logic_vector(5 downto 0);                      -- l8_rx_empty
			alt_e100s10_1_avalon_st_rx_l8_rx_data               : out   std_logic_vector(511 downto 0);                    -- l8_rx_data
			alt_e100s10_1_serial_lanes_tx_serial                : out   std_logic_vector(3 downto 0);                      -- tx_serial
			alt_e100s10_1_serial_lanes_rx_serial                : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rx_serial
			alt_e100s10_1_reconfig_reconfig_clk                 : in    std_logic                      := 'X';             -- reconfig_clk
			alt_e100s10_1_reconfig_reconfig_reset               : in    std_logic                      := 'X';             -- reconfig_reset
			alt_e100s10_1_reconfig_reconfig_write               : in    std_logic                      := 'X';             -- reconfig_write
			alt_e100s10_1_reconfig_reconfig_read                : in    std_logic                      := 'X';             -- reconfig_read
			alt_e100s10_1_reconfig_reconfig_address             : in    std_logic_vector(12 downto 0)  := (others => 'X'); -- reconfig_address
			alt_e100s10_1_reconfig_reconfig_writedata           : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- reconfig_writedata
			alt_e100s10_1_reconfig_reconfig_readdata            : out   std_logic_vector(31 downto 0);                     -- reconfig_readdata
			alt_e100s10_1_reconfig_reconfig_waitrequest         : out   std_logic;                                         -- reconfig_waitrequest
			alt_e100s10_1_other_tx_lanes_stable                 : out   std_logic;                                         -- tx_lanes_stable
			alt_e100s10_1_other_rx_pcs_ready                    : out   std_logic;                                         -- rx_pcs_ready
			alt_e100s10_1_other_rx_block_lock                   : out   std_logic;                                         -- rx_block_lock
			alt_e100s10_1_other_rx_am_lock                      : out   std_logic;                                         -- rx_am_lock
			alt_e100s10_1_other_clk_ref                         : in    std_logic                      := 'X';             -- clk_ref
			alt_e100s10_1_other_csr_rst_n                       : in    std_logic                      := 'X';             -- csr_rst_n
			alt_e100s10_1_other_tx_rst_n                        : in    std_logic                      := 'X';             -- tx_rst_n
			alt_e100s10_1_other_rx_rst_n                        : in    std_logic                      := 'X';             -- rx_rst_n
			alt_e100s10_1_other_tx_serial_clk                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_serial_clk
			alt_e100s10_1_other_tx_pll_locked                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_pll_locked
			alt_e100s10_1_stats_l8_txstatus_valid               : out   std_logic;                                         -- l8_txstatus_valid
			alt_e100s10_1_stats_l8_txstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_txstatus_data
			alt_e100s10_1_stats_l8_txstatus_error               : out   std_logic_vector(6 downto 0);                      -- l8_txstatus_error
			alt_e100s10_1_stats_l8_rxstatus_valid               : out   std_logic;                                         -- l8_rxstatus_valid
			alt_e100s10_1_stats_l8_rxstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_rxstatus_data
			alt_e100s10_2_status_clk_status                     : in    std_logic                      := 'X';             -- clk_status
			alt_e100s10_2_status_status_write                   : in    std_logic                      := 'X';             -- status_write
			alt_e100s10_2_status_status_read                    : in    std_logic                      := 'X';             -- status_read
			alt_e100s10_2_status_status_addr                    : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- status_addr
			alt_e100s10_2_status_status_writedata               : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- status_writedata
			alt_e100s10_2_status_status_readdata                : out   std_logic_vector(31 downto 0);                     -- status_readdata
			alt_e100s10_2_status_status_readdata_valid          : out   std_logic;                                         -- status_readdata_valid
			alt_e100s10_2_status_status_waitrequest             : out   std_logic;                                         -- status_waitrequest
			alt_e100s10_2_avalon_st_tx_clk_txmac                : out   std_logic;                                         -- clk_txmac
			alt_e100s10_2_avalon_st_tx_l8_tx_startofpacket      : in    std_logic                      := 'X';             -- l8_tx_startofpacket
			alt_e100s10_2_avalon_st_tx_l8_tx_endofpacket        : in    std_logic                      := 'X';             -- l8_tx_endofpacket
			alt_e100s10_2_avalon_st_tx_l8_tx_valid              : in    std_logic                      := 'X';             -- l8_tx_valid
			alt_e100s10_2_avalon_st_tx_l8_tx_ready              : out   std_logic;                                         -- l8_tx_ready
			alt_e100s10_2_avalon_st_tx_l8_tx_error              : in    std_logic                      := 'X';             -- l8_tx_error
			alt_e100s10_2_avalon_st_tx_l8_tx_empty              : in    std_logic_vector(5 downto 0)   := (others => 'X'); -- l8_tx_empty
			alt_e100s10_2_avalon_st_tx_l8_tx_data               : in    std_logic_vector(511 downto 0) := (others => 'X'); -- l8_tx_data
			alt_e100s10_2_avalon_st_rx_clk_rxmac                : out   std_logic;                                         -- clk_rxmac
			alt_e100s10_2_avalon_st_rx_l8_rx_error              : out   std_logic_vector(5 downto 0);                      -- l8_rx_error
			alt_e100s10_2_avalon_st_rx_l8_rx_valid              : out   std_logic;                                         -- l8_rx_valid
			alt_e100s10_2_avalon_st_rx_l8_rx_startofpacket      : out   std_logic;                                         -- l8_rx_startofpacket
			alt_e100s10_2_avalon_st_rx_l8_rx_endofpacket        : out   std_logic;                                         -- l8_rx_endofpacket
			alt_e100s10_2_avalon_st_rx_l8_rx_empty              : out   std_logic_vector(5 downto 0);                      -- l8_rx_empty
			alt_e100s10_2_avalon_st_rx_l8_rx_data               : out   std_logic_vector(511 downto 0);                    -- l8_rx_data
			alt_e100s10_2_serial_lanes_tx_serial                : out   std_logic_vector(3 downto 0);                      -- tx_serial
			alt_e100s10_2_serial_lanes_rx_serial                : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rx_serial
			alt_e100s10_2_reconfig_reconfig_clk                 : in    std_logic                      := 'X';             -- reconfig_clk
			alt_e100s10_2_reconfig_reconfig_reset               : in    std_logic                      := 'X';             -- reconfig_reset
			alt_e100s10_2_reconfig_reconfig_write               : in    std_logic                      := 'X';             -- reconfig_write
			alt_e100s10_2_reconfig_reconfig_read                : in    std_logic                      := 'X';             -- reconfig_read
			alt_e100s10_2_reconfig_reconfig_address             : in    std_logic_vector(12 downto 0)  := (others => 'X'); -- reconfig_address
			alt_e100s10_2_reconfig_reconfig_writedata           : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- reconfig_writedata
			alt_e100s10_2_reconfig_reconfig_readdata            : out   std_logic_vector(31 downto 0);                     -- reconfig_readdata
			alt_e100s10_2_reconfig_reconfig_waitrequest         : out   std_logic;                                         -- reconfig_waitrequest
			alt_e100s10_2_other_tx_lanes_stable                 : out   std_logic;                                         -- tx_lanes_stable
			alt_e100s10_2_other_rx_pcs_ready                    : out   std_logic;                                         -- rx_pcs_ready
			alt_e100s10_2_other_rx_block_lock                   : out   std_logic;                                         -- rx_block_lock
			alt_e100s10_2_other_rx_am_lock                      : out   std_logic;                                         -- rx_am_lock
			alt_e100s10_2_other_clk_ref                         : in    std_logic                      := 'X';             -- clk_ref
			alt_e100s10_2_other_csr_rst_n                       : in    std_logic                      := 'X';             -- csr_rst_n
			alt_e100s10_2_other_tx_rst_n                        : in    std_logic                      := 'X';             -- tx_rst_n
			alt_e100s10_2_other_rx_rst_n                        : in    std_logic                      := 'X';             -- rx_rst_n
			alt_e100s10_2_other_tx_serial_clk                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_serial_clk
			alt_e100s10_2_other_tx_pll_locked                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_pll_locked
			alt_e100s10_2_stats_l8_txstatus_valid               : out   std_logic;                                         -- l8_txstatus_valid
			alt_e100s10_2_stats_l8_txstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_txstatus_data
			alt_e100s10_2_stats_l8_txstatus_error               : out   std_logic_vector(6 downto 0);                      -- l8_txstatus_error
			alt_e100s10_2_stats_l8_rxstatus_valid               : out   std_logic;                                         -- l8_rxstatus_valid
			alt_e100s10_2_stats_l8_rxstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_rxstatus_data
			alt_e100s10_3_status_clk_status                     : in    std_logic                      := 'X';             -- clk_status
			alt_e100s10_3_status_status_write                   : in    std_logic                      := 'X';             -- status_write
			alt_e100s10_3_status_status_read                    : in    std_logic                      := 'X';             -- status_read
			alt_e100s10_3_status_status_addr                    : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- status_addr
			alt_e100s10_3_status_status_writedata               : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- status_writedata
			alt_e100s10_3_status_status_readdata                : out   std_logic_vector(31 downto 0);                     -- status_readdata
			alt_e100s10_3_status_status_readdata_valid          : out   std_logic;                                         -- status_readdata_valid
			alt_e100s10_3_status_status_waitrequest             : out   std_logic;                                         -- status_waitrequest
			alt_e100s10_3_avalon_st_tx_clk_txmac                : out   std_logic;                                         -- clk_txmac
			alt_e100s10_3_avalon_st_tx_l8_tx_startofpacket      : in    std_logic                      := 'X';             -- l8_tx_startofpacket
			alt_e100s10_3_avalon_st_tx_l8_tx_endofpacket        : in    std_logic                      := 'X';             -- l8_tx_endofpacket
			alt_e100s10_3_avalon_st_tx_l8_tx_valid              : in    std_logic                      := 'X';             -- l8_tx_valid
			alt_e100s10_3_avalon_st_tx_l8_tx_ready              : out   std_logic;                                         -- l8_tx_ready
			alt_e100s10_3_avalon_st_tx_l8_tx_error              : in    std_logic                      := 'X';             -- l8_tx_error
			alt_e100s10_3_avalon_st_tx_l8_tx_empty              : in    std_logic_vector(5 downto 0)   := (others => 'X'); -- l8_tx_empty
			alt_e100s10_3_avalon_st_tx_l8_tx_data               : in    std_logic_vector(511 downto 0) := (others => 'X'); -- l8_tx_data
			alt_e100s10_3_avalon_st_rx_clk_rxmac                : out   std_logic;                                         -- clk_rxmac
			alt_e100s10_3_avalon_st_rx_l8_rx_error              : out   std_logic_vector(5 downto 0);                      -- l8_rx_error
			alt_e100s10_3_avalon_st_rx_l8_rx_valid              : out   std_logic;                                         -- l8_rx_valid
			alt_e100s10_3_avalon_st_rx_l8_rx_startofpacket      : out   std_logic;                                         -- l8_rx_startofpacket
			alt_e100s10_3_avalon_st_rx_l8_rx_endofpacket        : out   std_logic;                                         -- l8_rx_endofpacket
			alt_e100s10_3_avalon_st_rx_l8_rx_empty              : out   std_logic_vector(5 downto 0);                      -- l8_rx_empty
			alt_e100s10_3_avalon_st_rx_l8_rx_data               : out   std_logic_vector(511 downto 0);                    -- l8_rx_data
			alt_e100s10_3_serial_lanes_tx_serial                : out   std_logic_vector(3 downto 0);                      -- tx_serial
			alt_e100s10_3_serial_lanes_rx_serial                : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rx_serial
			alt_e100s10_3_reconfig_reconfig_clk                 : in    std_logic                      := 'X';             -- reconfig_clk
			alt_e100s10_3_reconfig_reconfig_reset               : in    std_logic                      := 'X';             -- reconfig_reset
			alt_e100s10_3_reconfig_reconfig_write               : in    std_logic                      := 'X';             -- reconfig_write
			alt_e100s10_3_reconfig_reconfig_read                : in    std_logic                      := 'X';             -- reconfig_read
			alt_e100s10_3_reconfig_reconfig_address             : in    std_logic_vector(12 downto 0)  := (others => 'X'); -- reconfig_address
			alt_e100s10_3_reconfig_reconfig_writedata           : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- reconfig_writedata
			alt_e100s10_3_reconfig_reconfig_readdata            : out   std_logic_vector(31 downto 0);                     -- reconfig_readdata
			alt_e100s10_3_reconfig_reconfig_waitrequest         : out   std_logic;                                         -- reconfig_waitrequest
			alt_e100s10_3_other_tx_lanes_stable                 : out   std_logic;                                         -- tx_lanes_stable
			alt_e100s10_3_other_rx_pcs_ready                    : out   std_logic;                                         -- rx_pcs_ready
			alt_e100s10_3_other_rx_block_lock                   : out   std_logic;                                         -- rx_block_lock
			alt_e100s10_3_other_rx_am_lock                      : out   std_logic;                                         -- rx_am_lock
			alt_e100s10_3_other_clk_ref                         : in    std_logic                      := 'X';             -- clk_ref
			alt_e100s10_3_other_csr_rst_n                       : in    std_logic                      := 'X';             -- csr_rst_n
			alt_e100s10_3_other_tx_rst_n                        : in    std_logic                      := 'X';             -- tx_rst_n
			alt_e100s10_3_other_rx_rst_n                        : in    std_logic                      := 'X';             -- rx_rst_n
			alt_e100s10_3_other_tx_serial_clk                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_serial_clk
			alt_e100s10_3_other_tx_pll_locked                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- tx_pll_locked
			alt_e100s10_3_stats_l8_txstatus_valid               : out   std_logic;                                         -- l8_txstatus_valid
			alt_e100s10_3_stats_l8_txstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_txstatus_data
			alt_e100s10_3_stats_l8_txstatus_error               : out   std_logic_vector(6 downto 0);                      -- l8_txstatus_error
			alt_e100s10_3_stats_l8_rxstatus_valid               : out   std_logic;                                         -- l8_rxstatus_valid
			alt_e100s10_3_stats_l8_rxstatus_data                : out   std_logic_vector(39 downto 0);                     -- l8_rxstatus_data
			button_external_connection_export                   : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- export
			clk_clk                                             : in    std_logic                      := 'X';             -- clk
			ddr4_local_reset_req_external_connection_export     : out   std_logic;                                         -- export
			ddr4_status_external_connection_export              : in    std_logic_vector(11 downto 0)  := (others => 'X'); -- export
			emif_s10_ddr4_a_local_reset_req_local_reset_req     : in    std_logic                      := 'X';             -- local_reset_req
			emif_s10_ddr4_a_local_reset_status_local_reset_done : out   std_logic;                                         -- local_reset_done
			emif_s10_ddr4_a_pll_ref_clk_clk                     : in    std_logic                      := 'X';             -- clk
			emif_s10_ddr4_a_oct_oct_rzqin                       : in    std_logic                      := 'X';             -- oct_rzqin
			emif_s10_ddr4_a_mem_mem_ck                          : out   std_logic_vector(0 downto 0);                      -- mem_ck
			emif_s10_ddr4_a_mem_mem_ck_n                        : out   std_logic_vector(0 downto 0);                      -- mem_ck_n
			emif_s10_ddr4_a_mem_mem_a                           : out   std_logic_vector(16 downto 0);                     -- mem_a
			emif_s10_ddr4_a_mem_mem_act_n                       : out   std_logic_vector(0 downto 0);                      -- mem_act_n
			emif_s10_ddr4_a_mem_mem_ba                          : out   std_logic_vector(1 downto 0);                      -- mem_ba
			emif_s10_ddr4_a_mem_mem_bg                          : out   std_logic_vector(1 downto 0);                      -- mem_bg
			emif_s10_ddr4_a_mem_mem_cke                         : out   std_logic_vector(0 downto 0);                      -- mem_cke
			emif_s10_ddr4_a_mem_mem_cs_n                        : out   std_logic_vector(0 downto 0);                      -- mem_cs_n
			emif_s10_ddr4_a_mem_mem_odt                         : out   std_logic_vector(0 downto 0);                      -- mem_odt
			emif_s10_ddr4_a_mem_mem_reset_n                     : out   std_logic_vector(0 downto 0);                      -- mem_reset_n
			emif_s10_ddr4_a_mem_mem_par                         : out   std_logic_vector(0 downto 0);                      -- mem_par
			emif_s10_ddr4_a_mem_mem_alert_n                     : in    std_logic_vector(0 downto 0)   := (others => 'X'); -- mem_alert_n
			emif_s10_ddr4_a_mem_mem_dqs                         : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs
			emif_s10_ddr4_a_mem_mem_dqs_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs_n
			emif_s10_ddr4_a_mem_mem_dq                          : inout std_logic_vector(71 downto 0)  := (others => 'X'); -- mem_dq
			emif_s10_ddr4_a_mem_mem_dbi_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dbi_n
			emif_s10_ddr4_a_status_local_cal_success            : out   std_logic;                                         -- local_cal_success
			emif_s10_ddr4_a_status_local_cal_fail               : out   std_logic;                                         -- local_cal_fail
			emif_s10_ddr4_b_local_reset_req_local_reset_req     : in    std_logic                      := 'X';             -- local_reset_req
			emif_s10_ddr4_b_local_reset_status_local_reset_done : out   std_logic;                                         -- local_reset_done
			emif_s10_ddr4_b_pll_ref_clk_clk                     : in    std_logic                      := 'X';             -- clk
			emif_s10_ddr4_b_oct_oct_rzqin                       : in    std_logic                      := 'X';             -- oct_rzqin
			emif_s10_ddr4_b_mem_mem_ck                          : out   std_logic_vector(0 downto 0);                      -- mem_ck
			emif_s10_ddr4_b_mem_mem_ck_n                        : out   std_logic_vector(0 downto 0);                      -- mem_ck_n
			emif_s10_ddr4_b_mem_mem_a                           : out   std_logic_vector(16 downto 0);                     -- mem_a
			emif_s10_ddr4_b_mem_mem_act_n                       : out   std_logic_vector(0 downto 0);                      -- mem_act_n
			emif_s10_ddr4_b_mem_mem_ba                          : out   std_logic_vector(1 downto 0);                      -- mem_ba
			emif_s10_ddr4_b_mem_mem_bg                          : out   std_logic_vector(1 downto 0);                      -- mem_bg
			emif_s10_ddr4_b_mem_mem_cke                         : out   std_logic_vector(0 downto 0);                      -- mem_cke
			emif_s10_ddr4_b_mem_mem_cs_n                        : out   std_logic_vector(0 downto 0);                      -- mem_cs_n
			emif_s10_ddr4_b_mem_mem_odt                         : out   std_logic_vector(0 downto 0);                      -- mem_odt
			emif_s10_ddr4_b_mem_mem_reset_n                     : out   std_logic_vector(0 downto 0);                      -- mem_reset_n
			emif_s10_ddr4_b_mem_mem_par                         : out   std_logic_vector(0 downto 0);                      -- mem_par
			emif_s10_ddr4_b_mem_mem_alert_n                     : in    std_logic_vector(0 downto 0)   := (others => 'X'); -- mem_alert_n
			emif_s10_ddr4_b_mem_mem_dqs                         : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs
			emif_s10_ddr4_b_mem_mem_dqs_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs_n
			emif_s10_ddr4_b_mem_mem_dq                          : inout std_logic_vector(71 downto 0)  := (others => 'X'); -- mem_dq
			emif_s10_ddr4_b_mem_mem_dbi_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dbi_n
			emif_s10_ddr4_b_status_local_cal_success            : out   std_logic;                                         -- local_cal_success
			emif_s10_ddr4_b_status_local_cal_fail               : out   std_logic;                                         -- local_cal_fail
			emif_s10_ddr4_c_local_reset_req_local_reset_req     : in    std_logic                      := 'X';             -- local_reset_req
			emif_s10_ddr4_c_local_reset_status_local_reset_done : out   std_logic;                                         -- local_reset_done
			emif_s10_ddr4_c_pll_ref_clk_clk                     : in    std_logic                      := 'X';             -- clk
			emif_s10_ddr4_c_oct_oct_rzqin                       : in    std_logic                      := 'X';             -- oct_rzqin
			emif_s10_ddr4_c_mem_mem_ck                          : out   std_logic_vector(0 downto 0);                      -- mem_ck
			emif_s10_ddr4_c_mem_mem_ck_n                        : out   std_logic_vector(0 downto 0);                      -- mem_ck_n
			emif_s10_ddr4_c_mem_mem_a                           : out   std_logic_vector(16 downto 0);                     -- mem_a
			emif_s10_ddr4_c_mem_mem_act_n                       : out   std_logic_vector(0 downto 0);                      -- mem_act_n
			emif_s10_ddr4_c_mem_mem_ba                          : out   std_logic_vector(1 downto 0);                      -- mem_ba
			emif_s10_ddr4_c_mem_mem_bg                          : out   std_logic_vector(1 downto 0);                      -- mem_bg
			emif_s10_ddr4_c_mem_mem_cke                         : out   std_logic_vector(0 downto 0);                      -- mem_cke
			emif_s10_ddr4_c_mem_mem_cs_n                        : out   std_logic_vector(0 downto 0);                      -- mem_cs_n
			emif_s10_ddr4_c_mem_mem_odt                         : out   std_logic_vector(0 downto 0);                      -- mem_odt
			emif_s10_ddr4_c_mem_mem_reset_n                     : out   std_logic_vector(0 downto 0);                      -- mem_reset_n
			emif_s10_ddr4_c_mem_mem_par                         : out   std_logic_vector(0 downto 0);                      -- mem_par
			emif_s10_ddr4_c_mem_mem_alert_n                     : in    std_logic_vector(0 downto 0)   := (others => 'X'); -- mem_alert_n
			emif_s10_ddr4_c_mem_mem_dqs                         : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs
			emif_s10_ddr4_c_mem_mem_dqs_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs_n
			emif_s10_ddr4_c_mem_mem_dq                          : inout std_logic_vector(71 downto 0)  := (others => 'X'); -- mem_dq
			emif_s10_ddr4_c_mem_mem_dbi_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dbi_n
			emif_s10_ddr4_c_status_local_cal_success            : out   std_logic;                                         -- local_cal_success
			emif_s10_ddr4_c_status_local_cal_fail               : out   std_logic;                                         -- local_cal_fail
			emif_s10_ddr4_d_local_reset_req_local_reset_req     : in    std_logic                      := 'X';             -- local_reset_req
			emif_s10_ddr4_d_local_reset_status_local_reset_done : out   std_logic;                                         -- local_reset_done
			emif_s10_ddr4_d_pll_ref_clk_clk                     : in    std_logic                      := 'X';             -- clk
			emif_s10_ddr4_d_oct_oct_rzqin                       : in    std_logic                      := 'X';             -- oct_rzqin
			emif_s10_ddr4_d_mem_mem_ck                          : out   std_logic_vector(0 downto 0);                      -- mem_ck
			emif_s10_ddr4_d_mem_mem_ck_n                        : out   std_logic_vector(0 downto 0);                      -- mem_ck_n
			emif_s10_ddr4_d_mem_mem_a                           : out   std_logic_vector(16 downto 0);                     -- mem_a
			emif_s10_ddr4_d_mem_mem_act_n                       : out   std_logic_vector(0 downto 0);                      -- mem_act_n
			emif_s10_ddr4_d_mem_mem_ba                          : out   std_logic_vector(1 downto 0);                      -- mem_ba
			emif_s10_ddr4_d_mem_mem_bg                          : out   std_logic_vector(1 downto 0);                      -- mem_bg
			emif_s10_ddr4_d_mem_mem_cke                         : out   std_logic_vector(0 downto 0);                      -- mem_cke
			emif_s10_ddr4_d_mem_mem_cs_n                        : out   std_logic_vector(0 downto 0);                      -- mem_cs_n
			emif_s10_ddr4_d_mem_mem_odt                         : out   std_logic_vector(0 downto 0);                      -- mem_odt
			emif_s10_ddr4_d_mem_mem_reset_n                     : out   std_logic_vector(0 downto 0);                      -- mem_reset_n
			emif_s10_ddr4_d_mem_mem_par                         : out   std_logic_vector(0 downto 0);                      -- mem_par
			emif_s10_ddr4_d_mem_mem_alert_n                     : in    std_logic_vector(0 downto 0)   := (others => 'X'); -- mem_alert_n
			emif_s10_ddr4_d_mem_mem_dqs                         : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs
			emif_s10_ddr4_d_mem_mem_dqs_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dqs_n
			emif_s10_ddr4_d_mem_mem_dq                          : inout std_logic_vector(71 downto 0)  := (others => 'X'); -- mem_dq
			emif_s10_ddr4_d_mem_mem_dbi_n                       : inout std_logic_vector(8 downto 0)   := (others => 'X'); -- mem_dbi_n
			emif_s10_ddr4_d_status_local_cal_success            : out   std_logic;                                         -- local_cal_success
			emif_s10_ddr4_d_status_local_cal_fail               : out   std_logic;                                         -- local_cal_fail
			iopll_0_locked_export                               : out   std_logic;                                         -- export
			reset_reset                                         : in    std_logic                      := 'X'              -- reset
		);
	end component DE10_Pro_QSYS;

	u0 : component DE10_Pro_QSYS
		port map (
			powerreader_0_power_i2c_export_sda                  => CONNECTED_TO_powerreader_0_power_i2c_export_sda,                  --                  powerreader_0_power_i2c.export_sda
			powerreader_0_power_i2c_export_scl                  => CONNECTED_TO_powerreader_0_power_i2c_export_scl,                  --                                         .export_scl
			tempreader_0_i2c_signals_scl                        => CONNECTED_TO_tempreader_0_i2c_signals_scl,                        --                 tempreader_0_i2c_signals.scl
			tempreader_0_i2c_signals_sda                        => CONNECTED_TO_tempreader_0_i2c_signals_sda,                        --                                         .sda
			alt_e100s10_0_status_clk_status                     => CONNECTED_TO_alt_e100s10_0_status_clk_status,                     --                     alt_e100s10_0_status.clk_status
			alt_e100s10_0_status_status_write                   => CONNECTED_TO_alt_e100s10_0_status_status_write,                   --                                         .status_write
			alt_e100s10_0_status_status_read                    => CONNECTED_TO_alt_e100s10_0_status_status_read,                    --                                         .status_read
			alt_e100s10_0_status_status_addr                    => CONNECTED_TO_alt_e100s10_0_status_status_addr,                    --                                         .status_addr
			alt_e100s10_0_status_status_writedata               => CONNECTED_TO_alt_e100s10_0_status_status_writedata,               --                                         .status_writedata
			alt_e100s10_0_status_status_readdata                => CONNECTED_TO_alt_e100s10_0_status_status_readdata,                --                                         .status_readdata
			alt_e100s10_0_status_status_readdata_valid          => CONNECTED_TO_alt_e100s10_0_status_status_readdata_valid,          --                                         .status_readdata_valid
			alt_e100s10_0_status_status_waitrequest             => CONNECTED_TO_alt_e100s10_0_status_status_waitrequest,             --                                         .status_waitrequest
			alt_e100s10_0_avalon_st_tx_clk_txmac                => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_clk_txmac,                --               alt_e100s10_0_avalon_st_tx.clk_txmac
			alt_e100s10_0_avalon_st_tx_l8_tx_startofpacket      => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_startofpacket,      --                                         .l8_tx_startofpacket
			alt_e100s10_0_avalon_st_tx_l8_tx_endofpacket        => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_endofpacket,        --                                         .l8_tx_endofpacket
			alt_e100s10_0_avalon_st_tx_l8_tx_valid              => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_valid,              --                                         .l8_tx_valid
			alt_e100s10_0_avalon_st_tx_l8_tx_ready              => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_ready,              --                                         .l8_tx_ready
			alt_e100s10_0_avalon_st_tx_l8_tx_error              => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_error,              --                                         .l8_tx_error
			alt_e100s10_0_avalon_st_tx_l8_tx_empty              => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_empty,              --                                         .l8_tx_empty
			alt_e100s10_0_avalon_st_tx_l8_tx_data               => CONNECTED_TO_alt_e100s10_0_avalon_st_tx_l8_tx_data,               --                                         .l8_tx_data
			alt_e100s10_0_avalon_st_rx_clk_rxmac                => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_clk_rxmac,                --               alt_e100s10_0_avalon_st_rx.clk_rxmac
			alt_e100s10_0_avalon_st_rx_l8_rx_error              => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_l8_rx_error,              --                                         .l8_rx_error
			alt_e100s10_0_avalon_st_rx_l8_rx_valid              => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_l8_rx_valid,              --                                         .l8_rx_valid
			alt_e100s10_0_avalon_st_rx_l8_rx_startofpacket      => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_l8_rx_startofpacket,      --                                         .l8_rx_startofpacket
			alt_e100s10_0_avalon_st_rx_l8_rx_endofpacket        => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_l8_rx_endofpacket,        --                                         .l8_rx_endofpacket
			alt_e100s10_0_avalon_st_rx_l8_rx_empty              => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_l8_rx_empty,              --                                         .l8_rx_empty
			alt_e100s10_0_avalon_st_rx_l8_rx_data               => CONNECTED_TO_alt_e100s10_0_avalon_st_rx_l8_rx_data,               --                                         .l8_rx_data
			alt_e100s10_0_serial_lanes_tx_serial                => CONNECTED_TO_alt_e100s10_0_serial_lanes_tx_serial,                --               alt_e100s10_0_serial_lanes.tx_serial
			alt_e100s10_0_serial_lanes_rx_serial                => CONNECTED_TO_alt_e100s10_0_serial_lanes_rx_serial,                --                                         .rx_serial
			alt_e100s10_0_reconfig_reconfig_clk                 => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_clk,                 --                   alt_e100s10_0_reconfig.reconfig_clk
			alt_e100s10_0_reconfig_reconfig_reset               => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_reset,               --                                         .reconfig_reset
			alt_e100s10_0_reconfig_reconfig_write               => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_write,               --                                         .reconfig_write
			alt_e100s10_0_reconfig_reconfig_read                => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_read,                --                                         .reconfig_read
			alt_e100s10_0_reconfig_reconfig_address             => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_address,             --                                         .reconfig_address
			alt_e100s10_0_reconfig_reconfig_writedata           => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_writedata,           --                                         .reconfig_writedata
			alt_e100s10_0_reconfig_reconfig_readdata            => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_readdata,            --                                         .reconfig_readdata
			alt_e100s10_0_reconfig_reconfig_waitrequest         => CONNECTED_TO_alt_e100s10_0_reconfig_reconfig_waitrequest,         --                                         .reconfig_waitrequest
			alt_e100s10_0_other_tx_lanes_stable                 => CONNECTED_TO_alt_e100s10_0_other_tx_lanes_stable,                 --                      alt_e100s10_0_other.tx_lanes_stable
			alt_e100s10_0_other_rx_pcs_ready                    => CONNECTED_TO_alt_e100s10_0_other_rx_pcs_ready,                    --                                         .rx_pcs_ready
			alt_e100s10_0_other_rx_block_lock                   => CONNECTED_TO_alt_e100s10_0_other_rx_block_lock,                   --                                         .rx_block_lock
			alt_e100s10_0_other_rx_am_lock                      => CONNECTED_TO_alt_e100s10_0_other_rx_am_lock,                      --                                         .rx_am_lock
			alt_e100s10_0_other_clk_ref                         => CONNECTED_TO_alt_e100s10_0_other_clk_ref,                         --                                         .clk_ref
			alt_e100s10_0_other_csr_rst_n                       => CONNECTED_TO_alt_e100s10_0_other_csr_rst_n,                       --                                         .csr_rst_n
			alt_e100s10_0_other_tx_rst_n                        => CONNECTED_TO_alt_e100s10_0_other_tx_rst_n,                        --                                         .tx_rst_n
			alt_e100s10_0_other_rx_rst_n                        => CONNECTED_TO_alt_e100s10_0_other_rx_rst_n,                        --                                         .rx_rst_n
			alt_e100s10_0_other_tx_serial_clk                   => CONNECTED_TO_alt_e100s10_0_other_tx_serial_clk,                   --                                         .tx_serial_clk
			alt_e100s10_0_other_tx_pll_locked                   => CONNECTED_TO_alt_e100s10_0_other_tx_pll_locked,                   --                                         .tx_pll_locked
			alt_e100s10_0_stats_l8_txstatus_valid               => CONNECTED_TO_alt_e100s10_0_stats_l8_txstatus_valid,               --                      alt_e100s10_0_stats.l8_txstatus_valid
			alt_e100s10_0_stats_l8_txstatus_data                => CONNECTED_TO_alt_e100s10_0_stats_l8_txstatus_data,                --                                         .l8_txstatus_data
			alt_e100s10_0_stats_l8_txstatus_error               => CONNECTED_TO_alt_e100s10_0_stats_l8_txstatus_error,               --                                         .l8_txstatus_error
			alt_e100s10_0_stats_l8_rxstatus_valid               => CONNECTED_TO_alt_e100s10_0_stats_l8_rxstatus_valid,               --                                         .l8_rxstatus_valid
			alt_e100s10_0_stats_l8_rxstatus_data                => CONNECTED_TO_alt_e100s10_0_stats_l8_rxstatus_data,                --                                         .l8_rxstatus_data
			alt_e100s10_1_status_clk_status                     => CONNECTED_TO_alt_e100s10_1_status_clk_status,                     --                     alt_e100s10_1_status.clk_status
			alt_e100s10_1_status_status_write                   => CONNECTED_TO_alt_e100s10_1_status_status_write,                   --                                         .status_write
			alt_e100s10_1_status_status_read                    => CONNECTED_TO_alt_e100s10_1_status_status_read,                    --                                         .status_read
			alt_e100s10_1_status_status_addr                    => CONNECTED_TO_alt_e100s10_1_status_status_addr,                    --                                         .status_addr
			alt_e100s10_1_status_status_writedata               => CONNECTED_TO_alt_e100s10_1_status_status_writedata,               --                                         .status_writedata
			alt_e100s10_1_status_status_readdata                => CONNECTED_TO_alt_e100s10_1_status_status_readdata,                --                                         .status_readdata
			alt_e100s10_1_status_status_readdata_valid          => CONNECTED_TO_alt_e100s10_1_status_status_readdata_valid,          --                                         .status_readdata_valid
			alt_e100s10_1_status_status_waitrequest             => CONNECTED_TO_alt_e100s10_1_status_status_waitrequest,             --                                         .status_waitrequest
			alt_e100s10_1_avalon_st_tx_clk_txmac                => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_clk_txmac,                --               alt_e100s10_1_avalon_st_tx.clk_txmac
			alt_e100s10_1_avalon_st_tx_l8_tx_startofpacket      => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_startofpacket,      --                                         .l8_tx_startofpacket
			alt_e100s10_1_avalon_st_tx_l8_tx_endofpacket        => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_endofpacket,        --                                         .l8_tx_endofpacket
			alt_e100s10_1_avalon_st_tx_l8_tx_valid              => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_valid,              --                                         .l8_tx_valid
			alt_e100s10_1_avalon_st_tx_l8_tx_ready              => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_ready,              --                                         .l8_tx_ready
			alt_e100s10_1_avalon_st_tx_l8_tx_error              => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_error,              --                                         .l8_tx_error
			alt_e100s10_1_avalon_st_tx_l8_tx_empty              => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_empty,              --                                         .l8_tx_empty
			alt_e100s10_1_avalon_st_tx_l8_tx_data               => CONNECTED_TO_alt_e100s10_1_avalon_st_tx_l8_tx_data,               --                                         .l8_tx_data
			alt_e100s10_1_avalon_st_rx_clk_rxmac                => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_clk_rxmac,                --               alt_e100s10_1_avalon_st_rx.clk_rxmac
			alt_e100s10_1_avalon_st_rx_l8_rx_error              => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_l8_rx_error,              --                                         .l8_rx_error
			alt_e100s10_1_avalon_st_rx_l8_rx_valid              => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_l8_rx_valid,              --                                         .l8_rx_valid
			alt_e100s10_1_avalon_st_rx_l8_rx_startofpacket      => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_l8_rx_startofpacket,      --                                         .l8_rx_startofpacket
			alt_e100s10_1_avalon_st_rx_l8_rx_endofpacket        => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_l8_rx_endofpacket,        --                                         .l8_rx_endofpacket
			alt_e100s10_1_avalon_st_rx_l8_rx_empty              => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_l8_rx_empty,              --                                         .l8_rx_empty
			alt_e100s10_1_avalon_st_rx_l8_rx_data               => CONNECTED_TO_alt_e100s10_1_avalon_st_rx_l8_rx_data,               --                                         .l8_rx_data
			alt_e100s10_1_serial_lanes_tx_serial                => CONNECTED_TO_alt_e100s10_1_serial_lanes_tx_serial,                --               alt_e100s10_1_serial_lanes.tx_serial
			alt_e100s10_1_serial_lanes_rx_serial                => CONNECTED_TO_alt_e100s10_1_serial_lanes_rx_serial,                --                                         .rx_serial
			alt_e100s10_1_reconfig_reconfig_clk                 => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_clk,                 --                   alt_e100s10_1_reconfig.reconfig_clk
			alt_e100s10_1_reconfig_reconfig_reset               => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_reset,               --                                         .reconfig_reset
			alt_e100s10_1_reconfig_reconfig_write               => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_write,               --                                         .reconfig_write
			alt_e100s10_1_reconfig_reconfig_read                => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_read,                --                                         .reconfig_read
			alt_e100s10_1_reconfig_reconfig_address             => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_address,             --                                         .reconfig_address
			alt_e100s10_1_reconfig_reconfig_writedata           => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_writedata,           --                                         .reconfig_writedata
			alt_e100s10_1_reconfig_reconfig_readdata            => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_readdata,            --                                         .reconfig_readdata
			alt_e100s10_1_reconfig_reconfig_waitrequest         => CONNECTED_TO_alt_e100s10_1_reconfig_reconfig_waitrequest,         --                                         .reconfig_waitrequest
			alt_e100s10_1_other_tx_lanes_stable                 => CONNECTED_TO_alt_e100s10_1_other_tx_lanes_stable,                 --                      alt_e100s10_1_other.tx_lanes_stable
			alt_e100s10_1_other_rx_pcs_ready                    => CONNECTED_TO_alt_e100s10_1_other_rx_pcs_ready,                    --                                         .rx_pcs_ready
			alt_e100s10_1_other_rx_block_lock                   => CONNECTED_TO_alt_e100s10_1_other_rx_block_lock,                   --                                         .rx_block_lock
			alt_e100s10_1_other_rx_am_lock                      => CONNECTED_TO_alt_e100s10_1_other_rx_am_lock,                      --                                         .rx_am_lock
			alt_e100s10_1_other_clk_ref                         => CONNECTED_TO_alt_e100s10_1_other_clk_ref,                         --                                         .clk_ref
			alt_e100s10_1_other_csr_rst_n                       => CONNECTED_TO_alt_e100s10_1_other_csr_rst_n,                       --                                         .csr_rst_n
			alt_e100s10_1_other_tx_rst_n                        => CONNECTED_TO_alt_e100s10_1_other_tx_rst_n,                        --                                         .tx_rst_n
			alt_e100s10_1_other_rx_rst_n                        => CONNECTED_TO_alt_e100s10_1_other_rx_rst_n,                        --                                         .rx_rst_n
			alt_e100s10_1_other_tx_serial_clk                   => CONNECTED_TO_alt_e100s10_1_other_tx_serial_clk,                   --                                         .tx_serial_clk
			alt_e100s10_1_other_tx_pll_locked                   => CONNECTED_TO_alt_e100s10_1_other_tx_pll_locked,                   --                                         .tx_pll_locked
			alt_e100s10_1_stats_l8_txstatus_valid               => CONNECTED_TO_alt_e100s10_1_stats_l8_txstatus_valid,               --                      alt_e100s10_1_stats.l8_txstatus_valid
			alt_e100s10_1_stats_l8_txstatus_data                => CONNECTED_TO_alt_e100s10_1_stats_l8_txstatus_data,                --                                         .l8_txstatus_data
			alt_e100s10_1_stats_l8_txstatus_error               => CONNECTED_TO_alt_e100s10_1_stats_l8_txstatus_error,               --                                         .l8_txstatus_error
			alt_e100s10_1_stats_l8_rxstatus_valid               => CONNECTED_TO_alt_e100s10_1_stats_l8_rxstatus_valid,               --                                         .l8_rxstatus_valid
			alt_e100s10_1_stats_l8_rxstatus_data                => CONNECTED_TO_alt_e100s10_1_stats_l8_rxstatus_data,                --                                         .l8_rxstatus_data
			alt_e100s10_2_status_clk_status                     => CONNECTED_TO_alt_e100s10_2_status_clk_status,                     --                     alt_e100s10_2_status.clk_status
			alt_e100s10_2_status_status_write                   => CONNECTED_TO_alt_e100s10_2_status_status_write,                   --                                         .status_write
			alt_e100s10_2_status_status_read                    => CONNECTED_TO_alt_e100s10_2_status_status_read,                    --                                         .status_read
			alt_e100s10_2_status_status_addr                    => CONNECTED_TO_alt_e100s10_2_status_status_addr,                    --                                         .status_addr
			alt_e100s10_2_status_status_writedata               => CONNECTED_TO_alt_e100s10_2_status_status_writedata,               --                                         .status_writedata
			alt_e100s10_2_status_status_readdata                => CONNECTED_TO_alt_e100s10_2_status_status_readdata,                --                                         .status_readdata
			alt_e100s10_2_status_status_readdata_valid          => CONNECTED_TO_alt_e100s10_2_status_status_readdata_valid,          --                                         .status_readdata_valid
			alt_e100s10_2_status_status_waitrequest             => CONNECTED_TO_alt_e100s10_2_status_status_waitrequest,             --                                         .status_waitrequest
			alt_e100s10_2_avalon_st_tx_clk_txmac                => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_clk_txmac,                --               alt_e100s10_2_avalon_st_tx.clk_txmac
			alt_e100s10_2_avalon_st_tx_l8_tx_startofpacket      => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_startofpacket,      --                                         .l8_tx_startofpacket
			alt_e100s10_2_avalon_st_tx_l8_tx_endofpacket        => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_endofpacket,        --                                         .l8_tx_endofpacket
			alt_e100s10_2_avalon_st_tx_l8_tx_valid              => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_valid,              --                                         .l8_tx_valid
			alt_e100s10_2_avalon_st_tx_l8_tx_ready              => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_ready,              --                                         .l8_tx_ready
			alt_e100s10_2_avalon_st_tx_l8_tx_error              => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_error,              --                                         .l8_tx_error
			alt_e100s10_2_avalon_st_tx_l8_tx_empty              => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_empty,              --                                         .l8_tx_empty
			alt_e100s10_2_avalon_st_tx_l8_tx_data               => CONNECTED_TO_alt_e100s10_2_avalon_st_tx_l8_tx_data,               --                                         .l8_tx_data
			alt_e100s10_2_avalon_st_rx_clk_rxmac                => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_clk_rxmac,                --               alt_e100s10_2_avalon_st_rx.clk_rxmac
			alt_e100s10_2_avalon_st_rx_l8_rx_error              => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_l8_rx_error,              --                                         .l8_rx_error
			alt_e100s10_2_avalon_st_rx_l8_rx_valid              => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_l8_rx_valid,              --                                         .l8_rx_valid
			alt_e100s10_2_avalon_st_rx_l8_rx_startofpacket      => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_l8_rx_startofpacket,      --                                         .l8_rx_startofpacket
			alt_e100s10_2_avalon_st_rx_l8_rx_endofpacket        => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_l8_rx_endofpacket,        --                                         .l8_rx_endofpacket
			alt_e100s10_2_avalon_st_rx_l8_rx_empty              => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_l8_rx_empty,              --                                         .l8_rx_empty
			alt_e100s10_2_avalon_st_rx_l8_rx_data               => CONNECTED_TO_alt_e100s10_2_avalon_st_rx_l8_rx_data,               --                                         .l8_rx_data
			alt_e100s10_2_serial_lanes_tx_serial                => CONNECTED_TO_alt_e100s10_2_serial_lanes_tx_serial,                --               alt_e100s10_2_serial_lanes.tx_serial
			alt_e100s10_2_serial_lanes_rx_serial                => CONNECTED_TO_alt_e100s10_2_serial_lanes_rx_serial,                --                                         .rx_serial
			alt_e100s10_2_reconfig_reconfig_clk                 => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_clk,                 --                   alt_e100s10_2_reconfig.reconfig_clk
			alt_e100s10_2_reconfig_reconfig_reset               => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_reset,               --                                         .reconfig_reset
			alt_e100s10_2_reconfig_reconfig_write               => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_write,               --                                         .reconfig_write
			alt_e100s10_2_reconfig_reconfig_read                => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_read,                --                                         .reconfig_read
			alt_e100s10_2_reconfig_reconfig_address             => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_address,             --                                         .reconfig_address
			alt_e100s10_2_reconfig_reconfig_writedata           => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_writedata,           --                                         .reconfig_writedata
			alt_e100s10_2_reconfig_reconfig_readdata            => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_readdata,            --                                         .reconfig_readdata
			alt_e100s10_2_reconfig_reconfig_waitrequest         => CONNECTED_TO_alt_e100s10_2_reconfig_reconfig_waitrequest,         --                                         .reconfig_waitrequest
			alt_e100s10_2_other_tx_lanes_stable                 => CONNECTED_TO_alt_e100s10_2_other_tx_lanes_stable,                 --                      alt_e100s10_2_other.tx_lanes_stable
			alt_e100s10_2_other_rx_pcs_ready                    => CONNECTED_TO_alt_e100s10_2_other_rx_pcs_ready,                    --                                         .rx_pcs_ready
			alt_e100s10_2_other_rx_block_lock                   => CONNECTED_TO_alt_e100s10_2_other_rx_block_lock,                   --                                         .rx_block_lock
			alt_e100s10_2_other_rx_am_lock                      => CONNECTED_TO_alt_e100s10_2_other_rx_am_lock,                      --                                         .rx_am_lock
			alt_e100s10_2_other_clk_ref                         => CONNECTED_TO_alt_e100s10_2_other_clk_ref,                         --                                         .clk_ref
			alt_e100s10_2_other_csr_rst_n                       => CONNECTED_TO_alt_e100s10_2_other_csr_rst_n,                       --                                         .csr_rst_n
			alt_e100s10_2_other_tx_rst_n                        => CONNECTED_TO_alt_e100s10_2_other_tx_rst_n,                        --                                         .tx_rst_n
			alt_e100s10_2_other_rx_rst_n                        => CONNECTED_TO_alt_e100s10_2_other_rx_rst_n,                        --                                         .rx_rst_n
			alt_e100s10_2_other_tx_serial_clk                   => CONNECTED_TO_alt_e100s10_2_other_tx_serial_clk,                   --                                         .tx_serial_clk
			alt_e100s10_2_other_tx_pll_locked                   => CONNECTED_TO_alt_e100s10_2_other_tx_pll_locked,                   --                                         .tx_pll_locked
			alt_e100s10_2_stats_l8_txstatus_valid               => CONNECTED_TO_alt_e100s10_2_stats_l8_txstatus_valid,               --                      alt_e100s10_2_stats.l8_txstatus_valid
			alt_e100s10_2_stats_l8_txstatus_data                => CONNECTED_TO_alt_e100s10_2_stats_l8_txstatus_data,                --                                         .l8_txstatus_data
			alt_e100s10_2_stats_l8_txstatus_error               => CONNECTED_TO_alt_e100s10_2_stats_l8_txstatus_error,               --                                         .l8_txstatus_error
			alt_e100s10_2_stats_l8_rxstatus_valid               => CONNECTED_TO_alt_e100s10_2_stats_l8_rxstatus_valid,               --                                         .l8_rxstatus_valid
			alt_e100s10_2_stats_l8_rxstatus_data                => CONNECTED_TO_alt_e100s10_2_stats_l8_rxstatus_data,                --                                         .l8_rxstatus_data
			alt_e100s10_3_status_clk_status                     => CONNECTED_TO_alt_e100s10_3_status_clk_status,                     --                     alt_e100s10_3_status.clk_status
			alt_e100s10_3_status_status_write                   => CONNECTED_TO_alt_e100s10_3_status_status_write,                   --                                         .status_write
			alt_e100s10_3_status_status_read                    => CONNECTED_TO_alt_e100s10_3_status_status_read,                    --                                         .status_read
			alt_e100s10_3_status_status_addr                    => CONNECTED_TO_alt_e100s10_3_status_status_addr,                    --                                         .status_addr
			alt_e100s10_3_status_status_writedata               => CONNECTED_TO_alt_e100s10_3_status_status_writedata,               --                                         .status_writedata
			alt_e100s10_3_status_status_readdata                => CONNECTED_TO_alt_e100s10_3_status_status_readdata,                --                                         .status_readdata
			alt_e100s10_3_status_status_readdata_valid          => CONNECTED_TO_alt_e100s10_3_status_status_readdata_valid,          --                                         .status_readdata_valid
			alt_e100s10_3_status_status_waitrequest             => CONNECTED_TO_alt_e100s10_3_status_status_waitrequest,             --                                         .status_waitrequest
			alt_e100s10_3_avalon_st_tx_clk_txmac                => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_clk_txmac,                --               alt_e100s10_3_avalon_st_tx.clk_txmac
			alt_e100s10_3_avalon_st_tx_l8_tx_startofpacket      => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_startofpacket,      --                                         .l8_tx_startofpacket
			alt_e100s10_3_avalon_st_tx_l8_tx_endofpacket        => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_endofpacket,        --                                         .l8_tx_endofpacket
			alt_e100s10_3_avalon_st_tx_l8_tx_valid              => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_valid,              --                                         .l8_tx_valid
			alt_e100s10_3_avalon_st_tx_l8_tx_ready              => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_ready,              --                                         .l8_tx_ready
			alt_e100s10_3_avalon_st_tx_l8_tx_error              => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_error,              --                                         .l8_tx_error
			alt_e100s10_3_avalon_st_tx_l8_tx_empty              => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_empty,              --                                         .l8_tx_empty
			alt_e100s10_3_avalon_st_tx_l8_tx_data               => CONNECTED_TO_alt_e100s10_3_avalon_st_tx_l8_tx_data,               --                                         .l8_tx_data
			alt_e100s10_3_avalon_st_rx_clk_rxmac                => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_clk_rxmac,                --               alt_e100s10_3_avalon_st_rx.clk_rxmac
			alt_e100s10_3_avalon_st_rx_l8_rx_error              => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_l8_rx_error,              --                                         .l8_rx_error
			alt_e100s10_3_avalon_st_rx_l8_rx_valid              => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_l8_rx_valid,              --                                         .l8_rx_valid
			alt_e100s10_3_avalon_st_rx_l8_rx_startofpacket      => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_l8_rx_startofpacket,      --                                         .l8_rx_startofpacket
			alt_e100s10_3_avalon_st_rx_l8_rx_endofpacket        => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_l8_rx_endofpacket,        --                                         .l8_rx_endofpacket
			alt_e100s10_3_avalon_st_rx_l8_rx_empty              => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_l8_rx_empty,              --                                         .l8_rx_empty
			alt_e100s10_3_avalon_st_rx_l8_rx_data               => CONNECTED_TO_alt_e100s10_3_avalon_st_rx_l8_rx_data,               --                                         .l8_rx_data
			alt_e100s10_3_serial_lanes_tx_serial                => CONNECTED_TO_alt_e100s10_3_serial_lanes_tx_serial,                --               alt_e100s10_3_serial_lanes.tx_serial
			alt_e100s10_3_serial_lanes_rx_serial                => CONNECTED_TO_alt_e100s10_3_serial_lanes_rx_serial,                --                                         .rx_serial
			alt_e100s10_3_reconfig_reconfig_clk                 => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_clk,                 --                   alt_e100s10_3_reconfig.reconfig_clk
			alt_e100s10_3_reconfig_reconfig_reset               => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_reset,               --                                         .reconfig_reset
			alt_e100s10_3_reconfig_reconfig_write               => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_write,               --                                         .reconfig_write
			alt_e100s10_3_reconfig_reconfig_read                => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_read,                --                                         .reconfig_read
			alt_e100s10_3_reconfig_reconfig_address             => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_address,             --                                         .reconfig_address
			alt_e100s10_3_reconfig_reconfig_writedata           => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_writedata,           --                                         .reconfig_writedata
			alt_e100s10_3_reconfig_reconfig_readdata            => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_readdata,            --                                         .reconfig_readdata
			alt_e100s10_3_reconfig_reconfig_waitrequest         => CONNECTED_TO_alt_e100s10_3_reconfig_reconfig_waitrequest,         --                                         .reconfig_waitrequest
			alt_e100s10_3_other_tx_lanes_stable                 => CONNECTED_TO_alt_e100s10_3_other_tx_lanes_stable,                 --                      alt_e100s10_3_other.tx_lanes_stable
			alt_e100s10_3_other_rx_pcs_ready                    => CONNECTED_TO_alt_e100s10_3_other_rx_pcs_ready,                    --                                         .rx_pcs_ready
			alt_e100s10_3_other_rx_block_lock                   => CONNECTED_TO_alt_e100s10_3_other_rx_block_lock,                   --                                         .rx_block_lock
			alt_e100s10_3_other_rx_am_lock                      => CONNECTED_TO_alt_e100s10_3_other_rx_am_lock,                      --                                         .rx_am_lock
			alt_e100s10_3_other_clk_ref                         => CONNECTED_TO_alt_e100s10_3_other_clk_ref,                         --                                         .clk_ref
			alt_e100s10_3_other_csr_rst_n                       => CONNECTED_TO_alt_e100s10_3_other_csr_rst_n,                       --                                         .csr_rst_n
			alt_e100s10_3_other_tx_rst_n                        => CONNECTED_TO_alt_e100s10_3_other_tx_rst_n,                        --                                         .tx_rst_n
			alt_e100s10_3_other_rx_rst_n                        => CONNECTED_TO_alt_e100s10_3_other_rx_rst_n,                        --                                         .rx_rst_n
			alt_e100s10_3_other_tx_serial_clk                   => CONNECTED_TO_alt_e100s10_3_other_tx_serial_clk,                   --                                         .tx_serial_clk
			alt_e100s10_3_other_tx_pll_locked                   => CONNECTED_TO_alt_e100s10_3_other_tx_pll_locked,                   --                                         .tx_pll_locked
			alt_e100s10_3_stats_l8_txstatus_valid               => CONNECTED_TO_alt_e100s10_3_stats_l8_txstatus_valid,               --                      alt_e100s10_3_stats.l8_txstatus_valid
			alt_e100s10_3_stats_l8_txstatus_data                => CONNECTED_TO_alt_e100s10_3_stats_l8_txstatus_data,                --                                         .l8_txstatus_data
			alt_e100s10_3_stats_l8_txstatus_error               => CONNECTED_TO_alt_e100s10_3_stats_l8_txstatus_error,               --                                         .l8_txstatus_error
			alt_e100s10_3_stats_l8_rxstatus_valid               => CONNECTED_TO_alt_e100s10_3_stats_l8_rxstatus_valid,               --                                         .l8_rxstatus_valid
			alt_e100s10_3_stats_l8_rxstatus_data                => CONNECTED_TO_alt_e100s10_3_stats_l8_rxstatus_data,                --                                         .l8_rxstatus_data
			button_external_connection_export                   => CONNECTED_TO_button_external_connection_export,                   --               button_external_connection.export
			clk_clk                                             => CONNECTED_TO_clk_clk,                                             --                                      clk.clk
			ddr4_local_reset_req_external_connection_export     => CONNECTED_TO_ddr4_local_reset_req_external_connection_export,     -- ddr4_local_reset_req_external_connection.export
			ddr4_status_external_connection_export              => CONNECTED_TO_ddr4_status_external_connection_export,              --          ddr4_status_external_connection.export
			emif_s10_ddr4_a_local_reset_req_local_reset_req     => CONNECTED_TO_emif_s10_ddr4_a_local_reset_req_local_reset_req,     --          emif_s10_ddr4_a_local_reset_req.local_reset_req
			emif_s10_ddr4_a_local_reset_status_local_reset_done => CONNECTED_TO_emif_s10_ddr4_a_local_reset_status_local_reset_done, --       emif_s10_ddr4_a_local_reset_status.local_reset_done
			emif_s10_ddr4_a_pll_ref_clk_clk                     => CONNECTED_TO_emif_s10_ddr4_a_pll_ref_clk_clk,                     --              emif_s10_ddr4_a_pll_ref_clk.clk
			emif_s10_ddr4_a_oct_oct_rzqin                       => CONNECTED_TO_emif_s10_ddr4_a_oct_oct_rzqin,                       --                      emif_s10_ddr4_a_oct.oct_rzqin
			emif_s10_ddr4_a_mem_mem_ck                          => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_ck,                          --                      emif_s10_ddr4_a_mem.mem_ck
			emif_s10_ddr4_a_mem_mem_ck_n                        => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_ck_n,                        --                                         .mem_ck_n
			emif_s10_ddr4_a_mem_mem_a                           => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_a,                           --                                         .mem_a
			emif_s10_ddr4_a_mem_mem_act_n                       => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_act_n,                       --                                         .mem_act_n
			emif_s10_ddr4_a_mem_mem_ba                          => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_ba,                          --                                         .mem_ba
			emif_s10_ddr4_a_mem_mem_bg                          => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_bg,                          --                                         .mem_bg
			emif_s10_ddr4_a_mem_mem_cke                         => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_cke,                         --                                         .mem_cke
			emif_s10_ddr4_a_mem_mem_cs_n                        => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_cs_n,                        --                                         .mem_cs_n
			emif_s10_ddr4_a_mem_mem_odt                         => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_odt,                         --                                         .mem_odt
			emif_s10_ddr4_a_mem_mem_reset_n                     => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_reset_n,                     --                                         .mem_reset_n
			emif_s10_ddr4_a_mem_mem_par                         => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_par,                         --                                         .mem_par
			emif_s10_ddr4_a_mem_mem_alert_n                     => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_alert_n,                     --                                         .mem_alert_n
			emif_s10_ddr4_a_mem_mem_dqs                         => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_dqs,                         --                                         .mem_dqs
			emif_s10_ddr4_a_mem_mem_dqs_n                       => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_dqs_n,                       --                                         .mem_dqs_n
			emif_s10_ddr4_a_mem_mem_dq                          => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_dq,                          --                                         .mem_dq
			emif_s10_ddr4_a_mem_mem_dbi_n                       => CONNECTED_TO_emif_s10_ddr4_a_mem_mem_dbi_n,                       --                                         .mem_dbi_n
			emif_s10_ddr4_a_status_local_cal_success            => CONNECTED_TO_emif_s10_ddr4_a_status_local_cal_success,            --                   emif_s10_ddr4_a_status.local_cal_success
			emif_s10_ddr4_a_status_local_cal_fail               => CONNECTED_TO_emif_s10_ddr4_a_status_local_cal_fail,               --                                         .local_cal_fail
			emif_s10_ddr4_b_local_reset_req_local_reset_req     => CONNECTED_TO_emif_s10_ddr4_b_local_reset_req_local_reset_req,     --          emif_s10_ddr4_b_local_reset_req.local_reset_req
			emif_s10_ddr4_b_local_reset_status_local_reset_done => CONNECTED_TO_emif_s10_ddr4_b_local_reset_status_local_reset_done, --       emif_s10_ddr4_b_local_reset_status.local_reset_done
			emif_s10_ddr4_b_pll_ref_clk_clk                     => CONNECTED_TO_emif_s10_ddr4_b_pll_ref_clk_clk,                     --              emif_s10_ddr4_b_pll_ref_clk.clk
			emif_s10_ddr4_b_oct_oct_rzqin                       => CONNECTED_TO_emif_s10_ddr4_b_oct_oct_rzqin,                       --                      emif_s10_ddr4_b_oct.oct_rzqin
			emif_s10_ddr4_b_mem_mem_ck                          => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_ck,                          --                      emif_s10_ddr4_b_mem.mem_ck
			emif_s10_ddr4_b_mem_mem_ck_n                        => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_ck_n,                        --                                         .mem_ck_n
			emif_s10_ddr4_b_mem_mem_a                           => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_a,                           --                                         .mem_a
			emif_s10_ddr4_b_mem_mem_act_n                       => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_act_n,                       --                                         .mem_act_n
			emif_s10_ddr4_b_mem_mem_ba                          => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_ba,                          --                                         .mem_ba
			emif_s10_ddr4_b_mem_mem_bg                          => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_bg,                          --                                         .mem_bg
			emif_s10_ddr4_b_mem_mem_cke                         => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_cke,                         --                                         .mem_cke
			emif_s10_ddr4_b_mem_mem_cs_n                        => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_cs_n,                        --                                         .mem_cs_n
			emif_s10_ddr4_b_mem_mem_odt                         => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_odt,                         --                                         .mem_odt
			emif_s10_ddr4_b_mem_mem_reset_n                     => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_reset_n,                     --                                         .mem_reset_n
			emif_s10_ddr4_b_mem_mem_par                         => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_par,                         --                                         .mem_par
			emif_s10_ddr4_b_mem_mem_alert_n                     => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_alert_n,                     --                                         .mem_alert_n
			emif_s10_ddr4_b_mem_mem_dqs                         => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_dqs,                         --                                         .mem_dqs
			emif_s10_ddr4_b_mem_mem_dqs_n                       => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_dqs_n,                       --                                         .mem_dqs_n
			emif_s10_ddr4_b_mem_mem_dq                          => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_dq,                          --                                         .mem_dq
			emif_s10_ddr4_b_mem_mem_dbi_n                       => CONNECTED_TO_emif_s10_ddr4_b_mem_mem_dbi_n,                       --                                         .mem_dbi_n
			emif_s10_ddr4_b_status_local_cal_success            => CONNECTED_TO_emif_s10_ddr4_b_status_local_cal_success,            --                   emif_s10_ddr4_b_status.local_cal_success
			emif_s10_ddr4_b_status_local_cal_fail               => CONNECTED_TO_emif_s10_ddr4_b_status_local_cal_fail,               --                                         .local_cal_fail
			emif_s10_ddr4_c_local_reset_req_local_reset_req     => CONNECTED_TO_emif_s10_ddr4_c_local_reset_req_local_reset_req,     --          emif_s10_ddr4_c_local_reset_req.local_reset_req
			emif_s10_ddr4_c_local_reset_status_local_reset_done => CONNECTED_TO_emif_s10_ddr4_c_local_reset_status_local_reset_done, --       emif_s10_ddr4_c_local_reset_status.local_reset_done
			emif_s10_ddr4_c_pll_ref_clk_clk                     => CONNECTED_TO_emif_s10_ddr4_c_pll_ref_clk_clk,                     --              emif_s10_ddr4_c_pll_ref_clk.clk
			emif_s10_ddr4_c_oct_oct_rzqin                       => CONNECTED_TO_emif_s10_ddr4_c_oct_oct_rzqin,                       --                      emif_s10_ddr4_c_oct.oct_rzqin
			emif_s10_ddr4_c_mem_mem_ck                          => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_ck,                          --                      emif_s10_ddr4_c_mem.mem_ck
			emif_s10_ddr4_c_mem_mem_ck_n                        => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_ck_n,                        --                                         .mem_ck_n
			emif_s10_ddr4_c_mem_mem_a                           => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_a,                           --                                         .mem_a
			emif_s10_ddr4_c_mem_mem_act_n                       => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_act_n,                       --                                         .mem_act_n
			emif_s10_ddr4_c_mem_mem_ba                          => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_ba,                          --                                         .mem_ba
			emif_s10_ddr4_c_mem_mem_bg                          => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_bg,                          --                                         .mem_bg
			emif_s10_ddr4_c_mem_mem_cke                         => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_cke,                         --                                         .mem_cke
			emif_s10_ddr4_c_mem_mem_cs_n                        => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_cs_n,                        --                                         .mem_cs_n
			emif_s10_ddr4_c_mem_mem_odt                         => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_odt,                         --                                         .mem_odt
			emif_s10_ddr4_c_mem_mem_reset_n                     => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_reset_n,                     --                                         .mem_reset_n
			emif_s10_ddr4_c_mem_mem_par                         => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_par,                         --                                         .mem_par
			emif_s10_ddr4_c_mem_mem_alert_n                     => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_alert_n,                     --                                         .mem_alert_n
			emif_s10_ddr4_c_mem_mem_dqs                         => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_dqs,                         --                                         .mem_dqs
			emif_s10_ddr4_c_mem_mem_dqs_n                       => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_dqs_n,                       --                                         .mem_dqs_n
			emif_s10_ddr4_c_mem_mem_dq                          => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_dq,                          --                                         .mem_dq
			emif_s10_ddr4_c_mem_mem_dbi_n                       => CONNECTED_TO_emif_s10_ddr4_c_mem_mem_dbi_n,                       --                                         .mem_dbi_n
			emif_s10_ddr4_c_status_local_cal_success            => CONNECTED_TO_emif_s10_ddr4_c_status_local_cal_success,            --                   emif_s10_ddr4_c_status.local_cal_success
			emif_s10_ddr4_c_status_local_cal_fail               => CONNECTED_TO_emif_s10_ddr4_c_status_local_cal_fail,               --                                         .local_cal_fail
			emif_s10_ddr4_d_local_reset_req_local_reset_req     => CONNECTED_TO_emif_s10_ddr4_d_local_reset_req_local_reset_req,     --          emif_s10_ddr4_d_local_reset_req.local_reset_req
			emif_s10_ddr4_d_local_reset_status_local_reset_done => CONNECTED_TO_emif_s10_ddr4_d_local_reset_status_local_reset_done, --       emif_s10_ddr4_d_local_reset_status.local_reset_done
			emif_s10_ddr4_d_pll_ref_clk_clk                     => CONNECTED_TO_emif_s10_ddr4_d_pll_ref_clk_clk,                     --              emif_s10_ddr4_d_pll_ref_clk.clk
			emif_s10_ddr4_d_oct_oct_rzqin                       => CONNECTED_TO_emif_s10_ddr4_d_oct_oct_rzqin,                       --                      emif_s10_ddr4_d_oct.oct_rzqin
			emif_s10_ddr4_d_mem_mem_ck                          => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_ck,                          --                      emif_s10_ddr4_d_mem.mem_ck
			emif_s10_ddr4_d_mem_mem_ck_n                        => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_ck_n,                        --                                         .mem_ck_n
			emif_s10_ddr4_d_mem_mem_a                           => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_a,                           --                                         .mem_a
			emif_s10_ddr4_d_mem_mem_act_n                       => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_act_n,                       --                                         .mem_act_n
			emif_s10_ddr4_d_mem_mem_ba                          => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_ba,                          --                                         .mem_ba
			emif_s10_ddr4_d_mem_mem_bg                          => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_bg,                          --                                         .mem_bg
			emif_s10_ddr4_d_mem_mem_cke                         => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_cke,                         --                                         .mem_cke
			emif_s10_ddr4_d_mem_mem_cs_n                        => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_cs_n,                        --                                         .mem_cs_n
			emif_s10_ddr4_d_mem_mem_odt                         => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_odt,                         --                                         .mem_odt
			emif_s10_ddr4_d_mem_mem_reset_n                     => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_reset_n,                     --                                         .mem_reset_n
			emif_s10_ddr4_d_mem_mem_par                         => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_par,                         --                                         .mem_par
			emif_s10_ddr4_d_mem_mem_alert_n                     => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_alert_n,                     --                                         .mem_alert_n
			emif_s10_ddr4_d_mem_mem_dqs                         => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_dqs,                         --                                         .mem_dqs
			emif_s10_ddr4_d_mem_mem_dqs_n                       => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_dqs_n,                       --                                         .mem_dqs_n
			emif_s10_ddr4_d_mem_mem_dq                          => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_dq,                          --                                         .mem_dq
			emif_s10_ddr4_d_mem_mem_dbi_n                       => CONNECTED_TO_emif_s10_ddr4_d_mem_mem_dbi_n,                       --                                         .mem_dbi_n
			emif_s10_ddr4_d_status_local_cal_success            => CONNECTED_TO_emif_s10_ddr4_d_status_local_cal_success,            --                   emif_s10_ddr4_d_status.local_cal_success
			emif_s10_ddr4_d_status_local_cal_fail               => CONNECTED_TO_emif_s10_ddr4_d_status_local_cal_fail,               --                                         .local_cal_fail
			iopll_0_locked_export                               => CONNECTED_TO_iopll_0_locked_export,                               --                           iopll_0_locked.export
			reset_reset                                         => CONNECTED_TO_reset_reset                                          --                                    reset.reset
		);

