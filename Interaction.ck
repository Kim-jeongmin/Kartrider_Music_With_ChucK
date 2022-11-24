// Q : 81, 퀘스트 클리어음
// W : 87, 출발 신호음(long)
// E : 69, 출발 신호음(short)
// R : 82, 리셋            
// T : 84, 레벨업
// A : 65, 플래그 스테이지 goal
// S : 83, 플래그 스테이지 goal(다른 팀)
// D : 68, 한 바퀴 pass
// Z : 90, 마지막 랩
// X : 88, 마지막 1분
// C : 67, 점수 계산음
// V : 86, 박스 오픈음
// B : 66, 엔진음

// Hid connect
Hid hi;
HidMsg msg;
2 => int device;
if (! hi.openKeyboard(device)) me.exit();
<<< "keyboard '" + hi.name() + "' ready", "" >>>;

// 출발 신호음
SndBuf cal_score => dac;
SndBuf goal_fs_other => dac;
SndBuf goal_fs => dac;
SndBuf lastlap => dac;
SndBuf left_one_min => dac;
SndBuf levelup => dac;
SndBuf open_box => dac;
SndBuf pass_one_lap => dac;
SndBuf quest_clear => dac;
SndBuf reset => dac;
SndBuf start_long => dac;
SndBuf start_short => dac;
SndBuf engine => dac;

// sound file 경로
me.dir() + "res/calculate_score.wav" => cal_score.read;
me.dir() + "res/goal_flagstage_other_team.wav" => goal_fs_other.read;
me.dir() + "res/goal_flagstage.wav" => goal_fs.read;
me.dir() + "res/last_lap.wav" => lastlap.read;
me.dir() + "res/left_one_min.wav" => left_one_min.read;
me.dir() + "res/levelup.wav" => levelup.read;
me.dir() + "res/open_box.wav" => open_box.read;
me.dir() + "res/pass_one_lap.wav" => pass_one_lap.read;
me.dir() + "res/quest_clear.wav" => quest_clear.read;
me.dir() + "res/reset.wav" => reset.read;
me.dir() + "res/start_long.wav" => start_long.read;
me.dir() + "res/start_short.wav" => start_short.read;
me.dir() + "res/engine.wav" => engine.read;

// pos 맨 뒤로 이동
cal_score.samples() => cal_score.pos;
goal_fs_other.samples() => goal_fs_other.pos;
goal_fs.samples() => goal_fs.pos;
lastlap.samples() => lastlap.pos;
left_one_min.samples() => left_one_min.pos;
levelup.samples() => levelup.pos;
open_box.samples() => open_box.pos;
pass_one_lap.samples() => pass_one_lap.pos;
quest_clear.samples() => quest_clear.pos;
reset.samples() => reset.pos;
start_long.samples() => start_long.pos;
start_short.samples() => start_short.pos;
engine.samples() => engine.pos;

// 소리 크기 조정
0.2 => cal_score.gain => goal_fs_other.gain => goal_fs.gain => lastlap.gain => left_one_min.gain => levelup.gain => open_box.gain => pass_one_lap.gain => quest_clear.gain => reset.gain => start_long.gain => start_short.gain => engine.gain;

// 사용자 키 입력
while (true) {
    hi => now;
    while (hi.recv(msg)) {
        if (msg.isButtonDown()) {
            <<< "Button Down:", msg.ascii >>>;
            // Q : 81, 퀘스트 클리어음
            if (msg.ascii == 81) 0 => quest_clear.pos;
            // W : 87, 출발 신호음(long)
            else if (msg.ascii == 87) 0 => start_long.pos;
            // E : 69, 출발 신호음(short)
            else if (msg.ascii == 69) 0 => start_short.pos;
            // R : 82, 리셋
            else if (msg.ascii == 82) 0 => reset.pos;
            // T : 84, 레벨업
            else if (msg.ascii == 84) 0 => levelup.pos;
            // A : 65, 플래그 스테이지 goal
            else if (msg.ascii == 65) 0 => goal_fs.pos;
            // S : 83, 플래그 스테이지 goal(다른 팀)
            else if (msg.ascii == 83) 0 => goal_fs_other.pos;
            // D : 68, 한 바퀴 pass
            else if (msg.ascii == 68) 0 => pass_one_lap.pos;
            // Z : 90, 마지막 랩
            else if (msg.ascii == 90) 0 => lastlap.pos;
            // X : 88, 마지막 1분
            else if (msg.ascii == 88) 0 => left_one_min.pos;
            // C : 67, 점수 계산음
            else if (msg.ascii == 67) 0 => cal_score.pos;
            // V : 86, 박스 오픈음
            else if (msg.ascii == 86) 0 => open_box.pos;
            // B : 66, 엔진음
            else if (msg.ascii == 66) 0 => engine.pos;
        }
        else {
            <<< "Button Up:", msg.ascii >>>;
        }
    }
}