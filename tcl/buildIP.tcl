set ver_major 1
set ver_minor 0

proc buildip { top } {
	set dir ../proj/$top
	if [file exists $dir] {
		file delete -force $dir
	}
	create_project $top ../proj/$top -part xc7z030ffg676-1
	set_property target_language VHDL [current_project]
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
	ipx::create_xgui_files [ipx::current_core]
	ipx::update_checksums [ipx::current_core]
	ipx::save_core [ipx::current_core]
	append fn ../lib/xilinx.com_user_ $top _ $::ver_major . $::ver_minor .zip
	put $fn
	ipx::archive_core $fn [ipx::current_core]
	close_project
	file delete -force $dir
}

file mkdir ../lib
buildip rbus
buildip EPMemOut
buildip EPMemIn
buildip DMANP
buildip CMaster
buildip CSlave
buildip dummySrc

