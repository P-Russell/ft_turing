let f_n n =
  let open Num 
  in
  let one = num_of_int 1 
  in
  let rec fact_loop nb acc =
    if nb = one 
    then 
      acc
    else
      fact_loop (nb -/ one) (acc */ nb)
  in fact_loop n one