This is a repo associated with our final project for Digital Systems Lab where we built an FPGA piano!    


https://github.com/sisler101/fpga-piano/assets/67922461/9e3ea6d3-c597-4382-84e0-83a9a76dbf7d


  
## Setup:  
The notes A, B, C, D, E, F, G correspond to switches SW1-SW7. The push buttons pb0, pb1, pb2, and pb3 are used to adjust the notes to be sharps, flats, and change octave.  
C → W13 → SW7  
D → W14 → SW6  
E → V15 → SW5  
F → W15 → SW4  
G → W17 → SW3  
A → W16 → SW2  
B → V16 → SW1  

Used this piano from [vibrationdata](https://www.vibrationdata.com/piano.htm) for key-frequency mapping:  
<img width="200" alt="Screenshot 2024-05-21 at 8 34 53 PM" src="https://github.com/sisler101/fpga-piano/assets/67922461/0d532d09-8ff9-4dfc-92e2-1b3ff4e94878">

### Frequency Math:
With a 100MHz input CLK and DIV equal to 32 in hex = 50 in dec:  
New clk = CLK/DIV * .5 = 100MHz/50 * .5 = 1MHz  

DIV = (CLK / FREQ) * 0.5 -> Solve for FREQ, with CLK = 1 MHz  

FREQ = (CLK / DIV) * 0.5  

Checking actual frequency vs calculated frequency for some notes to confirm our equation:   
(The divs were taken from note_gen.vhd where the notes are encoded using hex values which have been converted to dec values in the table below)  
|Note|Divider (dec)|Calculated Freq (Hz)|True Freq (Hz)|
|-|-|-|-|
|C4|1911|261.64|261.63|
|D4|1703|293.60|293.66|
|E4|1517|329.60|329.63|
|F4|1432|349.16|349.23|
|G4|1275|392.16|392.00|
|G4#|1204|415.28|415.30|
|A4|1136|440.14|440.00|
|A4#|1073|465.98|466.16|
|B4|1012|494.07|493.88|

## Testing:
We first edited the test bench to play some notes and produced waveforms to confirm the piano was functional.  
### Test Bench:

```
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
   
-- System Reset
pb_in(0) <= '0';
pb_in(1) <= '0';
pb_in(2) <= '0';
pb_in(3) <= '0';

switch_in(0) <= '0';
switch_in(1) <= '0';
switch_in(2) <= '0';
switch_in(3) <= '0';
switch_in(4) <= '0';
switch_in(5) <= '0';
switch_in(6) <= '0';
switch_in(7) <= '0';

-- Playing the note C
-- wait for 800 ps;

switch_in(7) <= '1';
pb_in(0) <= '1';
wait for 800 ps;
switch_in(7) <= '0';
pb_in(0) <= '1';

-- Playing the notes DEF
        -- wait for 800 ps;

        switch_in(6) <= '1';
        pb_in(0) <= '1';
        wait for 800 ps;
        switch_in(6) <= '0';
        pb_in(0) <= '1';
       
        switch_in(5) <= '1';
        pb_in(0) <= '1';
        wait for 800 ps;
        switch_in(5) <= '0';
        pb_in(0) <= '1';
       
        switch_in(4) <= '1';
        pb_in(0) <= '1';
        wait for 800 ps;
        switch_in(4) <= '0';
        pb_in(0) <= '1';
   END PROCESS;
-- *** End Test Bench - User Defined Section ***
```
### Waveforms:
<img width="1299" alt="Screenshot 2024-05-21 at 9 13 05 PM" src="https://github.com/sisler101/fpga-piano/assets/67922461/7cabbb63-a8a7-4cff-97af-355c5d277c2a">  
As seen above, switches 7, 6, 5, and 4 turn on and then off, playing notes C, D, E, and then F.  

## Happy Birthday!  
After uploading to the FPGA and confirming the notes play as intended, we modified our design to play happy birthday.  
  
### piano.vhd functions as follows:  
We first created an array of the sequence of notes we want to play for Happy Birthday. We then began our user interface section by assigning note_in to be note_next so that the next note is ready to be played. All notes play for the same duration of time which is 1s.  
  
If the reset button is pressed, RST will be equal to one and then we set note_next to 0, count to 0, and note_index to 0. 
  
Otherwise, if there is a rising edge of the clock, we first check if switch one is on. If it is, we increment the counter.  
  
The next note will only be assigned when the clock has had more than 50000000 cycles. This way there is enough time for us to hear the note being played.  
  
Inside the if statement, we index into the array of notes and set note_next to the next note in the array, we reset count to 0, and then increment the index (mod 29 so the song will loop).
















