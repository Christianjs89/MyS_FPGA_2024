connect -url tcp:127.0.0.1:3121
source C:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.sdk/counter_system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 003017BB0A94A"} -index 0
loadhw -hw C:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.sdk/counter_system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Arty Z7 003017BB0A94A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 003017BB0A94A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 003017BB0A94A"} -index 0
dow C:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.sdk/uart_counter/Debug/uart_counter.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Arty Z7 003017BB0A94A"} -index 0
con
