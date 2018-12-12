(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   File_name.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:34:29 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:29:15 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val f_n : string *)
(* Called by Json_file.ml *)

let f_n =
  try 
    let arg1 = Sys.argv.(1) in
    if arg1 = "-h" || arg1 = "--help" 
    then
      (Help.p_h (); exit 0)
    else if (arg1 = "-O" && Array.length Sys.argv = 4) then
      Sys.argv.(2)
    else if (Array.length Sys.argv = 3) 
    then
      arg1
    else
      (print_endline "Error: Wrong arguments. -h for details."; exit 0)
  with 
  | exn -> print_endline "Error: argv1 must be a valid json file."; exit 0
