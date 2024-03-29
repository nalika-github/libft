# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/22 13:50:38 by ptungbun          #+#    #+#              #
#    Updated: 2023/02/04 14:24:27 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a
CC			=	gcc
CFLAGS		=	-Wall -Werror -Wextra -I


# Note the single quotes the * exoressions. Make will incorrectly expand these otherwise.

SRCS		=	ft_isalpha.c ft_isdigit.c ft_isascii.c ft_isalnum.c ft_isprint.c \
				ft_toupper.c ft_tolower.c ft_memcmp.c ft_strncmp.c ft_atoi.c \
				ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_memcpy.c ft_bzero.c \
				ft_memset.c ft_memchr.c ft_memmove.c ft_calloc.c ft_putchar_fd.c \
				ft_putstr_fd.c ft_putnbr_fd.c ft_putendl_fd.c ft_striteri.c \
				ft_strchr.c ft_strdup.c ft_strrchr.c ft_strnstr.c ft_itoa.c \
				ft_substr.c ft_strtrim.c ft_strmapi.c ft_strjoin.c ft_split.c

BONUS		=	ft_lstnew.c ft_lstadd_front.c ft_lstlast.c ft_lstadd_back.c \
				ft_lstsize.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

# Find all the .o files we want to build libft.a

OBJS		=	$(SRCS:.c=.o)
BONUS_OBJS	=	$(BONUS:.c=.o)

all: $(NAME)

# Build step for C source

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

clean:
	rm -rf $(OBJS) $(BONUS_OBJS)

fclean:
	rm -rf $(NAME) $(OBJS) $(BONUS_OBJS)

re: fclean all

.PHONY: all clean fclean re bonus
