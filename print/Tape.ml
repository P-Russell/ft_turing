let p_t tape =
  print_string "(";
  List.iteri (fun i x ->
      if i = Type_tape.(tape.pos)
      then
        Printf.printf "\x1b[32m%c\x1b[0m" (x)
      else
        print_char x) Type_tape.(tape.letters);
  print_string ") ";
  P_transition.p_t tape