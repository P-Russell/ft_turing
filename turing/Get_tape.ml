(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Get_tape.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:47:12 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:17:48 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val g_t : letter list -> int -> state -> letter -> tape_data *)
(* Called by Init_tape.ml, Launch_tape.ml *)

let g_t letters pos transition read_letter =
  {
    Type_tape.letters = letters;
    Type_tape.pos     = pos;
    Type_tape.trs     = transition;
    Type_tape.lread   = read_letter
  }
