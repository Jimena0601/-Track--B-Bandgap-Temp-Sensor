v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1180 -500 -1180 -480 {lab=0}
N -990 -500 -990 -480 {lab=0}
N -1180 -580 -1180 -560 {lab=VDD}
N -990 -590 -990 -560 {lab=vin}
C {vsource.sym} -990 -530 0 0 {name=V2 value="PULSE(1 2.3 20u 10n 10n 80u 160u)" savecurrent=false}
C {vsource.sym} -1180 -530 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} -1180 -480 0 0 {name=l4 lab=0}
C {gnd.sym} -990 -480 0 0 {name=l6 lab=0}
C {vdd.sym} -1180 -580 0 0 {name=l7 lab=VDD}
C {lab_wire.sym} -990 -580 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/code_shown.sym} -360 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -110 -660 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all


tran 1n 0.5m
plot v(out)
plot v(vin)

print @m.xm1.m0[vds]
print @m.xm1.m0[vdsat]
print @m.xm2.m0[vds]
print @m.xm2.m0[vdsat]
print @m.xm3.m0[vds]
print @m.xm3.m0[vdsat]
print @m.xm4.m0[vds]
print @m.xm4.m0[vdsat]
print @m.xm5.m0[vds]
print @m.xm5.m0[vdsat]
print i(R1)
write tb_1-bitDAC.raw
.endc
"}
C {1-bitDAC.sym} -600 -620 0 0 {name=x1}
