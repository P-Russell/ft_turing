(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Get_letters.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:44:22 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:16:21 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val g_l : tape_data -> letter -> letter list *)
(* Called by Launch_tape.ml *)

let g_l tape wr_letter =
  List.mapi (fun i x -> if i = Type_tape.(tape.pos) 
              then 
                wr_letter 
              else x) 
    Type_tape.(tape.letters)
