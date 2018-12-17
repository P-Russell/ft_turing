(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Tape.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:13:55 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:26:24 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val p_t : tape_data -> unit *)
(* Called by Launch_tape.ml *)

let p_t tape =
  print_string "(";
  List.iteri (fun i x ->
      if i = Type_tape.(tape.pos)
      then
        Printf.printf "\x1b[32m%c\x1b[0m" (x)
      else
        print_char x) Type_tape.(tape.letters);
  print_string ") ";
  P_transition.p_t tape
