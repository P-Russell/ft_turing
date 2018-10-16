# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prussell <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/16 14:22:06 by prussell          #+#    #+#              #
#    Updated: 2018/10/16 15:44:36 by prussell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PKGS = yojson

all:
	ocamlbuild -use-ocamlfind -pkgs '$(PKGS)' 'main.byte'

native:
	ocamlbuild -use-ocamlfind -pkgs '$(PKGS)' 'main.native'

clean:
	ocamlbuild -clean

re: clean all

dep:
	opam install $(PKGS)
