4-Bit Johnson Counter Using Verilog HDL

📌 Project Overview

A Johnson Counter is a type of shift register counter in which the inverted output of the last flip-flop is connected back to the input of the first flip-flop.

A 4-bit Johnson Counter produces 8 unique states.

The sequence is:

0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → 0000

This project implements a 4-bit Johnson Counter using Verilog HDL.

🎯 Objectives

- Understand the working principle of a Johnson Counter.
- Design a 4-bit Johnson Counter using Verilog HDL.
- Implement clock and reset functionality.
- Verify all 8 states using a testbench.
- Observe the counter sequence using waveform simulation.

⚙️ Specifications

Parameter| Value
Counter Type| Johnson Counter
Number of Bits| 4
Number of States| 8
Clock| Positive Edge
Reset| Active High
HDL| Verilog

🔌 Inputs

- "clk" – Clock signal
- "rst" – Reset signal

🔌 Output

- "q[3:0]" – 4-bit counter output

🧠 Working Principle

A Johnson Counter is also called a Twisted Ring Counter.

The inverted last bit is fed back to the first bit.

For a 4-bit counter:

q[3] → NOT → q[0]

The counter produces 8 states.

State Sequence

0000
1000
1100
1110
1111
0111
0011
0001
0000

After 8 clock cycles, the sequence repeats.

📊 State Table

Clock| Q3| Q2| Q1| Q0
Reset| 0| 0| 0| 0
1| 1| 0| 0| 0
2| 1| 1| 0| 0
3| 1| 1| 1| 0
4| 1| 1| 1| 1
5| 0| 1| 1| 1
6| 0| 0| 1| 1
7| 0| 0| 0| 1
8| 0| 0| 0| 0

📂 Project Files

README.md
johnson_counter.v
johnson_counter_tb.v
simulation/
    johnson_counter_waveform.png

"johnson_counter.v"

Contains the RTL design of the 4-bit Johnson Counter.

"johnson_counter_tb.v"

Contains the testbench used to verify the design.

"johnson_counter_waveform.png"

Contains the simulation waveform.

🧪 Simulation

The project can be simulated using:

- Icarus Verilog
- GTKWave
- ModelSim
- QuestaSim
- Vivado

Icarus Verilog Commands

Compile:

iverilog -o johnson_sim johnson_counter.v johnson_counter_tb.v

Run:

vvp johnson_sim

This generates:

johnson_counter.vcd

Open the waveform:

gtkwave johnson_counter.vcd

✅ Expected Result

The Johnson Counter should produce:

0000
1000
1100
1110
1111
0111
0011
0001
0000

After reaching "0000", the sequence repeats.

🌐 Applications

Johnson Counters are used in:

- Sequence generators
- Timing circuits
- Digital control systems
- Frequency division
- Counter circuits
- State machines
- Digital communication systems

🏁 Conclusion

A 4-bit Johnson Counter was successfully designed using Verilog HDL. The testbench verifies all 8 unique states, and the simulation confirms the correct Johnson Counter sequence.

Author

Bhargavi
