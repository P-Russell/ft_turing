(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Help.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:19:31 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:22:25 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val p_h : unit -> unit *)
(* Called by File_name.ml *)

let p_h () =
  print_endline "usage:                ./ft_turing [-h][-O] jsonfile input

positional arguments: jsonfile   -> json description of the machine
                      input      -> input of the machine

optional arguments:   -h, --help -> show this help message and exit"

(* Gives the instructions when the wrong input is typed in the stdin. *)
