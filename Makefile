# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbarylak <mbarylak@student.42madrid>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/13 16:37:19 by mbarylak          #+#    #+#              #
#    Updated: 2021/09/20 21:54:58 by mbarylak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
	 ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
	 ft_memset.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c \
	 ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c \
	 ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_putchar_fd.c \
	 ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c 
OBJ = $(SRC:.c=.o)

BONUSSRC = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
		  ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

BONUSOBJ = $(BONUSSRC:.c=.o)

INCLUDE = libft.h

BONUSINCLUDE = libft_bonus.h

CC = gcc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra

NAME = libft.a

all: $(NAME)

$(NAME): $(OBJ) $(INCLUDE)
	ar rcs $(NAME) $(OBJ)

bonus: $(BONUSOBJ) $(BONUSINCLUDE)
	ar rcs $(NAME) $(BONUSOBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJ) $(BONUSOBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

rebonus: fclean bonus

.PHONY: all clean fclean re
