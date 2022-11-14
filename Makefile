# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: mhaan <mhaan@student.codam.nl>               +#+                      #
#                                                    +#+                       #
#    Created: 2022/10/27 16:14:12 by mhaan         #+#    #+#                  #
#    Updated: 2022/11/14 11:31:03 by mhaan         ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
AR = ar -crs
CFLAGS = -Wall -Wextra -Werror
RM = /bin/rm -rf

SRC_DIR = src/
SRC = 	ft_printf.c helpers.c switch.c

OBJ_DIR = obj/
OBJS = $(addprefix $(OBJ_DIR),$(SRC:.c=.o))

all: $(NAME)

$(NAME): $(OBJS)
		make bonus -C libft
		cp libft/libft.a ./$(NAME)
		$(AR) $(NAME) $(OBJS)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
		mkdir -p $(OBJ_DIR)
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