public class Piano_left{
    BPM bpm;
    bpm.tempo(500.0);
    bpm.stn => dur stn;
    bpm.en => dur en;
    bpm.qn => dur qn;
    bpm.hn => dur hn;

    [
        [[33,45,-1], [33,45,-1], [-1,-1,-1], [-1,-1,-1], [38,50,-1], [45,-1,-1], [50,-1,-1], [57,-1,-1], [54,57,62]],
        [[40,52,-1], [47,-1,-1], [52,-1,-1], [52,56,59], [-1,-1,-1], [56,-1,-1], [52,-1,-1], [40,-1,-1], [47,-1,-1]],
        [[33,45,-1], [33,45,-1], [-1,-1,-1], [-1,-1,-1], [38,45,50], [45,-1,-1], [50,-1,-1], [57,-1,-1], [54,57,62]],
        [[40,52,-1], [47,-1,-1], [52,-1,-1], [52,56,59], [-1,-1,-1], [56,-1,-1], [52,-1,-1], [47,-1,-1], [40,-1,-1]],

        [[42,54,-1], [49,-1,-1], [49,57,-1], [54,-1,-1], [40,52,-1], [47,-1,-1], [47,56,-1], [52,-1,-1]],
        [[39,51,-1], [47,-1,-1], [47,54,-1], [50,59,-1], [54,-1,-1]],
        [[38,45,50], [45,-1,-1], [50,-1,-1], [57,-1,-1], [50,-1,-1], [57,-1,-1], [62,-1,-1], [57,-1,-1], [54,-1,-1], [50,-1,-1], [45,-1,-1], [42,-1,-1], [38,-1,-1]],
        [[40,52,-1], [47,-1,-1], [52,56,-1], [47,-1,-1], [52,56,59], [47,-1,-1], [52,56,-1], [47,-1,-1]],

        [[33,45,-1], [52,-1,-1], [49,57,-1], [52,-1,-1], [40,52,-1], [47,-1,-1], [47,56,-1], [52,-1,-1]],
        [[42,54,-1], [49,-1,-1], [49,57,-1], [54,-1,-1], [37,49,-1], [43,-1,-1], [49,56,-1], [52,-1,-1]],
        [[38,50,-1], [45,-1,-1], [50,54,-1], [45,-1,-1], [33,45,-1], [45,-1,-1], [49,52,-1], [45,-1,-1]],
        [[38,50,-1], [45,-1,-1], [50,54,-1], [45,-1,-1], [40,52,-1], [47,-1,-1], [47,55,-1], [52,-1,-1]],

        [[37,45,-1], [52,-1,-1], [49,57,-1], [52,-1,-1], [40,52,-1], [47,-1,-1], [47,56,-1], [52,-1,-1]],
        [[42,54,-1], [49,-1,-1], [49,57,-1], [54,-1,-1], [40,49,-1], [44,-1,-1], [49,55,-1], [52,-1,-1]],
        [[38,50,-1], [45,-1,-1], [50,54,-1], [45,-1,-1], [33,45,-1], [45,-1,-1], [49,52,-1], [45,-1,-1]],
        [[38,50,-1], [45,-1,-1], [40,52,-1], [47,-1,-1], [33,45,-1], [52,-1,-1], [49,57,-1], [52,56,-1]],

        [[50,57,62], [57,-1,-1], [62,-1,-1], [66,-1,-1], [52,59,64], [59,-1,-1], [64,-1,-1], [68,-1,-1]],
        [[47,56,61], [56,-1,-1], [61,-1,-1], [64,-1,-1], [54,61,66], [61,-1,-1], [52,64,-1], [61,64,-1]]
    ] @=> int melody[][][];

    [
        [en, stn, stn, qn, en, stn, stn, en, en],
        [en, stn, en+stn, qn, stn, stn, stn, stn, en],
        [en, stn, stn, qn, en, stn, stn, en, en],
        [en, stn, en+stn, qn, stn, stn, stn, stn, en],

        [en, en, en, en, en, en, en, en],
        [en+stn, en+stn, qn, en, qn],
        [en+stn, stn, stn, stn, stn, stn, stn, stn, stn, stn, stn, stn, en],
        [en, en, en, en, en, en, en, en],

        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en],

        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en],

        [en, en, en, en, en, en, en, en],
        [en, en, en, en, en, en, en, en]


    ] @=> dur length[][];
}