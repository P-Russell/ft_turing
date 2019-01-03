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
SOURCES			=	$(PRINT_FOLDER) $(RESOLVE_FOLDER) $(TURING_FOLDER) \
					$(MAIN_FOLDER) 
PACKS			=	yojson num
THREADS			=	yes
OCAMLMAKEFILE	=	OCamlMakefile

include $(OCAMLMAKEFILE)

# Order of compile for Intro.ml:
#		Type_transition.ml
#		Help.ml
#		File_name.ml
#		Json_file.ml
#		Name.ml
#		Char_list.ml
#		Alphabet.ml
#		Blank.ml
#		String_list.ml
#		States.ml
#		Initial.ml
#		Finals.ml
#		Transition_object.ml
#		Transition_list.ml
#		Transition.ml
#		Action_to_string.ml
#		P_transitions.ml
#		Intro.ml

# Order of compile for Print_time_complexity.ml
#		Help.ml
#		Json_file.ml
#		Alphabet.ml
#		Blank.ml
#		File_name.ml
#		Input.ml
#		Fact_num.ml
#		Print_time_complexity.ml

# Order of compile for Launch_tape.ml
#		Type_tape.ml
#		Action_to_string.ml
#		Get_tape.ml
#		String_to_char_list.ml
#		Help.ml
#		Json_file.ml
#		Alphabet.ml
#		Blank.ml
#		Input.ml
#		Fact_num.ml
#		Print_time_complexity.ml
#		States.ml
#		Initial.ml
#		Init_tape.ml
#		Finals.ml
#		Transition_object.ml
#		Transition_list.ml
#		Transition.ml
#		Get_letters.ml
#		Get_pos.ml
#		Get_letter_to_write.ml
#		Get_next_transition.ml
#		P_transition.ml
#		Tape.ml
#		Launch_tape.ml

# Order of compile for main.ml
#		01. Type_transition.ml
#		02. Type_tape.ml
#		03. Help.ml
#		04. File_name.ml
#		05. Json_file.ml
#		06. Name.ml
#		07. Char_list.ml
#		08. Alphabet.ml
#		09. Blank.ml
#		10. String_list.ml
#		11. States.ml
#		12. Initial.ml
#		13. Finals.ml
#		14. Transition_object.ml
#		15. Transition_list.ml
#		16. Transition.ml
#		17. Action_to_string.ml
#		18. P_transitions.ml
#		19. Intro.ml
#		20. Get_tape.ml
#		21. String_to_char_list.ml
#		22. Input.ml
#		23. Fact_num.ml
#		24. Print_time_complexity.ml
#		25. Init_tape.ml
#		26. Get_letters.ml
#		27. Get_pos.ml
#		28. Get_letter_to_write.ml
#		29. Get_next_transition.ml
#		30. P_transition.ml
#		31. Tape.ml
#		32. Launch_tape.ml