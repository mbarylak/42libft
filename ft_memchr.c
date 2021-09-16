/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarylak <mbarylak@student.42madrid>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/14 19:28:45 by mbarylak          #+#    #+#             */
/*   Updated: 2021/09/16 13:52:00 by mbarylak         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	size_t	i;
	char	*str;
	char	ch;

	i = 0;
	ch = (char) c;
	str = (char *) s;
	while (str[i] && i < n)
	{
		if (str[i] == ch)
			return (&str[i]);
		i++;
	}
	if (str[i] == ch && i < n)
		return (&str[i]);
	return (NULL);
}
