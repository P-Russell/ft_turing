let g_p tape =
  let trs_lst = List.find (fun x -> (fst x) = Type_tape.(tape.trs)) Transition.t 
  in
  let trs = List.find (fun x -> x.Type_transition.read = Type_tape.(tape.lread)) (snd trs_lst) 
  in
  if trs.Type_transition.action = Type_transition.Right 
  then
    Type_tape.(tape.pos) + 1 
  else
    Type_tape.(tape.pos) - 1