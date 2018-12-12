(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Intro.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:24:46 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:23:07 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by main.ml *)

let i () =
  print_string  "---~ Turing Machine ->";
  Printf.printf " %s ~---\n" (Name.n);
  print_string  "Alphabet : ( "; Char_list.c_l (Alphabet.a); print_endline " )";
  Printf.printf "Blank    : ( %c )\n" (Blank.b);
  print_string  "States   : ( "; String_list.s_l (States.s); print_endline " )";
  Printf.printf "Initial  : ( %s )\n" (Initial.i);
  print_string  "Finals   : ( "; String_list.s_l (Finals.f); print_endline " )";
  P_transitions.p_t ();
  print_endline "---~ Turing Outputs ~---"
