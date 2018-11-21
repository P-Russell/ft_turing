(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Type_transition.ml                                 :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: jbadenho <marvin@42.fr>                    +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/11/15 12:37:23 by jbadenho          #+#    #+#             *)
(*   Updated: 2018/11/21 09:08:10 by jbadenho         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type letter     = char
type state      = string
type direction  = Right | Left
type transition = {read: letter; to_state: state; write: letter; action: direction}
