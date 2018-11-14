let i =
  try
    begin
      let input = Sys.argv.(2)
      in
      let str_to_char_lst str =
        let rec exp i lst =
          if i < 0 
          then 
            lst 
          else 
            exp (i - 1) (str.[i] :: lst)
        in 
        exp (String.length str - 1) []
      in
      let input_lst = str_to_char_lst input
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