(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   String_list.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:19:05 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:25:55 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec s_l list_ =
  match list_ with
  | head::[]   -> print_string head
  | []         -> print_char '\n'
  | head::tail -> print_string head; print_string ", "; s_l tail
