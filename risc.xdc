## ════════════════════════════════════════════════════════
## Boolean Board - XC7S50CSGA324-1  (Official pin verified)
## ════════════════════════════════════════════════════════

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

## ── Clock - 100 MHz ──────────────────────────────────────
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -add -name sys_clk -period 20.00 \
             -waveform {0 5} [get_ports clk]

## ── Reset Button - btn[0] ACTIVE-HIGH ✅ ─────────────────
##set_property -dict {PACKAGE_PIN J2 IOSTANDARD LVCMOS33} [get_ports rst]

### ── Slide Switches - sw[2:0] register select ─────────────
#set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {sw[0]}]
#set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]
#set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {sw[2]}]

### ── Halt LED - led[0] ────────────────────────────────────
#set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports halt_led]

### ════════════════════════════════════════════════════════
### display_box[7:0] - Anodes (active LOW)
###   [3:0] → Display 0 (reg_value)
###   [7:4] → Display 1 (instruction)
### ════════════════════════════════════════════════════════
#set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS33} [get_ports {display_box[0]}]  ;# D0 AN0
#set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports {display_box[1]}]  ;# D0 AN1
#set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {display_box[2]}]  ;# D0 AN2
#set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {display_box[3]}]  ;# D0 AN3
#set_property -dict {PACKAGE_PIN H3 IOSTANDARD LVCMOS33} [get_ports {display_box[4]}]  ;# D1 AN0
#set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports {display_box[5]}]  ;# D1 AN1
#set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {display_box[6]}]  ;# D1 AN2
#set_property -dict {PACKAGE_PIN E4 IOSTANDARD LVCMOS33} [get_ports {display_box[7]}]  ;# D1 AN3

### ════════════════════════════════════════════════════════
### seg0[6:0] - Display 0 Segments
### Official board: SEG[0]=a, SEG[1]=b, ..., SEG[6]=g
### Your port:      seg0[6]=a, seg0[5]=b, ..., seg0[0]=g
### So: seg0[6]→SEG[0] pin, seg0[5]→SEG[1] pin ... (crossed)
### ════════════════════════════════════════════════════════
#set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {seg0[6]}]  ;# SEG[0]=a
#set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {seg0[5]}]  ;# SEG[1]=b
#set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {seg0[4]}]  ;# SEG[2]=c
#set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {seg0[3]}]  ;# SEG[3]=d
#set_property -dict {PACKAGE_PIN A7 IOSTANDARD LVCMOS33} [get_ports {seg0[2]}]  ;# SEG[4]=e
#set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS33} [get_ports {seg0[1]}]  ;# SEG[5]=f
#set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports {seg0[0]}]  ;# SEG[6]=g
#;# A6 = SEG[7] decimal point - unconnected, not needed

### ════════════════════════════════════════════════════════
### seg1[6:0] - Display 1 Segments (same crossing logic)
### ════════════════════════════════════════════════════════
#set_property -dict {PACKAGE_PIN F4 IOSTANDARD LVCMOS33} [get_ports {seg1[6]}]  ;# SEG[0]=a
#set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports {seg1[5]}]  ;# SEG[1]=b
#set_property -dict {PACKAGE_PIN D2 IOSTANDARD LVCMOS33} [get_ports {seg1[4]}]  ;# SEG[2]=c
#set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports {seg1[3]}]  ;# SEG[3]=d
#set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports {seg1[2]}]  ;# SEG[4]=e
#set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports {seg1[1]}]  ;# SEG[5]=f
#set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports {seg1[0]}]  ;# SEG[6]=g
#;# C1 = SEG[7] decimal point - unconnected, not needed