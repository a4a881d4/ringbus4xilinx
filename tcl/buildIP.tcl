set ver_major 1
set ver_minor 0

proc EPMemInInterface {} {

	ipx::add_bus_interface rx [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:rbRx_rtl:1.0 [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:rbRx:1.0 [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	ipx::add_port_map sop [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property physical_name rx_sop [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]]
	ipx::add_port_map rx [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property physical_name rx [ipx::get_port_maps rx -of_objects [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]]
	
	ipx::infer_bus_interface rst xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	
	ipx::infer_bus_interfaces xilinx.com:interface:bram_rtl:1.0 [ipx::current_core]
	ipx::remove_port_map ADDR [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	ipx::remove_port_map CLK [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	ipx::remove_port_map RST [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	ipx::add_port_map DIN [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	set_property physical_name D [ipx::get_port_maps DIN -of_objects [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]]
	ipx::add_port_map WE [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	set_property physical_name wen [ipx::get_port_maps WE -of_objects [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]]
	ipx::add_port_map ADDR [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]
	set_property physical_name Addr [ipx::get_port_maps ADDR -of_objects [ipx::get_bus_interfaces interface_bram -of_objects [ipx::current_core]]]
}

proc rbusInterface {} {}

proc EPMemOutInterface {} {

	ipx::add_bus_interface DMABus [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:localDMABus_rtl:1.0 [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:localDMABus:1.0 [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	ipx::add_port_map header [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name header [ipx::get_port_maps header -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	ipx::add_port_map laddr [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name laddr [ipx::get_port_maps laddr -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	ipx::add_port_map Req [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name Req_in [ipx::get_port_maps Req -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	ipx::add_port_map busy [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name busy [ipx::get_port_maps busy -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	
	ipx::infer_bus_interface rst xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
	
	ipx::add_bus_interface ram [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:interface:bram_rtl:1.0 [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:interface:bram:1.0 [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]
	ipx::add_port_map EN [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]
	set_property physical_name mren [ipx::get_port_maps EN -of_objects [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]]
	ipx::add_port_map DOUT [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]
	set_property physical_name mD [ipx::get_port_maps DOUT -of_objects [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]]
	ipx::add_port_map ADDR [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]
	set_property physical_name mAddr [ipx::get_port_maps ADDR -of_objects [ipx::get_bus_interfaces ram -of_objects [ipx::current_core]]]
	
	ipx::add_bus_interface tx [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:rbTx_rtl:1.0 [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:rbTx:1.0 [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	ipx::add_port_map tx [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name tx [ipx::get_port_maps tx -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	ipx::add_port_map sop [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name tx_sop [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	ipx::add_port_map Req [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name Req [ipx::get_port_maps Req -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]

}

proc DMANPInterface {} {

	ipx::add_bus_interface DMABus [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:localDMABus_rtl:1.0 [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:localDMABus:1.0 [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	ipx::add_port_map header [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name header [ipx::get_port_maps header -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	ipx::add_port_map laddr [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name laddr [ipx::get_port_maps laddr -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	ipx::add_port_map Req [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name Req [ipx::get_port_maps Req -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]
	ipx::add_port_map busy [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]
	set_property physical_name busy [ipx::get_port_maps busy -of_objects [ipx::get_bus_interfaces DMABus -of_objects [ipx::current_core]]]

	ipx::add_bus_interface localCPUBus [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:localCPUBus_rtl:1.0 [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:localCPUBus:1.0 [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	ipx::add_port_map Din [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name Din [ipx::get_port_maps Din -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map Dout [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name Dout [ipx::get_port_maps Dout -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map rd [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name rd [ipx::get_port_maps rd -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map wr [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name wr [ipx::get_port_maps wr -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map addr [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name addr [ipx::get_port_maps addr -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]

}

proc CMasterInterface {} {

	ipx::add_bus_interface tx [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:rbTx_rtl:1.0 [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:rbTx:1.0 [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	ipx::add_port_map tx [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name tx [ipx::get_port_maps tx -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	ipx::add_port_map sop [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name tx_sop [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	ipx::add_port_map Req [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name Req [ipx::get_port_maps Req -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	
	ipx::add_bus_interface rx [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:rbRx_rtl:1.0 [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:rbRx:1.0 [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	ipx::add_port_map sop [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property physical_name rx_sop [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]]
	ipx::add_port_map rx [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property physical_name rx [ipx::get_port_maps rx -of_objects [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]]
	
	ipx::add_bus_interface localCPUBus [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:localCPUBus_rtl:1.0 [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:localCPUBus:1.0 [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	ipx::add_port_map Din [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name Din [ipx::get_port_maps Din -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map Dout [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name Dout [ipx::get_port_maps Dout -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map rd [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name rd [ipx::get_port_maps rd -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map wr [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name wr [ipx::get_port_maps wr -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]
	ipx::add_port_map addr [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]
	set_property physical_name addr [ipx::get_port_maps addr -of_objects [ipx::get_bus_interfaces localCPUBus -of_objects [ipx::current_core]]]

}

proc CSlaveInterface {} {

	ipx::infer_bus_interface rst xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]

	ipx::add_bus_interface tx [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:rbTx_rtl:1.0 [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:rbTx:1.0 [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	ipx::add_port_map tx [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name tx [ipx::get_port_maps tx -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	ipx::add_port_map sop [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name tx_sop [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	ipx::add_port_map Req [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]
	set_property physical_name Req [ipx::get_port_maps Req -of_objects [ipx::get_bus_interfaces tx -of_objects [ipx::current_core]]]
	
	ipx::add_bus_interface rx [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:rbRx_rtl:1.0 [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:rbRx:1.0 [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property interface_mode slave [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	ipx::add_port_map sop [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property physical_name rx_sop [ipx::get_port_maps sop -of_objects [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]]
	ipx::add_port_map rx [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]
	set_property physical_name rx [ipx::get_port_maps rx -of_objects [ipx::get_bus_interfaces rx -of_objects [ipx::current_core]]]
	
	ipx::add_bus_interface localBus [ipx::current_core]
	set_property abstraction_type_vlnv xilinx.com:user:localCPUBus_rtl:1.0 [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property bus_type_vlnv xilinx.com:user:localCPUBus:1.0 [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property interface_mode master [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	ipx::add_port_map Din [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property physical_name Din [ipx::get_port_maps Din -of_objects [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]]
	ipx::add_port_map Dout [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property physical_name Dout [ipx::get_port_maps Dout -of_objects [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]]
	ipx::add_port_map rd [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property physical_name rd [ipx::get_port_maps rd -of_objects [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]]
	ipx::add_port_map wr [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property physical_name wr [ipx::get_port_maps wr -of_objects [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]]
	ipx::add_port_map addr [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]
	set_property physical_name addr [ipx::get_port_maps addr -of_objects [ipx::get_bus_interfaces localBus -of_objects [ipx::current_core]]]

}

proc dummySrcInterface {} {

	ipx::infer_bus_interface rst xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]

}

proc buildip { top } {
	set dir ../proj/$top
	if [file exists $dir] {
		file delete -force $dir
	}
	create_project $top ../proj/$top -part xc7z030ffg676-1
	set_property target_language VHDL [current_project]
	set_property ip_repo_paths  ../lib [current_project]
	update_ip_catalog -rebuild
	add_files ../src
	import_files -force
	update_compile_order -fileset sources_1
	set_property top $top [current_fileset]
	update_compile_order -fileset sources_1
	append ipdir ../proj / $top / $top .srcs/sources_1/imports
	put $ipdir
	ipx::package_project -root_dir $ipdir
	set_property library user [ipx::current_core]
	set_property taxonomy /UserIP [ipx::current_core]
	set_property vendor_display_name a4a881d4 [ipx::current_core]
	set_property company_url http://github.com/a4a881d4/ringbus4xilinx [ipx::current_core]
	set_property core_revision 1 [ipx::current_core]
	${top}Interface 
	ipx::create_xgui_files [ipx::current_core]
	ipx::update_checksums [ipx::current_core]
	ipx::save_core [ipx::current_core]
	append fn ../lib/xilinx.com_user_ $top _ $::ver_major . $::ver_minor .zip
	put $fn
	ipx::archive_core $fn [ipx::current_core]
	close_project
	#file delete -force $dir
}

file mkdir ../lib
buildip rbus
buildip EPMemOut
buildip EPMemIn
buildip DMANP
buildip CMaster
buildip CSlave
buildip dummySrc

