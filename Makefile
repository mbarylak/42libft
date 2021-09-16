# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbarylak <mbarylak@student.42madrid>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/13 16:37:19 by mbarylak          #+#    #+#              #
#    Updated: 2021/09/16 13:43:29 by mbarylak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC= $(shell find . -type f -name "*.c")
OBJ= $(SRC:.c=.o)

CC=gcc
RM=rm -rf
CFLAGS=-Wall -Werror -Wextra

NAME=libft.a

all: $(NAME)

$(NAME):$(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
