/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbarylak <mbarylak@student.42madrid>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/21 12:54:45 by mbarylak          #+#    #+#             */
/*   Updated: 2021/09/21 15:43:11 by mbarylak         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_bonus.h"

t_list	*ft_lstnew(void	*content)
{
	struct s_list	*list;

	list = malloc(sizeof (content));
	if (!list)
		return (NULL);
	list->content = content;
	list->next = NULL;
	return (list);
}
