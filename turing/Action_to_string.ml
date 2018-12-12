(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Action_to_string.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:38:09 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:13:05 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by P_transition.ml, P_transitions.ml *)

let a_t_s ac = 
  if ac = Type_transition.Right 
  then 
    "RIGHT" 
  else 
    "LEFT"
