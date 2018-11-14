let i () =
  print_string  "---~ Turing Machine ->";
  Printf.printf " %s ~---\n" (Name.n);
  print_string  "Alphabet : ( "; Char_list.c_l (Alphabet.a); print_endline " )";
  Printf.printf "Blank    : ( %c )\n" (Blank.b);
  print_string  "States   : ( "; String_list.s_l (States.s); print_endline " )";
  Printf.printf "Initial  : ( %s )\n" (Initial.i);
  print_string  "Finals   : ( "; String_list.s_l (Finals.f); print_endline " )";
  P_transitions.p_t ();
  print_endline "---~ Turing Outputs ~---"