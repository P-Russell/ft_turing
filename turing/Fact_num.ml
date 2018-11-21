(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Fact_num.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/21 07:04:59 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:15:06 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

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
