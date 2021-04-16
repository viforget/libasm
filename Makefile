# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: viforget <viforget@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/16 12:34:35 by viforget          #+#    #+#              #
#    Updated: 2021/04/16 12:34:38 by viforget         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm.a

SRCS =	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s	\
		ft_read.s	\
		ft_strdup.s

OBJS = $(SRCS:.s=.o)

NASM = /Volumes/Storage/goinfre/viforget/homebrew/bin/nasm

%.o	: %.s
	$(NASM) -f macho64 $< -o $@

$(NAME): $(OBJS) 
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f try_libasm
	rm -f test

re: fclean all