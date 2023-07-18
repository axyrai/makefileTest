compile:
	vlib work;
	vlog -sv \
	+acc \
	+cover \
	+fcover \
	fullAdder.sv \
	fullAdder_tb.sv

simulate:
	vsim -vopt work.fullAdder_tb \
	-voptargs=+acc=npr \
	-assertdebug \
	-l fullAdder.log \
	-sva \
	-coverage \
	-c -do "log -r /*; add wave -r /*; coverage save -onexit -assert -directive -cvg -codeAll fullAdder_coverage.ucdb; run -all; exit" \
	-wlf fullAdder_waveform.wlf
