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