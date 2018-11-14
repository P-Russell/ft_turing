let g_l_t_w tape =
  let trs_lst = List.find (fun x -> (fst x) = Type_tape.(tape.trs)) Transition.t 
  in
  let trs = List.find (fun x -> x.Type_transition.read = Type_tape.(tape.lread)) (snd trs_lst) 
  in
  trs.Type_transition.write