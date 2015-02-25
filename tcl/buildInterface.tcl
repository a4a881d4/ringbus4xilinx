proc buildInterface { interface ports } {

	create_project Interface_$interface -in_memory -part xc7z030ffg676-1
	set_property target_language VHDL [current_project]
	set_property ip_repo_paths  ../lib [current_project]
	ipx::create_abstraction_definition xilinx.com user ${interface}_rtl 1.0
	ipx::create_bus_definition xilinx.com user $interface 1.0
	set_property xml_file_name ../lib/${interface}_rtl.xml [ipx::current_busabs]
	set_property xml_file_name ../lib/${interface}.xml [ipx::current_busdef]
	set_property bus_type_vlnv xilinx.com:user:${interface}:1.0 [ipx::current_busabs]
	set_property display_name ${interface} [ipx::current_busdef]
	set_property display_name ${interface} [ipx::current_busabs]
	foreach portset $ports {
		
		array set port $portset
		#put [ array get port ]
		set name $port(name)
		#put $name
		
		ipx::add_bus_abstraction_port $name [ipx::current_busabs]
		set_property master_direction $port(master_direction) [ipx::get_bus_abstraction_ports $name -of_objects [ipx::current_busabs]]
		set_property slave_direction $port(slave_direction) [ipx::get_bus_abstraction_ports $name -of_objects [ipx::current_busabs]]
		set_property master_width $port(width) [ipx::get_bus_abstraction_ports $name -of_objects [ipx::current_busabs]]
		set_property slave_width $port(width) [ipx::get_bus_abstraction_ports $name -of_objects [ipx::current_busabs]]
	
	}
	ipx::save_abstraction_definition [ipx::current_busabs]
	ipx::save_bus_definition [ipx::current_busdef]
	
	close_project
	
}

set rbTx {
	{
		name tx
		master_direction out
		slave_direction in
		width -1
	}
	{
		name Req
		master_direction out
		slave_direction in
		width 1
	}
	{
		name sop
		master_direction in
		slave_direction out
		width 1
	}
}

buildInterface rbTx $rbTx

set rbRx {
	{
		name rx
		master_direction in 
		slave_direction out
		width -1
	}
	{
		name sop
		master_direction in
		slave_direction out
		width 1
	}
}

buildInterface rbRx $rbRx

#CS : in std_logic;
#addr : in std_logic_vector(3 downto 0);
#Din : in STD_LOGIC_VECTOR(7 downto 0);
#Dout : out STD_LOGIC_VECTOR(7 downto 0);
#cpuClk : in std_logic;
#wr : in std_logic;
#rd : in std_logic


set localCPUBus {
	{
		name addr
		master_direction out
		slave_direction in
		width -1
	}
	{
		name Din
		master_direction out
		slave_direction in
		width -1
	}
	{
		name Dout
		master_direction in
		slave_direction out
		width -1
	}
	{
		name wr
		master_direction out
		slave_direction in
		width 1
	}
	{
		name rd
		master_direction out
		slave_direction in
		width 1
	}
}

buildInterface localCPUBus $localCPUBus

#header: out std_logic_vector(Bwidth-1 downto 0) := (others=>'0');
#Req : out std_logic;
#laddr : out std_logic_vector(SAwidth-1 downto 0) := (others=>'0');
		
set localDMABus {
	{
		name header
		master_direction out
		slave_direction in
		width -1
	}
	{
		name laddr
		master_direction out
		slave_direction in
		width -1
	}
	{
		name Req
		master_direction out
		slave_direction in
		width 1
	}
	{
		name busy
		master_direction in
		slave_direction out
		width 1
	}
}

buildInterface localDMABus $localDMABus
