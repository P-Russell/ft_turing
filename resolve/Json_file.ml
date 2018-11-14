let j_f =
  try
    Yojson.Basic.from_file File_name.f_n
  with
  | Yojson.Json_error err-> print_endline "Error: Json file not well formatted."; exit 0
  | exn -> print_endline "Error: argv1 must be be a valid json file."; exit 0