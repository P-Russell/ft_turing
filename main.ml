(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: prussell <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/16 14:32:23 by prussell          #+#    #+#             *)
(*   Updated: 2018/10/16 15:33:26 by prussell         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
let load_file filename = 
	let lines = ref [] in
		try
		let fs = open_in filename in
		    while true do
		    	let line = input_line fs in
		    	lines := List.append !lines [line];
		    done;
		with 
		| End_of_file ->
		    let lines_array = (Array.of_list !lines) in
		    let rand = Random.self_init (); Random.int (Array.length lines_array) in
		    print_endline (lines_array.(rand));
		| Sys_error e -> print_endline ("bad filename " ^ e)
		| _ -> ()
*)

let prog filename = 
    Yojson.Basic.from_file filename

let main argc argv = 
    if argc = 2 then
        let json1 = prog (Array.get argv 1) in
        let json2 = prog (Array.get argv 1) in
        if json1 = json2 then print_endline "OK"
        else print_endline "FAIL"

let () = 
    let argv = Sys.argv in
    	main (Array.length argv) argv
