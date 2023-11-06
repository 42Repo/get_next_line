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
HEAD	=	get_next_line.h
libft	=	libft/
SRC		=	get_next_line.c\
			get_next_line_utils.c\
			main.c


OBJ = $(SRC:.c=.o)

all : $(NAME)

%.o : %.c
	@$(COMP) $(CFLAGS) -o $@ -c $< -I $(HEAD)

$(NAME) : $(OBJ)
	@clang -g $(CFLAGS) -D BUFFER_SIZE=600000000 $(OBJ) -o test
	@echo "$(BGreen)Compilation OK$(RESET)"

clean :
	@make clean --no-print-directory -C $(libft)
	@rm -f $(OBJ)
	@echo "$(BRed)Erase .o files$(RESET)"


fclean : clean
	@make fclean --no-print-directory -C $(libft)
	@rm -f test
	@echo "$(BRed)Erase test$(RESET)"

test : $(NAME)
	@./test

re : fclean all

.PHONY: all fclean clean re


