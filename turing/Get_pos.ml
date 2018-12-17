(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Get_pos.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:45:47 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:16:58 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val g_p : tape_data -> int *)
(* Called by Launch_type.ml *)

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
