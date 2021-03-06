# passwd
# Autogenerated from man page /usr/share/man/man1/passwd.1
complete -c passwd -s a -l all --description 'This option can be used only with -S and causes show status for all users.'
complete -c passwd -s d -l delete --description 'Delete a user\\*(Aqs password (make it empty).'
complete -c passwd -s e -l expire --description 'Immediately expire an account\\*(Aqs password.'
complete -c passwd -s h -l help --description 'Display help message and exit.'
complete -c passwd -s i -l inactiveINACTIVE --description 'This option is used to disable an account after the password has been expired…'
complete -c passwd -s k -l keep-tokens --description 'Indicate password change should be performed only for expired authentication …'
complete -c passwd -s l -l lock --description 'Lock the password of the named account.'
complete -c passwd -s n -l mindaysMIN_DAYS --description 'Set the minimum number of days between password changes to MIN_DAYS.'
complete -c passwd -s q -l quiet --description 'Quiet mode.'
complete -c passwd -s r -l repositoryREPOSITORY --description 'change password in REPOSITORY repository.'
complete -c passwd -s R -l rootCHROOT_DIR --description 'Apply changes in the CHROOT_DIR directory and use the configuration files fro…'
complete -c passwd -s S -l status --description 'Display account status information.'
complete -c passwd -s u -l unlock --description 'Unlock the password of the named account.'
complete -c passwd -s w -l warndaysWARN_DAYS --description 'Set the number of days of warning before a password change is required.'
complete -c passwd -s x -l maxdaysMAX_DAYS --description 'Set the maximum number of days a password remains valid.'
complete -c passwd -l inactive --description '.'
complete -c passwd -l mindays --description '.'
complete -c passwd -l repository --description '.'
complete -c passwd -l root --description '.'
complete -c passwd -l warndays --description '.'
complete -c passwd -l maxdays --description '.'
complete -c passwd -s 1 --description 'as MAX_DAYS will remove checking a passwords validity.'

