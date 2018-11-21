(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   P_transition.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:13:51 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:24:01 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let p_t tape =
  let resolve_trs trs_lst =
    List.iter (fun x -> match x with
        | {Type_transition.read     = rd; 
           Type_transition.to_state = st; 
           Type_transition.write    = wr; 
           Type_transition.action   = ac}
          when rd = Type_tape.(tape.lread) -> 
          (Printf.printf "( %s, %c ) -> ( %s, %c, %s )\n" (Type_tape.(tape.trs)) (rd) (st) (wr) (Action_to_string.a_t_s(ac)))
        | {Type_transition.read     = rd; 
           Type_transition.to_state = st; 
           Type_transition.write    = wr; 
           Type_transition.action   = ac} -> ()
      ) trs_lst
  in
  List.iter (fun x -> if (fst x) = Type_tape.(tape.trs) then resolve_trs (snd x)) Transition.t
