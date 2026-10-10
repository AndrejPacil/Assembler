TITLE MASM Template						(main.asm)

INCLUDE Irvine32.inc
.data


znak DB 1 dup('#')
sprava1 DB "Letter occurences in a string : " , 0
retazec DB "welcome to this scary mansion", 0
medzera DB " ", 0Ah,0


.code
main PROC
	call Clrscr
	mov ecx,0
	mov bl, 0
	call ReadChar
	mov znak, al
	mov edx,offset sprava1
	call WriteString
	call WriteChar
	mov edx, offset medzera
	call WriteString
	
	mov eax, 0
Cyklus:
	
	cmp ecx, lengthof retazec
	jae koniec

	mov bl, retazec[ecx]

	cmp bl, znak
	je Pridaj
	
	inc ecx
	jmp cyklus
	

	
Pridaj:
	inc ecx
	inc eax
	jmp Cyklus

koniec:
	
	call WriteDec

	exit
main ENDP

END main