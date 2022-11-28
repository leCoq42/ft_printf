# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: mhaan <mhaan@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/27 16:14:12 by mhaan         #+#    #+#                  #
<<<<<<< HEAD
#    Updated: 2022/11/28 12:08:31 by mhaan         ########   odam.nl          #
=======
#    Updated: 2022/11/25 16:03:13 by mhaan         ########   odam.nl          #
>>>>>>> ed58f02bf69b6086d3be7424bf7ba437d208f8d6
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

AR = ar -crs
CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = /bin/rm -rf

SRC_DIR = ./src
<<<<<<< HEAD
SRC = 	ft_printf.c helpers.c
=======
SRC = 	ft_printf.c helpers.c switch.c
>>>>>>> ed58f02bf69b6086d3be7424bf7ba437d208f8d6

OBJ_DIR = ./obj
OBJS = $(addprefix $(OBJ_DIR)/,$(SRC:.c=.o))

all: $(NAME)

$(OBJ_DIR):
		mkdir -p $(OBJ_DIR)

$(NAME): $(OBJ_DIR) $(OBJS)
		make bonus -C libft
		cp libft/libft.a ./$(NAME)
		$(AR) $(NAME) $(OBJS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
		$(CC) $(CFLAGS) -c $< -o $@

clean:
		$(RM) $(OBJ_DIR)
		make clean -C libft

fclean: clean
		$(RM) $(NAME)
		$(RM) libft/libft.a

re:
		$(MAKE) fclean
		$(MAKE) all

.PHONY:
		all clean fclean re