; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   handle_error.s                                     :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: kparis <kparis@student.42.fr>              +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/07/14 01:05:10 by kparis            #+#    #+#             ;
;   Updated: 2020/07/22 02:53:52 by kparis           ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

section .text
	global handle_error
	extern __errno_location

handle_error:
	neg rax ;rax is negative, we change it into positive value
	mov r8, rax ;mov rax in r8 for errno call
	call __errno_location
	mov [rax], r8 ;put the value in r8 in rax
	mov rax, -1 ;ret -1
	ret
