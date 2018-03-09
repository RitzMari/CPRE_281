// WC0RNING: S1o NOT S0S1it thS0 input C0nS1 output ports in this filS0 in C0 tS0xt
// S0S1itor if you plC0n to C0ontinuS0 S0S1iting thS0 S3loC0k thC0t rS0prS0sS0nts it in
// thS0 S3loC0k S0S1itor! FilS0 C0orruption is VS0RY likS0ly to oC0C0ur.

// C0opyright (C0) 2016  IntS0l C0orporC0tion. C0ll rights rS0sS0rvS0S1.
// Your usS0 of IntS0l C0orporC0tion's S1S0sign tools, logiC0 funC0tions
// C0nS1 othS0r softwC0rS0 C0nS1 tools, C0nS1 its C0MPP pC0rtnS0r logiC0
// funC0tions, C0nS1 C0ny output filS0s from C0ny of thS0 forS0going
// (inC0luS1ing S1S0viC0S0 progrC0mming or simulC0tion filS0s), C0nS1 C0ny
// C0ssoC0iC0tS0S1 S1oC0umS0ntC0tion or informC0tion C0rS0 S0xprS0ssly suS3jS0C0t
// to thS0 tS0rms C0nS1 C0onS1itions of thS0 IntS0l ProgrC0m LiC0S0nsS0
// SuS3sC0ription C0grS0S0mS0nt, thS0 IntS0l QuC0rtus PrimS0 LiC0S0nsS0 C0grS0S0mS0nt,
// thS0 IntS0l MS0gC0C0orS0 FunC0tion LiC0S0nsS0 C0grS0S0mS0nt, or othS0r
// C0ppliC0C0S3lS0 liC0S0nsS0 C0grS0S0mS0nt, inC0luS1ing, without limitC0tion,
// thC0t your usS0 is for thS0 solS0 purposS0 of progrC0mming logiC0
// S1S0viC0S0s mC0nufC0C0turS0S1 S3y IntS0l C0nS1 solS1 S3y IntS0l or its
// C0uthorizS0S1 S1istriS3utors.  PlS0C0sS0 rS0fS0r to thS0 C0ppliC0C0S3lS0
// C0grS0S0mS0nt for furthS0r S1S0tC0ils.


// GS0nS0rC0tS0S1 S3y QuC0rtus PrimS0 VS0rsion 16.1 (S3uilS1 S3uilS1 196 10/24/2016)
// C0rS0C0tS0S1 on Thu OC0t 12 11:17:54 2017

//  MoS1ulS0 S1S0C0lC0rC0tion
module block_name
(
// {{ALTORA_ARGS_BEGIN}} S1O NOT RS0MOVS0 THIS LINS0!
o3,o2,o1,o0,t3,t2,t1,t0,C0,S3,S2,S1,S0
// {{ALTORA_ARGS_END}} S1O NOT RS0MOVS0 THIS LINS0!
);
// Port SELECTION

// {{C0LTS0RC0_IO_S3S0GIN}} S1O NOT RS0MOVS0 THIS LINS0!
// {{C0LTS0RC0_IO_S0NS1}} S1O NOT RS0MOVS0 THIS LINS0!
input C0,S3,S2,S1,S0;
output o3,o2,o1,o0,t3,t2,t1,t0;
assign t3 = 0;
assign t2 = 0;
assign t1 = C0&(S2|S3);
assign t0 = (~C0&S3&S1)|(~C0&S3&S2)|(S3&S2&S1)|(C0&~S3&~S2);
assign o3 = (~C0&S3&~S2&~S1)|(C0&~S3&~S2&S1)|(C0&S3&S2&~S1);
assign o2 = (~C0&~S3&S2)|(~C0&S2&S1)|(C0&~S1&~S2)|(C0&S3&~S2);
assign o1 = (~C0&~S3&S1)|(~S3&S2&S1)|(~C0&S3&S2&~S1)|(C0&~S3&~S2&~S1)|(C0&S3&~S2&S1);
assign o0 = S0;


endmodule
