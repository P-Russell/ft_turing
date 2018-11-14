let g_n_t tape =
  try
    let trs_lst = List.find (fun x -> (fst x) = Type_tape.(tape.trs)) Transition.t 
    in
    let trs = List.find (fun x -> x.Type_transition.read = Type_tape.(tape.lread)) (snd trs_lst) 
    in
    trs.Type_transition.to_state
  with
    Not_found -> 
    (Printf.printf "\n\x1b[31mError: read %c in transition %s not found\x1b[0m\n" (Type_tape.(tape.lread)) (Type_tape.(tape.trs)); exit 1)