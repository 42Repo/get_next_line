# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asuc <asuc@student.42angouleme.fr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/12 17:42:16 by asuc              #+#    #+#              #
#    Updated: 2023/08/12 17:42:16 by asuc             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

BGreen	=	$(shell echo "\033[1;32m")
RESET	=	$(shell echo "\033[0m")
BRed	=	$(shell echo "\033[1;31m")
NAME 	=	libftprintf.a
COMP 	=	cc
CFLAGS 	=	-Wall -Werror -Wextra
SRC		=	get_next_line_bonus.c\
			get_next_line_utils_bonus.c\
			main.c

OBJ = $(SRC:.c=.o)

all : $(NAME)

%.o : %.c
	@$(COMP) $(CFLAGS) -o $@ -c $<

$(NAME) : $(OBJ)
	@$(COMP) -g $(CFLAGS) $(SRC) -D BUFFER_SIZE=42 -o test
	@echo "$(BGreen)Compilation OK$(RESET)"

clean :
	@rm -f $(OBJ)
	@echo "$(BRed)Erase .o files$(RESET)"


fclean : clean
	@rm -f test
	@echo "$(BRed)Erase test$(RESET)"

test : $(NAME)
	@valgrind --track-origins=yes --tool=memcheck --track-fds=yes --leak-check=full -s --show-leak-kinds=all ./test

test2 :
	@cp -rf ../gnl-station-tester ./gnl-station-tester
	@make -C ./gnl-station-tester
	@rm -rf ./gnl-station-tester
	@cp -rf ../gnlTest ./gnlTest
	@make -C ./gnlTest
	@rm -rf ./gnlTest

re : fclean all

.PHONY: all fclean clean re test test2


