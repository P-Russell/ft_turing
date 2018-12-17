(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Transition_list.ml                                 :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:45:28 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:42:01 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* val t_l : string * Yojson.Basic.json -> string * transition list *)
(* Called by Transition.ml *)

let t_l ((name, json) : (string * Yojson.Basic.json)) =
  let open Yojson.Basic.Util 
  in
  let transition = json |> to_list 
  in
  let rec loop lst acc =
    match lst with
    | head :: tail -> loop tail (acc @ [Transition_object.t_o head])
    | [] -> (name, acc)
  in
  loop transition []
