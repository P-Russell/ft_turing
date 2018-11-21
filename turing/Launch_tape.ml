let l_t () =
  let trs_count = ref 0 
  in
  let rec write_tape tape =
    Tape.p_t tape;
    incr trs_count;
    let next_trs = Get_next_transition.g_n_t tape 
    in
    let letter_to_write = Get_letter_to_write.g_l_t_w tape 
    in
    let pos = Get_pos.g_p tape 
    in
    let tape_letters = Get_letters.g_l tape letter_to_write 
    in
    if List.exists (fun x -> x = next_trs) Finals.f 
    then (if List.length tape_letters = pos
          then (let tape_letters = tape_letters @ ['.'] 
                in
                let final_tape = Get_tape.g_t tape_letters pos next_trs (List.nth tape_letters pos) 
                in
                Tape.p_t final_tape)
          else if List.length tape_letters = 1 && pos = -1 
          then (let tape_letters = '.' :: tape_letters 
                in
                let final_tape = Get_tape.g_t tape_letters 0 next_trs (List.nth tape_letters 0) 
                in
                Tape.p_t final_tape)
          else 
            (let final_tape = Get_tape.g_t tape_letters pos next_trs (List.nth tape_letters pos) 
             in
             Tape.p_t final_tape;);
          if Sys.argv.(1) = "-O"
          then
             Print_time_complexity.p_t_c (Num.num_of_int !trs_count);
             print_char '\n'; exit 0)
    else (
      if pos = -1 
      then (let tape_letters = '.' :: tape_letters 
            in
            write_tape (Get_tape.g_t tape_letters 0 next_trs (List.nth tape_letters 0)))
      else if pos = (List.length tape_letters) then (
        let tape_letters = tape_letters @ ['.'] 
        in
        write_tape (Get_tape.g_t tape_letters pos next_trs (List.nth tape_letters pos)))
      else
        write_tape (Get_tape.g_t tape_letters pos next_trs (List.nth tape_letters pos)))
  in
  write_tape (Init_tape.i_t ())