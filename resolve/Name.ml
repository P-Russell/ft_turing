let n =
  try
    let open Yojson.Basic.Util
    in
    Json_file.j_f |> member "name" |> to_string
  with
  | exn -> print_endline "Error: Can not read name field."; exit 0