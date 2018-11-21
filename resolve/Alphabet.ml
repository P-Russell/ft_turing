(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Alphabet.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:32:17 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:27:32 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let a = 
  try
    begin
      let open Yojson.Basic.Util 
      in
      let lst = Json_file.j_f |> member "alphabet" |> to_list 
      in
      let rec loop lst acc =
        match lst with
        | head :: tail -> 
          begin
            let str = to_string head in
            match String.length str with
            | 1 -> loop tail (acc @ [str.[0]])
            | _ -> print_endline "Error: alphabet elements must be char."; exit 0
          end
        | [] -> acc
      in
      loop lst []
    end
  with
  | exn -> print_endline "Error: alphabet not well formatted."; exit 0
