file_name=$1
#remove the extension
without_extension=$(basename --suffix=".asm" $1)
object=${without_extension}".o"
nasm -f elf64 -o ${object} $1
#link
ld -o $without_extension ${object}
