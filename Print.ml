let rec char_list list_ =
  match list_ with
    | head::[]   -> print_char head
    | []         -> ()
    | head::tail -> print_char head; print_string ", "; char_list tail

let rec string_list list_ =
  match list_ with
    | head::[]   -> print_string head
    | []         -> print_char '\n'
    | head::tail -> print_string head; print_string ", "; string_list tail

let print_help () =
  print_endline "usage:                ft_turing [-h][-O] jsonfile input

positional arguments: jsonfile   -> json description of the machine
                      input      -> input of the machine

optional arguments:   -h, --help -> show this help message and exit"
