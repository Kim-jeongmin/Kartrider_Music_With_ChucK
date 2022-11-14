public class BPM { // Beats Per Minute

    static dur stn, en, qn, hn;

    fun void tempo(float beat) { // beat in BPM
        60.0 / beat => float spb; // seconds per beat  
        spb::second => stn; // 16분음표
        stn * 2.0 => en; // 8분음표
        en * 2.0 => qn; // 4분음표
        qn * 2.0 => hn; // 2분음표
    }
}