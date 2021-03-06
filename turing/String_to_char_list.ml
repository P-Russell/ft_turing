(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   String_to_char_list.ml                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:51:21 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:20:12 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val s_t_c_l : string -> char list *)
(* Called by Init_tape.ml *)

let s_t_c_l str =
  let rec exp i lst =
    if i < 0 
    then 
      lst 
    else 
      exp (i - 1) (str.[i] :: lst)
  in 
  exp (String.length str - 1) []

(* Takes a stringand placing it into a list. *)
