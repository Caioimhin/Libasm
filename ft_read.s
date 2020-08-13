; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_read.s                                          :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: kparis <kparis@student.42.fr>              +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/07/14 01:05:10 by kparis            #+#    #+#             ;
;   Updated: 2020/07/22 02:53:52 by kparis           ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

section .text
	global ft_read
	extern handle_error

ft_read:
	mov rax, 0 ;the parameter passed to syscall, 0 is for read
	syscall ;do the syscall and put the return value in rax
	cmp rax,0
	jl handle_error
	ret
