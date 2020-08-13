; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcpy.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: kparis <kparis@student.42.fr>              +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/07/14 01:05:10 by kparis            #+#    #+#             ;
;   Updated: 2020/07/22 02:53:52 by kparis           ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

segment .text
	global ft_strcpy

ft_strcpy:
	mov rdx,0
	mov rcx, 0
	jmp main_loop

main_loop:
	mov cl,BYTE[rsi + rdx] ;mov src[i] in cl
	mov BYTE[rdi + rdx],cl ;mov cl in dst[i]
	cmp BYTE[rsi + rdx],0 ;check if src[i] is equal to \0
	je end
	inc rdx ;i++
	jmp main_loop

end:
	mov rax,rdi
	ret
