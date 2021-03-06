(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/16 14:32:23 by prussell          #+#    #+#             *)
(*   Updated: 2018/11/21 09:11:02 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Where the starting parameters of the program are. *)

let () =
  Intro.i ();
  ignore (Launch_tape.l_t ());
  print_endline ""

(* Intro.ml only prints the turing parameters that will be used. *)
(* Launch_tape.ml initiates the instructions for the turning machine. *)