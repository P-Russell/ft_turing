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

(* val p_t : tape_data -> unit *)
(* Called by Tape.ml *)

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

(* List is resolved before Transition is called. *)
(* In resolved matching in a record uses the types defined in Type_transition 
  to declare the expressions. Here the record is also matched with the unit 
  (exit function). *)
(* Action of what the instruction is going to do is found, as well as the 
  states are printed. *)