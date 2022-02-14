module FirstRowMultiplier (
    //declare input and output ports
    input  [1:0] min,
    input  [1:0] qin,
    input        cin,
    output       m,
    output [1:0] q,
    output       cout,
    output       s
    );
 
    buf(m,min[0]);
    buf(q[1],qin[1]);
    buf(q[0],qin[0]);
    
    wire a,b;
    and(a,min[0],qin[1]);
    and(b,min[1],qin[0]);
    
    Adder1Bit MyAdder1Bit (
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(s)
);
enmodule
