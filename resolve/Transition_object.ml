(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Transition_object.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:46:33 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:42:34 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let t_o (obj: Yojson.Basic.json) =
  let open Yojson.Basic.Util
  in
  let read = obj |> member "read" |> to_string
  in
  let to_state = obj |> member "to_state" |> to_string
  in
  let write = obj |> member "write" |> to_string
  in
  let action = obj |> member "action" |> to_string
  in
  if String.length read <> 1 || List.mem read.[0] Alphabet.a = false 
  then 
    (print_endline "Error: read element must be in alphabet list"; exit 0)
  else if List.mem to_state States.s = false 
  then 
    (print_endline "Error: to_state element must be in states list"; exit 0)
  else if String.length write <> 1 || List.mem write.[0] Alphabet.a = false 
  then 
    (print_endline "Error: write element must be in alphabet list"; exit 0)
  else if action <> "RIGHT" && action <> "LEFT" 
  then 
    (print_endline "Error: action element not well formatted"; exit 0)
  else 
    begin
      let act = if action = "RIGHT" 
        then 
          Type_transition.Right 
        else 
          Type_transition.Left 
      in
      {Type_transition.read = read.[0]; Type_transition.to_state = to_state; Type_transition.write = write.[0]; Type_transition.action = act}
    end
