// W : 출발 신호음

// Hid connect
Hid hi;
HidMsg msg;
2 => int device;
if (! hi.openKeyboard(device)) me.exit();
<<< "keyboard '" + hi.name() + "' ready", "" >>>;

// 출발 신호음
SndBuf start => dac;

// sound file 경로
me.dir() + "res/start_long.wav" => start.read;

// pos 맨 뒤로 이동
start.samples() => start.pos;


// 사용자 키 입력
while (true) {
    hi => now;
    while (hi.recv(msg)) {
        if (msg.isButtonDown()) {
            <<< "Button Down:", msg.ascii >>>;
            // W : 87
            if (msg.ascii == 87) 0 => start.pos;
            // Q : 81
            
            // E : 69
            
            // R : 82
            
            // T : 84
            
            // A : 65
            
            // S : 83
            
            // D : 68
            
            // Z : 90
            
            // X : 88
            
            // C : 67
            
            // V : 86
            
        }
        else {
            <<< "Button Up:", msg.ascii >>>;
        }
    }
}