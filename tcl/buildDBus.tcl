set ver_major 1
set ver_minor 0
set DWidth 128

proc buildDbus { Num } {
	append ipname rbus $Num
	append dir ../proj/ $ipname
	if [file exists $dir] {
		file delete -force $dir
	}
	create_project $ipname ../proj/$ipname -part xc7z030ffg676-1
	set_property target_language VHDL [current_project]
	set_property ip_repo_paths  ../lib [current_project]
	update_ip_catalog -rebuild
	file delete -force ../lib/xilinx.com_user_rbus_1.0
	update_ip_catalog -add_ip ../lib/xilinx.com_user_rbus_1.0.zip -repo_path ../lib
	create_bd_design $ipname
	
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:user:rbus:1.0 rbusData
	endgroup
	startgroup
	set_property -dict [list CONFIG.Bwidth $::DWidth CONFIG.Num $Num] [get_bd_cells rbusData]
	endgroup
	create_bd_port -dir I sync
	connect_bd_net [get_bd_ports sync] [get_bd_pins rbusData/sync]
	create_bd_port -dir I clk
	connect_bd_net [get_bd_ports clk] [get_bd_pins rbusData/clk]
	create_bd_port -dir I rst
	connect_bd_net [get_bd_ports rst] [get_bd_pins rbusData/rst]

	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_tx
	endgroup
	startgroup
	set_property -dict [list CONFIG.NUM_PORTS $Num] [get_bd_cells xlconcat_tx]
	endgroup
	
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_Req
	endgroup
	startgroup
	set_property -dict [list CONFIG.NUM_PORTS $Num] [get_bd_cells xlconcat_Req]
	endgroup
	
	connect_bd_net -net tx [get_bd_pins xlconcat_tx/dout] [get_bd_pins rbusData/tx]
	connect_bd_net -net Req [get_bd_pins xlconcat_Req/dout] [get_bd_pins rbusData/Req]
	set busw [expr $Num * $::DWidth]
	for {set x 0} {$x<$Num} {incr x} {
		set config CONFIG.IN
		append config $x _WIDTH.VALUE_SRC 
		startgroup
		set_property -dict [list $config USER ] [get_bd_cells xlconcat_tx]
		endgroup
		startgroup
		set_property -dict [list $config USER ] [get_bd_cells xlconcat_Req]
		endgroup
		
		set config CONFIG.IN
		append config $x _WIDTH 
		startgroup
		set_property -dict [list $config $::DWidth] [get_bd_cells xlconcat_tx]
		endgroup
		startgroup
		set_property -dict [list $config {1}] [get_bd_cells xlconcat_Req]
		endgroup
		
		create_bd_port -dir I -from 127 -to 0 tx$x
		connect_bd_net -net tx$x [get_bd_ports tx$x] [get_bd_pins xlconcat_tx/In$x]
		create_bd_port -dir I Req$x
		connect_bd_net -net Req$x [get_bd_ports Req$x] [get_bd_pins xlconcat_Req/In$x]
		
		startgroup
		create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx$x
		endgroup
		set start [expr $x * $::DWidth]
		set end [expr $start + 127 ]
		startgroup
		set_property -dict [list CONFIG.DIN_WIDTH $busw CONFIG.DIN_TO $start CONFIG.DIN_FROM $end CONFIG.DOUT_WIDTH $::DWidth] [get_bd_cells xlslice_rx$x]
		endgroup
		create_bd_port -dir O -from 127 -to 0 rx$x
		connect_bd_net -net rx$x [get_bd_ports rx$x] [get_bd_pins xlslice_rx$x/Dout]
		connect_bd_net -net rx [get_bd_pins xlslice_rx$x/Din] [get_bd_pins rbusData/rx]
		
		startgroup
		create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_tx_sop$x
		endgroup
		set start $x
		set end $x
		startgroup
		set_property -dict [list CONFIG.DIN_WIDTH $Num CONFIG.DIN_TO $start CONFIG.DIN_FROM $end CONFIG.DOUT_WIDTH {1}] [get_bd_cells xlslice_tx_sop$x]
		endgroup
		create_bd_port -dir O tx_sop$x
		connect_bd_net -net tx_sop$x [get_bd_ports tx_sop$x] [get_bd_pins xlslice_tx_sop$x/Dout]
		connect_bd_net -net tx_sop [get_bd_pins xlslice_tx_sop$x/Din] [get_bd_pins rbusData/tx_sop]
		
		startgroup
		create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx_sop$x
		endgroup
		set start $x
		set end $x
		startgroup
		set_property -dict [list CONFIG.DIN_WIDTH $Num CONFIG.DIN_TO $start CONFIG.DIN_FROM $end CONFIG.DOUT_WIDTH {1}] [get_bd_cells xlslice_rx_sop$x]
		endgroup
		create_bd_port -dir O rx_sop$x
		connect_bd_net -net rx_sop$x [get_bd_ports rx_sop$x] [get_bd_pins xlslice_rx_sop$x/Dout]
		connect_bd_net -net rx_sop [get_bd_pins xlslice_rx_sop$x/Din] [get_bd_pins rbusData/rx_sop]
		
		#group_bd_cells $ipname [get_bd_cells xlslice_rx_sop$x] [get_bd_cells xlslice_rx$x] [get_bd_cells xlslice_tx_sop$x] 

	}
	# group_bd_cells $ipname [get_bd_cells /*] 
	save_bd_design
	set fn ../proj/$ipname/$ipname
	append fn .srcs/sources_1/bd/ $ipname / $ipname .bd
	
	generate_target all [get_files  $fn]
	save_bd_design
	
	ipx::package_project -module $ipname
	ipx::add_user_parameter RxNum [ipx::current_core]
	set_property value_resolve_type user [ipx::get_user_parameters RxNum -of_objects [ipx::current_core]]
	set_property display_name Rxnum [ipx::get_user_parameters RxNum -of_objects [ipx::current_core]]
	set_property value 1 [ipx::get_user_parameters RxNum -of_objects [ipx::current_core]]
	set_property value_format long [ipx::get_user_parameters RxNum -of_objects [ipx::current_core]]
	
	for {set x 0} {$x<$Num} {incr x} {
		ipx::add_bus_interface rx$x [ipx::current_core]
		set_property abstraction_type_vlnv xilinx.com:user:rbRx_rtl:1.0 [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]
		set_property bus_type_vlnv xilinx.com:user:rbRx:1.0 [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]
		set_property interface_mode master [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]
		set_property enablement_dependency {$RxNum>0} [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]
		ipx::add_port_map sop [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]
		set_property physical_name rx_sop$x [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]]
		ipx::add_port_map rx [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]
		set_property physical_name rx$x [ipx::get_port_maps rx -of_objects [ipx::get_bus_interfaces rx$x -of_objects [ipx::current_core]]]
	}
	
	ipx::save_core [ipx::current_core]
	
	close_project
