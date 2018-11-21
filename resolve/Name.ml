(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Name.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:42:03 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:39:56 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let n =
  try
    let open Yojson.Basic.Util
    in
    Json_file.j_f |> member "name" |> to_string
  with
  | exn -> print_endline "Error: Can not read name field."; exit 0
