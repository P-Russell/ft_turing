(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Init_tape.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:48:10 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:18:44 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(* Called by Launch_type.ml *)

let i_t () = Get_tape.g_t (String_to_char_list.s_t_c_l Input.i) 0 Initial.i
    (List.nth (String_to_char_list.s_t_c_l Input.i) 0)
