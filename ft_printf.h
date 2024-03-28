/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abennar <abennar@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/02 14:48:55 by abennar           #+#    #+#             */
/*   Updated: 2023/12/10 00:02:17 by abennar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include <stdio.h>

int		ft_printf(const char *format, ...);
int		ft_putchar(char c);
int		ft_putstr(char *str);
int		ft_putprsnt(void);
int		ft_putnbr(int n);
int		ft_putusg(unsigned int n);
int		ft_puthex(unsigned int nb, char x);
int		ft_putptr(unsigned long ptr);
int		ft_putnull(void);

#endif