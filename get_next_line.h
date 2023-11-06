/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asuc <asuc@student.42angouleme.fr>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 20:34:50 by asuc              #+#    #+#             */
/*   Updated: 2023/11/06 23:59:29 by asuc             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# include <unistd.h>
# include <stdlib.h>
# include "libft/libft.h"

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 32
# endif

# ifndef OPEN_MAX
#  define OPEN_MAX 256
# endif

char	*get_next_line(int fd);
char	*read_line(int fd, char **buffer);
void	free_null(char **ptr);
char	*join_line(char **buffer, ssize_t nl_index);
char	*ft_substr(char const *s, unsigned int start, size_t len);


#endif
