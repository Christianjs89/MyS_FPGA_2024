
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.938 . Memory (MB): peak = 667.480 ; gain = 9.0822default:defaulth px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px� 
k
)Generating Script for core instance : %s 214*	chipscope2
dbg_hub2default:defaultZ16-329h px� 
�
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:3.02default:default2

dbg_hub_CV2default:defaultZ19-3806h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0652default:default2
1233.5162default:default2
0.0002default:defaultZ17-268h px� 
V
APhase 1 Generate And Synthesize Debug Cores | Checksum: fbc2d015
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:07 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 2 Retarget | Checksum: 2425e9a74
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:08 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
02default:defaultZ31-389h px� 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
H
3Phase 3 Constant propagation | Checksum: 190cd6483
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:08 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
82default:defaultZ31-389h px� 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px� 
9
$Phase 4 Sweep | Checksum: 217003ea9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:09 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
3892default:defaultZ31-389h px� 
r

Phase %s%s
101*constraints2
5 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
E
0Phase 5 BUFG optimization | Checksum: 217003ea9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:09 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2%
BUFG optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
|

Phase %s%s
101*constraints2
6 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
O
:Phase 6 Shift Register Optimization | Checksum: 217003ea9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:09 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
x

Phase %s%s
101*constraints2
7 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
K
6Phase 7 Post Processing Netlist | Checksum: 217003ea9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:10 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.011 . Memory (MB): peak = 1233.516 ; gain = 0.0002default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 217003ea9
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:00 ; elapsed = 00:03:10 . Memory (MB): peak = 1233.516 ; gain = 29.0512default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
J
5Ending Power Optimization Task | Checksum: 1add6fa64
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.051 . Memory (MB): peak = 1233.516 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:012default:default2
00:03:292default:default2
1233.5162default:default2
575.1172default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.3382default:default2
1233.5162default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.runs/impl_1/counter_system_wrapper_opt.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_drc -file counter_system_wrapper_drc_opted.rpt -pb counter_system_wrapper_drc_opted.pb -rpx counter_system_wrapper_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_drc -file counter_system_wrapper_drc_opted.rpt -pb counter_system_wrapper_drc_opted.pb -rpx counter_system_wrapper_drc_opted.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
�C:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.runs/impl_1/counter_system_wrapper_drc_opted.rpt�C:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.runs/impl_1/counter_system_wrapper_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 


End Record