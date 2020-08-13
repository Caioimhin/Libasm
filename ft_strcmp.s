; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcmp.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: kparis <kparis@student.42.fr>              +#+  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2020/07/14 01:05:10 by kparis            #+#    #+#             ;
;   Updated: 2020/07/22 02:53:52 by kparis           ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

segment .text
	global ft_strcmp

ft_strcmp:
	mov rdx,0
	mov rax,0

main_loop:
	mov al, BYTE[rdi + rdx] ;al = 1 char in rax, the return value
	mov bl, BYTE[rsi + rdx] ;bl = 1 char in a var
	cmp al,0 ;str1[i] = 0, go to end
	je end
	cmp bl,0 ;str2[i] = 0, go to end
	je end
	cmp al,bl ;compare str1[i] and str2[i]
	jne end ;not equal ? go to end
	inc rdx
	jmp main_loop

end:
	sub rax, rbx
	ret

