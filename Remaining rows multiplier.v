module RemainingRowsMultiplier (
    //declare input and output ports
    input     min,
    input     qin,
    input     cin,
    input     pp,
    output    m,
    output    q,
    output    cout,
    output    s    
);
  

    // Declare several single-bit wires that we can

    buf(m,min);
    buf(b,pp);
    buf(q,qin);

    wire a;    
    and(a,min,qin);

//instantiates 1-Bit full adder instances
Adder1Bit MyAdder1Bit (
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(s)
);

endmodule 
