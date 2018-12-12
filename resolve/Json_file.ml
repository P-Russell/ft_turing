(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Json_file.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:41:35 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:39:25 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val j_f : Yojson.Basic.json *)
(* Called by Alphabet.ml, Blank.ml, Finals.ml, Initial.ml, Name.ml, States.ml, 
  Transition.ml *)

let j_f =
  try
    Yojson.Basic.from_file File_name.f_n
  with
  | Yojson.Json_error err-> print_endline "Error: Json file not well formatted."; exit 0
  | exn -> print_endline "Error: argv1 must be be a valid json file."; exit 0
