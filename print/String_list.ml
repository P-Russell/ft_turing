let rec s_l list_ =
  match list_ with
  | head::[]   -> print_string head
  | []         -> print_char '\n'
  | head::tail -> print_string head; print_string ", "; s_l tail