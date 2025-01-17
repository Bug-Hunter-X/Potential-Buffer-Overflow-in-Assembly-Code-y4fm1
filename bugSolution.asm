mov ebx, [someAddress]
mov ecx, [someOtherAddress]
;check if ebx+4 is within bounds before access
mov edx, bufferEnd - ebx
cmp edx, 4
jge check_passed
jmp error_handling
check_passed:
mov eax, [ebx+4]
add eax, ecx
mov [ebx], eax
error_handling: ; handle the error