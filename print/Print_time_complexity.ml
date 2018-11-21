let p_t_c trs_count =
  let open Num 
  in
  let one = num_of_int 1 
  in
  let zero = num_of_int 0 
  in
  let two = num_of_int 2 
  in
  let n = num_of_int (String.length Input.i) 
  in
  let rec get_degree acc nb =
    if acc </ one 
    then 
      nb -/ one
    else 
      get_degree (acc // n) (nb +/ one)
  in
  if trs_count = one 
  then
    Printf.printf "\nTime complexity for n = %s and N = %s : O(1)" (string_of_num n) (string_of_num trs_count)
  else if trs_count >/ (Fact_num.f_n n) 
  then
    Printf.printf "\nTime complexity for n = %s and N = %s : O(n!)" (string_of_num n) (string_of_num trs_count)
  else if trs_count >/ (two **/ n) 
  then
    Printf.printf "\nTime complexity for n = %s and N = %s : O(2^n)" (string_of_num n) (string_of_num trs_count)
  else if (get_degree trs_count zero >/ zero) 
  then 
    (let degree = get_degree trs_count zero
     in
     if degree <=/ one 
     then
       Printf.printf "\nTime complexity for n = %s and N = %s : O(n)" (string_of_num n) (string_of_num trs_count)
     else
       Printf.printf "\nTime complexity for n = %s and N = %s : O(n^%s)" (string_of_num n) (string_of_num trs_count) (string_of_num degree))
  else
    (Printf.printf "\nTime complexity for n = %s and N = %s : O(logn)" (string_of_num n) (string_of_num trs_count))