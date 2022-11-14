MidiOut mout;
MidiMsg msg;
1 => int port; // 번호는 상황에 따라 달라서 확인 필요
if (!mout.open(port)) {
    <<< "Error: MIDI port did not open on port: ", port >>>;
    me.exit();
}

BPM bpm;
bpm.tempo(500.0);
bpm.qn => dur qn;

Piano_right piano_right;
piano_right.melody @=> int right_melody[][][];
piano_right.length @=> dur right_length[][];

Piano_left piano_left;
piano_left.melody @=> int left_melody[][][];
piano_left.length @=> dur left_length[][];



fun void sendOutMIDInote(int on, int note) {
    if (on == 0)
        128 => msg.data1; // 10000000 NoteOff
    else // on == 1
        144 => msg.data1; // 10010000 NoteOn
    note => msg.data2;
    45 => msg.data3;
    <<< msg.data1, msg.data2, msg.data3 >>>;
    mout.send(msg);
}

fun void play(dur length[][], int melody[][][]){
    for (0=>int i;i<length.size();i++){
        for (0=>int j;j<melody[i].size();j++){
            if (melody[i][j][0] >= 0) sendOutMIDInote(1, melody[i][j][0]);
            //else sendOutMIDInote(0, melody[i][j][0]);
            
            if (melody[i][j][1] >= 0) sendOutMIDInote(1, melody[i][j][1]);
            //else sendOutMIDInote(0, melody[i][j][1]);
            
            if (melody[i][j][2] >= 0) sendOutMIDInote(1, melody[i][j][2]);
            //else sendOutMIDInote(0, melody[i][j][2]);

            length[i][j] => now;
            
            sendOutMIDInote(0, melody[i][j][0]);
            sendOutMIDInote(0, melody[i][j][1]);
            sendOutMIDInote(0, melody[i][j][2]);

            0::second => now;
        }
    }
}

spork ~ play(right_length, right_melody);
spork ~ play(left_length, left_melody);

qn*4*20 => now;


