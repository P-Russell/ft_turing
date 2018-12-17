(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Transition.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:44:22 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:41:23 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val t : (string * transition list) list *)
(* Called P_transition.ml, P_transitions.ml, Get_letter_to_write.ml, 
  Get_next_transition.ml, Get_pos.ml *)

let t =
  try
    begin
      let open Yojson.Basic.Util
      in
      let lst = Json_file.j_f |> member "transitions" |> to_assoc
      in
      let rec loop lst acc =
        match lst with
        | head :: tail -> loop tail (acc @ [Transition_list.t_l head])
        | [] -> acc
      in
      loop lst []
    end
  with
  | exn -> print_endline "Error: transitions not well formatted."; exit 0
