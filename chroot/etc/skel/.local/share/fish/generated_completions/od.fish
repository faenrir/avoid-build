# od
# Autogenerated from man page /usr/share/man/man1/od.1
complete -c od -s A -l address-radix --description 'output format for file offsets; RADIX is one of [doxn], for Decimal, Octal, H…'
complete -c od -l endian --description 'swap input bytes according the specified order.'
complete -c od -s j -l skip-bytes --description 'skip BYTES input bytes first.'
complete -c od -s N -l read-bytes --description 'limit dump to BYTES input bytes.'
complete -c od -s S -l strings --description 'output strings of at least BYTES graphic chars; 3 is implied when BYTES is no…'
complete -c od -s t -l format --description 'select output format or formats.'
complete -c od -s v -l output-duplicates --description 'do not use * to mark line suppression.'
complete -c od -s w -l width --description 'output BYTES bytes per output line; 32 is implied when BYTES is not specified.'
complete -c od -l traditional --description 'accept arguments in third form above.'
complete -c od -l help --description 'display this help and exit.'
complete -c od -l version --description 'output version information and exit .'
complete -c od -s a --description 'same as -t a,  select named characters, ignoring high-order bit.'
complete -c od -s b --description 'same as -t o1, select octal bytes.'
complete -c od -s c --description 'same as -t c,  select printable characters or backslash escapes.'
complete -c od -s d --description 'same as -t u2, select unsigned decimal 2-byte units.'
complete -c od -s f --description 'same as -t fF, select floats.'
complete -c od -s i --description 'same as -t dI, select decimal ints.'
complete -c od -s l --description 'same as -t dL, select decimal longs.'
complete -c od -s o --description 'same as -t o2, select octal 2-byte units.'
complete -c od -s s --description 'same as -t d2, select decimal 2-byte units.'
complete -c od -s x --description 'same as -t x2, select hexadecimal 2-byte units .'

