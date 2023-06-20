# VARIABLE
NAME	= libftprintf.a

CC		= gcc
CFLAGS	= -Wall \
		  -Wextra \
		  -Werror

SRCS_PATH	= srcs/

SRCS		= ft_printf.c		\
			  get_info.c		\
			  get_conversion.c	\
			  printf_char.c		\
			  printf_str.c		\
			  printf_ptr.c		\
			  printf_int.c		\
			  printf_base.c		\
			  printf_pct.c		\
			  utils.c

OBJS_PATH	= objs/
OBJS		= $(addprefix $(OBJS_PATH), $(SRCS:.c=.o))
vpath %.c $(SRCS_PATH)

INC			= -I./libft -I./includes/

LIBFT		= libft/libft.a

# COMPILATION
$(NAME)	: $(LIBFT) $(OBJS)
	@cp libft/libft.a $(NAME)
	@ar cr $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "Libftprinft Done !"

$(LIBFT) :
	@make -C libft/

$(OBJS_PATH)%.o	: %.c
	@mkdir -p $(OBJS_PATH)
	@echo "Compiling : $<"
	@$(CC) $(CFLAGS) $(INC) -c $< -o $@
	
# RULES
all		: $(NAME)

bonus	: $(NAME)

clean	:
	@make -C libft/ clean
	@rm -rf $(OBJS) $(OBJS_PATH)
	@echo "Remove .o"

fclean	: clean
	@make -C libft/ fclean
	@rm -f $(NAME)
	@echo "Remove $(NAME)"

re		: fclean all

.PHONY	: all clean fclean re
