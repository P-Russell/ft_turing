(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   States.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:42:49 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:40:50 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by Intro.ml, Finals.ml, Initial.ml, Transition_object.ml *)

let s =
  try
    begin
      let open Yojson.Basic.Util
      in
      let lst = Json_file.j_f |> member "states" |> to_list
      in
      let rec loop lst acc =
        match lst with
        | head :: tail -> loop tail (acc @ [to_string head])
        | [] -> acc
      in
      loop lst []
    end
  with
  | exn -> print_endline "Error: states not well formatted."; exit 0
