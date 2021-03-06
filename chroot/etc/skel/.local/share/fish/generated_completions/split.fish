# split
# Autogenerated from man page /usr/share/man/man1/split.1
complete -c split -s a -l suffix-length --description 'generate suffixes of length N (default 2).'
complete -c split -l additional-suffix --description 'append an additional SUFFIX to file names.'
complete -c split -s b -l bytes --description 'put SIZE bytes per output file.'
complete -c split -s C -l line-bytes --description 'put at most SIZE bytes of records per output file.'
complete -c split -s d --description 'use numeric suffixes starting at 0, not alphabetic.'
complete -c split -l numeric-suffixes --description 'same as -d, but allow setting the start value.'
complete -c split -s x --description 'use hex suffixes starting at 0, not alphabetic.'
complete -c split -l hex-suffixes --description 'same as -x, but allow setting the start value.'
complete -c split -s e -l elide-empty-files --description 'do not generate empty output files with \'-n\'.'
complete -c split -l filter --description 'write to shell COMMAND; file name is $FILE.'
complete -c split -s l -l lines --description 'put NUMBER lines/records per output file.'
complete -c split -s n -l number --description 'generate CHUNKS output files; see explanation below.'
complete -c split -s t -l separator --description 'use SEP instead of newline as the record separator; \'0\' (zero) specifies the …'
complete -c split -s u -l unbuffered --description 'immediately copy input to output with \'-n r/. \'.'
complete -c split -l verbose --description 'print a diagnostic just before each output file is opened.'
complete -c split -l help --description 'display this help and exit.'
complete -c split -l version --description 'output version information and exit .'

