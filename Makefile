# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nguelfi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/06 17:26:51 by nguelfi           #+#    #+#              #
#    Updated: 2017/05/12 18:30:19 by nguelfi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_lstdel.c ft_memdel.c ft_putstr_fd.c ft_striteri.c ft_strnew.c \
ft_atoi.c ft_lstdelone.c ft_memmove.c ft_strcat.c ft_strjoin.c ft_strnstr.c \
ft_bzero.c ft_lstiter.c ft_memset.c ft_strchr.c ft_strlcat.c ft_strrchr.c \
ft_isalnum.c ft_lstmap.c ft_putchar.c ft_strclr.c ft_strlen.c ft_strsplit.c \
ft_isalpha.c ft_lstnew.c ft_putchar_fd.c ft_strcmp.c ft_strmap.c ft_strstr.c \
ft_isascii.c ft_memalloc.c ft_putendl.c ft_strcpy.c ft_strmapi.c ft_strsub.c \
ft_isdigit.c ft_memccpy.c ft_putendl_fd.c ft_strdel.c ft_strncat.c ft_strtrim.c \
ft_isprint.c ft_memchr.c ft_putnbr.c ft_strdup.c ft_strncmp.c ft_tolower.c \
ft_itoa.c ft_memcmp.c ft_putnbr_fd.c ft_strequ.c ft_strncpy.c ft_toupper.c \
ft_lstadd.c ft_memcpy.c ft_putstr.c ft_striter.c ft_strnequ.c ft_factorial.c \
ft_power.c ft_swap_int.c ft_sort_int_table.c ft_strjoinch.c ft_strjoinfree.c \
ft_strjoinchfree.c ft_strdupch.c ft_strrenew.c ft_strlench.c ft_tabdel.c

OBJ = ${SRC:.c=.o}
INCLUDE = .
FLAGS = -Wall -Werror -Wextra

all: $(NAME)

%.o:%.c
	gcc $(FLAGS) -I $(INCLUDE) -o $@ -c $<

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

clean:
		/bin/rm -f $(OBJ)

fclean: clean
		/bin/rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re all
