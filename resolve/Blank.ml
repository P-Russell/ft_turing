let b =
  try 
    begin
      let open Yojson.Basic.Util in
      let c = Json_file.j_f |> member "blank" |> to_string in
      match String.length c with
      | 1 ->  if List.mem c.[0] Alphabet.a 
        then 
          c.[0] 
        else
          (print_endline "Error: blank must be in alphabet list."; exit 0)
      | _ -> print_endline "Error: blank must be a char."; exit 0
    end
  with
  | exn -> print_endline "Error: blank not well formatted."; exit 0