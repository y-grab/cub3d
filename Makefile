NAME = cub3d

NAME_B = cub3d_bonus

SRCS	=	src/main.c src/raycast.c src/parser.c src/read_map.c src/get_player_info1.c src/get_player_info2.c src/utils.c src/raycast_utils.c \
		src/key_update_utils.c src/check_map.c src/parser_utils.c src/get_rgb.c src/check_rgb.c

SRCS_B	=	bonus/main_bonus.c bonus/raycast_bonus.c bonus/parser_bonus.c bonus/read_map_bonus.c bonus/get_player_info1_bonus.c bonus/get_player_info2_bonus.c bonus/utils_bonus.c bonus/raycast_utils_bonus.c \
		bonus/rotation_bonus.c bonus/check_map_bonus.c bonus/parser_utils_bonus.c bonus/get_rgb_bonus.c bonus/check_rgb_bonus.c \
		bonus/bonus_utils.c bonus/movements_bonus.c bonus/mouse_bonus.c \
		bonus/minimap.c bonus/minimap_utils.c
OBJ		=	$(SRCS:%.c=%.o)

OBJ_B	=	$(SRCS_B:%.c=%.o)

LIB		=	libft/libft.a mlx/libmlx.a

HEADER	=	cub3d.h

CC		=	gcc

FLAGS	=	-Wall -Wextra -Werror -fsanitize=address -g3

RM		=	rm -rf

MLX 	=	-framework OpenGL -framework AppKit -lmlx -L /Users/ujicama/X11

.PHONY:		all	clean	fclean	re	bonus	libft

%.o:		%.c $(HEADER)
			$(CC) $(FLAGS) -I $(HEADER) -c $< -o $@

all:		$(NAME)

bonus:		$(NAME_B)

$(NAME):	$(LIB) $(OBJ) $(HEADER)
			$(CC) $(FLAGS) $(OBJ) $(LIB) $(MLX) -o $(NAME)

$(NAME_B):	$(LIB) $(OBJ_B) $(HEADER)
			$(CC) $(FLAGS) $(OBJ_B) $(LIB) $(MLX) -o $(NAME_B)

$(LIB):
			@$(MAKE) -C libft/
			@$(MAKE) -C mlx/

clean:
			@$(RM) $(OBJ) $(OBJ_B)
			@$(MAKE) -C libft/ clean
			@$(MAKE) -C mlx/ clean

fclean:		clean
			@$(MAKE) -C libft/ fclean
			@$(RM) $(NAME) $(NAME_B)

re:			fclean all