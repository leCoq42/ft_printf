/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_printf.h                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: mhaan <mhaan@student.codam.nl>               +#+                     */
/*                                                   +#+                      */
/*   Created: 2022/10/27 16:09:56 by mhaan         #+#    #+#                 */
/*   Updated: 2022/11/14 14:26:18 by mhaan         ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

// includes
# include "../libft/libft.h"
# include <stdarg.h>
# include <unistd.h>
# include <stdlib.h>

// functions
int	ft_printf(const char *fmt, ...);
int	fmt_switch(char fmt, va_list arg, int *len);
int	put_uns_base(size_t n, int base, char fmt);
int	put_sign_dec(int n, char fmt);
int	put_str_printf(char *str);
int	put_chr_printf(char c);

#endif
