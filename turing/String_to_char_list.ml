let s_t_c_l str =
  let rec exp i lst =
    if i < 0 
    then 
      lst 
    else 
      exp (i - 1) (str.[i] :: lst)
  in 
  exp (String.length str - 1) []