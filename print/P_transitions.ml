(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   P_transitions.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:16:27 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:24:45 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val p_t : unit -> unit *)
(* Called by Intro.ml *)

let p_t () =
  let rec resolve_trans read_trans_name trans_list =
    List.iter (fun x -> match x with
        | {Type_transition.read     = rd; 
           Type_transition.to_state = st; 
           Type_transition.write    = wr; 
           Type_transition.action   = ac} -> 
          (Printf.printf "( %s, %c ) -> ( %s, %c, %s )\n" (read_trans_name) (rd) (st) (wr) (Action_to_string.a_t_s(ac));)) trans_list
  in
  List.iter (fun x -> resolve_trans (fst x) (snd x)) Transition.t

(* List is resolved before Transition is called. *)
(* In resolved matching in a record uses the types defined in Type_transition 
  to declare the expressions. *)
(* Action of what the instruction is going to do is found, as well as the 
  states are printed. *)