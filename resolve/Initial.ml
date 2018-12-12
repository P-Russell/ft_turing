(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Initial.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:39:44 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:38:08 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by Intro.ml, Init_tape.ml *)

let i =
  try
    begin
      let open Yojson.Basic.Util 
      in
      let str = Json_file.j_f |> member "initial" |> to_string 
      in
      if List.mem str States.s
      then 
        str 
      else 
        (print_endline "Error: initial must be in states list."; exit 0)
    end
  with
  | exn -> print_endline "Error: initial not well formatted."; exit 0
