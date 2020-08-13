; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_write.s                                         :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: kparis <kparis@student.42.fr>              +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/07/14 01:05:10 by kparis            #+#    #+#             ;
;   Updated: 2020/07/22 02:53:52 by kparis           ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

section .text
	global ft_write
	extern handle_error

ft_write:
	mov rax, 1 ;the parameter passed to syscall, 1 is for write
	syscall ;do the syscall and put the return value in rax
	cmp rax,0
	jl handle_error
	ret
