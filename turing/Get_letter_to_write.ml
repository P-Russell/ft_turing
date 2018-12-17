(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Get_letter_to_write.ml                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:43:33 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:15:46 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val g_l_t_w : tape_data -> letter *)
(* Called by Launch_tape.ml *)

let g_l_t_w tape =
  let trs_lst = List.find (fun x -> (fst x) = Type_tape.(tape.trs)) Transition.t 
  in
  let trs = List.find (fun x -> x.Type_transition.read = Type_tape.(tape.lread)) (snd trs_lst) 
  in
  trs.Type_transition.write
