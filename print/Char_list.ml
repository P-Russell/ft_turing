let rec c_l list_ =
  match list_ with
  | head::[]   -> print_char head
  | []         -> ()
  | head::tail -> print_char head; print_string ", "; c_l tail