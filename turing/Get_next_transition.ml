(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Get_next_transition.ml                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:41:34 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:14:13 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by Launch_tape.ml *)

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
