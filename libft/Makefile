# VARIABLES
NAME	= libft.a
CC		= gcc
CFLAGS	= -Wall \
		  -Wextra \
		  -Werror

SRCS	= ft_isalpha.c		\
		  ft_isdigit.c		\
		  ft_isalnum.c		\
		  ft_isascii.c		\
		  ft_isprint.c		\
		  ft_toupper.c		\
		  ft_tolower.c		\
		  ft_strlen.c		\
		  ft_strlcpy.c		\
		  ft_strlcat.c		\
		  ft_strchr.c		\
		  ft_strrchr.c		\
		  ft_strncmp.c		\
		  ft_strnstr.c		\
		  ft_strdup.c		\
		  ft_memset.c		\
		  ft_bzero.c		\
		  ft_memcpy.c		\
		  ft_memmove.c		\
		  ft_memchr.c		\
		  ft_memcmp.c		\
		  ft_atoi.c			\
		  ft_calloc.c		\
		  ft_substr.c		\
		  ft_strjoin.c		\
		  ft_strtrim.c		\
		  ft_strmapi.c		\
		  ft_striteri.c		\
		  ft_split.c		\
		  ft_itoa.c			\
		  ft_putchar_fd.c	\
		  ft_putstr_fd.c	\
		  ft_putendl_fd.c	\
		  ft_putnbr_fd.c	\
		  ft_strndup.c		\
		  ft_appendchr.c	\
		  ft_uitoa_base.c

SRCSB	= ft_lstnew.c		\
		  ft_lstadd_front.c	\
		  ft_lstsize.c		\
		  ft_lstlast.c		\
		  ft_lstadd_back.c	\
		  ft_lstdelone.c	\
		  ft_lstclear.c		\
		  ft_lstiter.c		\
		  ft_lstmap.c

OBJS	= $(SRCS:.c=.o)
OBJSB	= $(SRCSB:.c=.o)

INCLUDE	= libft.h

# COMPILATION
.c.o	:
	@echo "Compiling : $<"
	@$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME)	: $(OBJS)
	@ar cr $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "Libft Done !"

bonus	: $(NAME) $(OBJSB)
	@ar cr $(NAME) $(OBJSB)
	@ranlib $(NAME)
	@echo "Libft Done with bonus!"

# RULES
all		: $(NAME)

clean	:
	@rm -f $(OBJS) $(OBJSB)
	@echo "Remove .o"

fclean	: clean
	@rm -f $(NAME)
	@echo "Remove $(NAME)"

re		: fclean all

rebonus : fclean bonus

.PHONY	: all clean fclean re bonus rebonus