#	file delete -force $dir
}

proc buildHDbus { Num } {
	append ipname rbus $Num
	append dir ../proj/ $ipname
	if [file exists $dir] {
		file delete -force $dir
	}
	create_project $ipname ../proj/$ipname -part xc7z030ffg676-1
	set_property target_language VHDL [current_project]
	set_property ip_repo_paths  ../lib [current_project]
	update_ip_catalog -rebuild
	file delete -force ../lib/xilinx.com_user_rbus_1.0
	update_ip_catalog -add_ip ../lib/xilinx.com_user_rbus_1.0.zip -repo_path ../lib
	create_bd_design $ipname
	
	create_bd_cell -type hier $ipname
	
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:user:rbus:1.0 $ipname/rbusData
	endgroup
	startgroup
	set_property -dict [list CONFIG.Bwidth $::DWidth CONFIG.Num $Num] [get_bd_cells $ipname/rbusData]
	endgroup
	create_bd_pin -dir I $ipname/sync
	connect_bd_net [get_bd_pins $ipname/sync] [get_bd_pins $ipname/rbusData/sync]
	create_bd_port -dir I sync
	connect_bd_net [get_bd_pins /rbus4/sync] [get_bd_ports sync]
	create_bd_pin -dir I $ipname/clk
	connect_bd_net [get_bd_pins $ipname/clk] [get_bd_pins $ipname/rbusData/clk]
	create_bd_port -dir I clk
	connect_bd_net [get_bd_pins /rbus4/clk] [get_bd_ports clk]
	create_bd_pin -dir I $ipname/rst
	connect_bd_net [get_bd_pins $ipname/rst] [get_bd_pins $ipname/rbusData/rst]
	create_bd_port -dir I rst
	connect_bd_net [get_bd_pins /rbus4/rst] [get_bd_ports rst]
	
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 $ipname/xlconcat_tx
	endgroup
	startgroup
	set_property -dict [list CONFIG.NUM_PORTS $Num] [get_bd_cells $ipname/xlconcat_tx]
	endgroup
	
	startgroup
	create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 $ipname/xlconcat_Req
	endgroup
	startgroup
	set_property -dict [list CONFIG.NUM_PORTS $Num] [get_bd_cells $ipname/xlconcat_Req]
	endgroup
	
	connect_bd_net [get_bd_pins $ipname/xlconcat_tx/dout] [get_bd_pins $ipname/rbusData/tx]
	connect_bd_net [get_bd_pins $ipname/xlconcat_Req/dout] [get_bd_pins $ipname/rbusData/Req]
	set busw [expr $Num * $::DWidth]
	for {set x 0} {$x<$Num} {incr x} {
		set config CONFIG.IN
		append config $x _WIDTH.VALUE_SRC 
		startgroup
		set_property -dict [list $config USER ] [get_bd_cells $ipname/xlconcat_tx]
		endgroup
		startgroup
		set_property -dict [list $config USER ] [get_bd_cells $ipname/xlconcat_Req]
		endgroup
		
		set config CONFIG.IN
		append config $x _WIDTH 
		startgroup
		set_property -dict [list $config $::DWidth] [get_bd_cells $ipname/xlconcat_tx]
		endgroup
		startgroup
		set_property -dict [list $config {1}] [get_bd_cells $ipname/xlconcat_Req]
		endgroup
		
		create_bd_pin -dir I -from 127 -to 0 $ipname/tx$x
		connect_bd_net -net tx$x [get_bd_pins $ipname/tx$x] [get_bd_pins $ipname/xlconcat_tx/In$x]
		create_bd_pin -dir I $ipname/Req$x
		connect_bd_net -net Req$x [get_bd_pins $ipname/Req$x] [get_bd_pins $ipname/xlconcat_Req/In$x]
		
		startgroup
		create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 $ipname/xlslice_rx$x
		endgroup
		set start [expr $x * $::DWidth]
		set end [expr $start + 127 ]
		startgroup
		set_property -dict [list CONFIG.DIN_WIDTH $busw CONFIG.DIN_TO $start CONFIG.DIN_FROM $end CONFIG.DOUT_WIDTH $::DWidth] [get_bd_cells $ipname/xlslice_rx$x]
		endgroup
		create_bd_pin -dir O -from 127 -to 0 $ipname/rx$x
		connect_bd_net -net rx$x [get_bd_pins $ipname/rx$x] [get_bd_pins $ipname/xlslice_rx$x/Dout]
		connect_bd_net -net rx [get_bd_pins $ipname/xlslice_rx$x/Din] [get_bd_pins $ipname/rbusData/rx]
		
		startgroup
		create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 $ipname/xlslice_tx_sop$x
		endgroup
		set start $x
		set end $x
		startgroup
		set_property -dict [list CONFIG.DIN_WIDTH $Num CONFIG.DIN_TO $start CONFIG.DIN_FROM $end CONFIG.DOUT_WIDTH {1}] [get_bd_cells $ipname/xlslice_tx_sop$x]
		endgroup
		create_bd_pin -dir O $ipname/tx_sop$x
		connect_bd_net -net tx_sop$x [get_bd_pins $ipname/tx_sop$x] [get_bd_pins $ipname/xlslice_tx_sop$x/Dout]
		connect_bd_net -net tx_sop [get_bd_pins $ipname/xlslice_tx_sop$x/Din] [get_bd_pins $ipname/rbusData/tx_sop]
		
		startgroup
		create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 $ipname/xlslice_rx_sop$x
		endgroup
		set start $x
		set end $x
		startgroup
		set_property -dict [list CONFIG.DIN_WIDTH $Num CONFIG.DIN_TO $start CONFIG.DIN_FROM $end CONFIG.DOUT_WIDTH {1}] [get_bd_cells $ipname/xlslice_rx_sop$x]
		endgroup
		create_bd_pin -dir O $ipname/rx_sop$x
		connect_bd_net -net rx_sop$x [get_bd_pins $ipname/rx_sop$x] [get_bd_pins $ipname/xlslice_rx_sop$x/Dout]
		connect_bd_net -net rx_sop [get_bd_pins $ipname/xlslice_rx_sop$x/Din] [get_bd_pins $ipname/rbusData/rx_sop]
		
	}
	save_bd_design
	close_project
}

buildDbus 3

