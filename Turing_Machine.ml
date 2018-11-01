type letter    = char
type state     = string
type direction = Right | Left

let name        = Resolving.name 
let alphabet    = Resolving.alphabet
let blank       = Resolving.blank
let states      = Resolving.states
let initial     = Resolving.initial
let finals      = Resolving.finals
let transitions = Resolving.transitions

let ac_to_str ac = 
  if ac = Resolving.Right then "RIGHT" else "LEFT"

let print_transitions () =
  let rec parse_trs rd_tr_name trs_lst =
      List.iter (fun x -> match x with
         | {Resolving.read=rd; Resolving.to_state=st; Resolving.write=wr; Resolving.action=ac} -> (
              Printf.printf "(%s, %c) -> (%s, %c, %s)\n"
                  (rd_tr_name) (rd) (st) (wr) (ac_to_str(ac));
          )
      ) trs_lst
  in
  List.iter (fun x -> parse_trs (fst x) (snd x)) transitions

let print_intro () =
  print_string "---~ Turing Machine ->";
  Printf.printf " %s ~---\n" (name);
  print_string "Alphabet : ( "; Print.char_list (alphabet); print_endline " )";
  Printf.printf "Blank    : ( %c )\n" (blank);
  print_string "States   : ( "; Print.str_list (states); print_endline " )";
  Printf.printf "Initial  : ( %s )\n" (initial);
  print_string "Finals   : ( "; Print.str_list (finals); print_endline " )";
  print_transitions ();
  print_endline "---~ Turing Outputs ~---"