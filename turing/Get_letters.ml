let g_l tape wr_letter =
  List.mapi (fun i x -> if i = Type_tape.(tape.pos) 
              then 
                wr_letter 
              else x) 
    Type_tape.(tape.letters)