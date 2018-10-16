# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prussell <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/16 14:22:06 by prussell          #+#    #+#              #
#    Updated: 2018/10/16 14:27:02 by prussell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	ocamlbuild main.byte

native:
	ocamlbuild main.native

clean:
	ocamlbuild -clean

re: clean all

dep:
	opam install yojson
