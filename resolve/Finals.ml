let f =
  try
    begin
      let open Yojson.Basic.Util in
      let final_lst = Json_file.j_f |> member "finals" |> to_list in
      let rec loop lst acc =
        match lst with
        | head :: tail -> loop tail (acc @ [to_string head])
        | [] -> acc
      in
      let lst_str = loop final_lst [] in
      let rec loop lst =
        match lst with
        | head :: tail when List.mem head States.s = false -> 
          (print_endline "Error: finals must be a sublist of states."; exit 0)
        | head :: tail -> loop tail
        | [] -> lst_str
      in
      loop lst_str
    end
  with
  | exn -> []