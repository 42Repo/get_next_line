/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asuc <asuc@student.42angouleme.fr>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 20:44:35 by asuc              #+#    #+#             */
/*   Updated: 2023/11/06 23:27:52 by asuc             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>
#include <stdio.h>
#include "get_next_line.h"

int	main(void)
{
	char	*line;
	int		fd;
	int 	fd2;

	fd = open("teeeest", O_RDONLY);
	fd2 = open("cacamdr", O_RDONLY);
	line = get_next_line(fd);
	printf("%s\n", line);
	line = get_next_line(fd2);
	printf("%s\n", line);
	line = get_next_line(fd);
	printf("%s\n", line);
	free(line);
	close(fd);
	close(fd2);
	return (0);
}
