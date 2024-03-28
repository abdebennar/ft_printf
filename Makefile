# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abennar <abennar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/02 15:22:22 by abennar           #+#    #+#              #
#    Updated: 2023/12/11 17:31:17 by abennar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRCS = ft_printf.c \
	   ft_putchar.c \
	   ft_putstr.c \
	   ft_putprsnt.c \
	   ft_putnbr.c \
	   ft_putusg.c \
	   ft_puthex.c \
	   ft_putptr.c 
	   
CFLAGS = -Wall -Wextra -Werror

OBG = $(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBG)
	ar rc $@ $?
	
%.o : %.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@
	
clean :
	rm -f $(OBG)
	
fclean : clean
	rm -f $(NAME)
	
re : fclean all 