; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strlen.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: kparis <kparis@student.42.fr>              +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/07/14 01:05:10 by kparis            #+#    #+#             ;
;   Updated: 2020/07/22 02:53:52 by kparis           ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

segment .text
	global ft_strlen

ft_strlen:
	mov	rax,0 ; rax, return value init to 0
	jmp main_loop

main_loop:
	cmp	BYTE[rdi + rax],0 ;check if src[i] = \0
	je	end
	inc	rax ;i++
	jmp	main_loop
end:
	ret ;return rax = i
