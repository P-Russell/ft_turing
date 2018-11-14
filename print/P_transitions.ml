let p_t () =
  let rec resolve_trans read_trans_name trans_list =
    List.iter (fun x -> match x with
        | {Type_transition.read     = rd; 
           Type_transition.to_state = st; 
           Type_transition.write    = wr; 
           Type_transition.action   = ac} -> 
          (Printf.printf "( %s, %c ) -> ( %s, %c, %s )\n" (read_trans_name) (rd) (st) (wr) (Action_to_string.a_t_s(ac));)
      ) trans_list
  in
  List.iter (fun x -> resolve_trans (fst x) (snd x)) Transition.t