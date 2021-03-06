# install
# Autogenerated from man page /usr/share/man/man1/install.1
complete -c install -l backup --description 'make a backup of each existing destination file.'
complete -c install -s b --description 'like --backup but does not accept an argument.'
complete -c install -s c --description '(ignored).'
complete -c install -s C -l compare --description 'compare each pair of source and destination files, and in some cases, do not …'
complete -c install -s d -l directory --description 'treat all arguments as directory names; create all components of the specifie…'
complete -c install -s D --description 'create all leading components of DEST except the last, or all components of -…'
complete -c install -s g -l group --description 'set group ownership, instead of process\' current group.'
complete -c install -s m -l mode --description 'set permission mode (as in chmod), instead of rwxr-xr-x.'
complete -c install -s o -l owner --description 'set ownership (super-user only).'
complete -c install -s p -l preserve-timestamps --description 'apply access/modification times of SOURCE files to corresponding destination …'
complete -c install -s s -l strip --description 'strip symbol tables.'
complete -c install -l strip-program --description 'program used to strip binaries.'
complete -c install -s S -l suffix --description 'override the usual backup suffix.'
complete -c install -s t -l target-directory --description 'copy all SOURCE arguments into DIRECTORY.'
complete -c install -s T -l no-target-directory --description 'treat DEST as a normal file.'
complete -c install -s v -l verbose --description 'print the name of each directory as it is created.'
complete -c install -l preserve-context --description 'preserve SELinux security context.'
complete -c install -s Z --description 'set SELinux security context of destination file and each created directory t…'
complete -c install -l context --description 'like -Z, or if CTX is specified then set the SELinux or SMACK security contex…'
complete -c install -l help --description 'display this help and exit.'
complete -c install -l version --description 'output version information and exit .'

