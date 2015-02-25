
################################################################
# This is a generated script based on design: rdbus3
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source rdbus3_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z030ffg676-1


# CHANGE DESIGN NAME HERE
set design_name rdbus3

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Req0 [ create_bd_port -dir I Req0 ]
  set Req1 [ create_bd_port -dir I Req1 ]
  set Req2 [ create_bd_port -dir I Req2 ]
  set clk [ create_bd_port -dir I clk ]
  set rst [ create_bd_port -dir I rst ]
  set rx0 [ create_bd_port -dir O -from 127 -to 0 rx0 ]
  set rx1 [ create_bd_port -dir O -from 127 -to 0 rx1 ]
  set rx2 [ create_bd_port -dir O -from 127 -to 0 rx2 ]
  set rx_sop0 [ create_bd_port -dir O -from 0 -to 0 rx_sop0 ]
  set rx_sop1 [ create_bd_port -dir O -from 0 -to 0 rx_sop1 ]
  set rx_sop2 [ create_bd_port -dir O -from 0 -to 0 rx_sop2 ]
  set sync [ create_bd_port -dir I sync ]
  set tx0 [ create_bd_port -dir I -from 127 -to 0 tx0 ]
  set tx1 [ create_bd_port -dir I -from 127 -to 0 tx1 ]
  set tx2 [ create_bd_port -dir I -from 127 -to 0 tx2 ]
  set tx_sop0 [ create_bd_port -dir O -from 0 -to 0 tx_sop0 ]
  set tx_sop1 [ create_bd_port -dir O -from 0 -to 0 tx_sop1 ]
  set tx_sop2 [ create_bd_port -dir O -from 0 -to 0 tx_sop2 ]

  # Create instance: rbusData, and set properties
  set rbusData [ create_bd_cell -type ip -vlnv xilinx.com:user:rbus:1.0 rbusData ]
  set_property -dict [ list CONFIG.Bwidth {128} CONFIG.Num {3}  ] $rbusData

  # Create instance: xlconcat_Req, and set properties
  set xlconcat_Req [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_Req ]
  set_property -dict [ list CONFIG.IN0_WIDTH {1} CONFIG.IN1_WIDTH {1} CONFIG.IN2_WIDTH {1} CONFIG.NUM_PORTS {3}  ] $xlconcat_Req

  # Create instance: xlconcat_tx, and set properties
  set xlconcat_tx [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_tx ]
  set_property -dict [ list CONFIG.IN0_WIDTH {128} CONFIG.IN1_WIDTH {128} CONFIG.IN2_WIDTH {128} CONFIG.NUM_PORTS {3}  ] $xlconcat_tx

  # Create instance: xlslice_rx0, and set properties
  set xlslice_rx0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx0 ]
  set_property -dict [ list CONFIG.DIN_FROM {127} CONFIG.DIN_TO {0} CONFIG.DIN_WIDTH {384} CONFIG.DOUT_WIDTH {128}  ] $xlslice_rx0

  # Create instance: xlslice_rx1, and set properties
  set xlslice_rx1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx1 ]
  set_property -dict [ list CONFIG.DIN_FROM {255} CONFIG.DIN_TO {128} CONFIG.DIN_WIDTH {384} CONFIG.DOUT_WIDTH {128}  ] $xlslice_rx1

  # Create instance: xlslice_rx2, and set properties
  set xlslice_rx2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx2 ]
  set_property -dict [ list CONFIG.DIN_FROM {383} CONFIG.DIN_TO {256} CONFIG.DIN_WIDTH {384} CONFIG.DOUT_WIDTH {128}  ] $xlslice_rx2

  # Create instance: xlslice_rx_sop0, and set properties
  set xlslice_rx_sop0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx_sop0 ]
  set_property -dict [ list CONFIG.DIN_FROM {0} CONFIG.DIN_TO {0} CONFIG.DIN_WIDTH {3} CONFIG.DOUT_WIDTH {1}  ] $xlslice_rx_sop0

  # Create instance: xlslice_rx_sop1, and set properties
  set xlslice_rx_sop1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx_sop1 ]
  set_property -dict [ list CONFIG.DIN_FROM {1} CONFIG.DIN_TO {1} CONFIG.DIN_WIDTH {3} CONFIG.DOUT_WIDTH {1}  ] $xlslice_rx_sop1

  # Create instance: xlslice_rx_sop2, and set properties
  set xlslice_rx_sop2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_rx_sop2 ]
  set_property -dict [ list CONFIG.DIN_FROM {2} CONFIG.DIN_TO {2} CONFIG.DIN_WIDTH {3} CONFIG.DOUT_WIDTH {1}  ] $xlslice_rx_sop2

  # Create instance: xlslice_tx_sop0, and set properties
  set xlslice_tx_sop0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_tx_sop0 ]
  set_property -dict [ list CONFIG.DIN_FROM {0} CONFIG.DIN_TO {0} CONFIG.DIN_WIDTH {3} CONFIG.DOUT_WIDTH {1}  ] $xlslice_tx_sop0

  # Create instance: xlslice_tx_sop1, and set properties
  set xlslice_tx_sop1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_tx_sop1 ]
  set_property -dict [ list CONFIG.DIN_FROM {1} CONFIG.DIN_TO {1} CONFIG.DIN_WIDTH {3} CONFIG.DOUT_WIDTH {1}  ] $xlslice_tx_sop1

  # Create instance: xlslice_tx_sop2, and set properties
  set xlslice_tx_sop2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_tx_sop2 ]
  set_property -dict [ list CONFIG.DIN_FROM {2} CONFIG.DIN_TO {2} CONFIG.DIN_WIDTH {3} CONFIG.DOUT_WIDTH {1}  ] $xlslice_tx_sop2

  # Create port connections
  connect_bd_net -net Req [get_bd_pins rbusData/Req] [get_bd_pins xlconcat_Req/dout]
  connect_bd_net -net Req0 [get_bd_ports Req0] [get_bd_pins xlconcat_Req/In0]
  connect_bd_net -net Req1 [get_bd_ports Req1] [get_bd_pins xlconcat_Req/In1]
  connect_bd_net -net Req2 [get_bd_ports Req2] [get_bd_pins xlconcat_Req/In2]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins rbusData/clk]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins rbusData/rst]
  connect_bd_net -net rx [get_bd_pins rbusData/rx] [get_bd_pins xlslice_rx0/Din] [get_bd_pins xlslice_rx1/Din] [get_bd_pins xlslice_rx2/Din]
  connect_bd_net -net rx0 [get_bd_ports rx0] [get_bd_pins xlslice_rx0/Dout]
  connect_bd_net -net rx1 [get_bd_ports rx1] [get_bd_pins xlslice_rx1/Dout]
  connect_bd_net -net rx2 [get_bd_ports rx2] [get_bd_pins xlslice_rx2/Dout]
  connect_bd_net -net rx_sop [get_bd_pins rbusData/rx_sop] [get_bd_pins xlslice_rx_sop0/Din] [get_bd_pins xlslice_rx_sop1/Din] [get_bd_pins xlslice_rx_sop2/Din]
  connect_bd_net -net rx_sop0 [get_bd_ports rx_sop0] [get_bd_pins xlslice_rx_sop0/Dout]
  connect_bd_net -net rx_sop1 [get_bd_ports rx_sop1] [get_bd_pins xlslice_rx_sop1/Dout]
  connect_bd_net -net rx_sop2 [get_bd_ports rx_sop2] [get_bd_pins xlslice_rx_sop2/Dout]
  connect_bd_net -net sync_1 [get_bd_ports sync] [get_bd_pins rbusData/sync]
  connect_bd_net -net tx [get_bd_pins rbusData/tx] [get_bd_pins xlconcat_tx/dout]
  connect_bd_net -net tx0 [get_bd_ports tx0] [get_bd_pins xlconcat_tx/In0]
  connect_bd_net -net tx1 [get_bd_ports tx1] [get_bd_pins xlconcat_tx/In1]
  connect_bd_net -net tx2 [get_bd_ports tx2] [get_bd_pins xlconcat_tx/In2]
  connect_bd_net -net tx_sop [get_bd_pins rbusData/tx_sop] [get_bd_pins xlslice_tx_sop0/Din] [get_bd_pins xlslice_tx_sop1/Din] [get_bd_pins xlslice_tx_sop2/Din]
  connect_bd_net -net tx_sop0 [get_bd_ports tx_sop0] [get_bd_pins xlslice_tx_sop0/Dout]
  connect_bd_net -net tx_sop1 [get_bd_ports tx_sop1] [get_bd_pins xlslice_tx_sop1/Dout]
  connect_bd_net -net tx_sop2 [get_bd_ports tx_sop2] [get_bd_pins xlslice_tx_sop2/Dout]

  # Create address segments
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


