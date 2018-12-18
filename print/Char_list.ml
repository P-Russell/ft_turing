(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Char_list.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:15:23 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:21:30 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val c_l : char list -> unit *)
(* Called by Intro.ml *)

let rec c_l list_ =
  match list_ with
  | head::[]   -> print_char head
  | []         -> ()
  | head::tail -> print_char head; print_string ", "; c_l tail

(* Matching with a list where the head is printed moving to the tail until the 
  end of the list is found. *)