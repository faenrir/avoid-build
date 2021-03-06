# git-add
# Autogenerated from man page /usr/share/man/man1/git-add.1
complete -c git-add -s n -l dry-run --description 'Don\\(cqt actually add the file(s), just show if they exist and/or will be ign…'
complete -c git-add -s v -l verbose --description 'Be verbose.'
complete -c git-add -s f -l force --description 'Allow adding otherwise ignored files.'
complete -c git-add -s i -l interactive --description 'Add modified contents in the working tree interactively to the index.'
complete -c git-add -s p -l patch --description 'Interactively choose hunks of patch between the index and the work tree and a…'
complete -c git-add -s e -l edit --description 'Open the diff vs.  the index in an editor and let the user edit it.'
complete -c git-add -s u -l update --description 'Update the index just where it already has an entry matching <pathspec>.'
complete -c git-add -s A -l all -l no-ignore-removal --description 'Update the index not only where the working tree has a file matching <pathspe…'
complete -c git-add -l no-all -l ignore-removal --description 'Update the index by adding new files that are unknown to the index and files …'
complete -c git-add -s N -l intent-to-add --description 'Record only the fact that the path will be added later.'
complete -c git-add -l refresh --description 'Don\\(cqt add the file(s), but only refresh their stat() information in the in…'
complete -c git-add -l ignore-errors --description 'If some files could not be added because of errors indexing them, do not abor…'
complete -c git-add -l ignore-missing --description 'This option can only be used together with --dry-run.'
complete -c git-add -l no-warn-embedded-repo --description 'By default, git add will warn when adding an embedded repository to the index…'
complete -c git-add -l renormalize --description 'Apply the "clean" process freshly to all tracked files to forcibly add them a…'
complete -c git-add -l chmod --description 'Override the executable bit of the added files.'
complete -c git-add -l pathspec-from-file --description 'Pathspec is passed in <file> instead of commandline args.'
complete -c git-add -l pathspec-file-nul --description 'Only meaningful with --pathspec-from-file.'
complete -c git-add -l literal-pathspecs --description '.'

