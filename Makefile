# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prussell <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/16 14:22:06 by prussell          #+#    #+#              #
#    Updated: 2018/11/30 18:13:28 by jbadenho         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Run:	"make nc" for native code or "make bc" for byte code.
# Run:	"ocamlfind ocamlopt -package yojson -package num -i *.ml" to print all 
#		defined names with their inferred types or their definitions.

PRINT_FOLDER	=	main/Type_transition.ml main/Type_tape.ml \
					print/Char_list.ml print/String_list.ml print/Help.ml
RESOLVE_FOLDER	=	resolve/File_name.ml resolve/Json_file.ml resolve/Name.ml \
					resolve/Alphabet.ml resolve/Blank.ml resolve/States.ml \
					resolve/Initial.ml resolve/Finals.ml \
					resolve/Transition_object.ml resolve/Transition_list.ml \
					resolve/Transition.ml resolve/Input.ml
TURING_FOLDER	=	turing/Action_to_string.ml print/P_transitions.ml \
					print/Intro.ml turing/Fact_num.ml \
					print/Print_time_complexity.ml \
					turing/String_to_char_list.ml turing/Get_tape.ml \
					print/P_transition.ml print/Tape.ml \
					turing/Get_next_transition.ml \
					turing/Get_letter_to_write.ml turing/Get_pos.ml \
					turing/Get_letters.ml turing/Init_tape.ml \
					turing/Launch_tape.ml
MAIN_FOLDER		=	main/main.ml
RESULT			=	ft_turing
SOURCES			=	$(PRINT_FOLDER) $(RESOLVE_FOLDER) $(TURING_FOLDER) $(MAIN_FOLDER) 
PACKS			=	yojson num
THREADS			=	yes
OCAMLMAKEFILE	=	OCamlMakefile

include $(OCAMLMAKEFILE)
