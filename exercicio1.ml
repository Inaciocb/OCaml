open Printf
let rec CuscoGuaipeca x = if x = 1.0 then true else if x<1.0 then false else CuscoGuaipeca (x/.2.0);;
CuscoGuaipeca 4
Printf.printf  "%b\n" (Div2 4.0);;
