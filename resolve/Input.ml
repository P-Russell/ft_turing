(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Input.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 11:40:52 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:38:44 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by Print_time_complexity.ml, Init_tape.ml *)

let i =
  try
    begin
      let input = if Sys.argv.(1) = "-O" 
        then 
          Sys.argv.(3)
        else 
          Sys.argv.(2)
      in
      let str_to_char_list str =
        let rec exp i lst =
          if i < 0 
          then 
            lst 
          else 
            exp (i - 1) (str.[i] :: lst)
        in 
        exp (String.length str - 1) []
      in
      let input_lst = str_to_char_list input
      in
      if (not (List.for_all (fun x -> List.mem x Alphabet.a && x <> Blank.b) input_lst))
      then
        (print_endline "Error: Input invalid, all characters must be in alphabet list without blank char."; exit 0)
      else if (String.length input) = 0 
      then
        (print_endline "Error: Empty input."; exit 0)
      else 
        input
    end
  with
  | exn -> print_endline "Error: Invalid input field. -h for details"; exit 0
