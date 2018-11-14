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