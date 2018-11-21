(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Type_tape.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:33:10 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:07:22 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type letter    = char
type state     = string
type direction = Right | Left
type tape_data = {letters: letter list; pos: int; trs: state; lread: letter}
