# dbus-test-tool
# Autogenerated from man page /usr/share/man/man1/dbus-test-tool.1
complete -c dbus-test-tool -l session --description 'Connect to the session bus.  This is the default.'
complete -c dbus-test-tool -l system --description 'Connect to the system bus.'
complete -c dbus-test-tool -l name --description 'Before proceeding, request ownership of the well-known bus name NAME, for exa…'
complete -c dbus-test-tool -l no-read --description 'Do not read from the D-Bus socket.'
complete -c dbus-test-tool -l sleep-ms --description 'Block for MS milliseconds before replying to a method call.'
complete -c dbus-test-tool -l dest --description 'Send method calls to the well-known or unique bus name NAME.'
complete -c dbus-test-tool -l count --description 'Send N method calls in total.  The default is 1.'
complete -c dbus-test-tool -l queue --description 'Send N method calls before waiting for any replies, then send one new call pe…'
complete -c dbus-test-tool -l flood --description 'Send all messages without waiting for a reply, equivalent to --queue with an …'
complete -c dbus-test-tool -l no-reply --description 'Set the "no reply desired" flag on the messages.'
complete -c dbus-test-tool -l messages-per-conn --description 'If given, send N method calls on the same connection, then disconnect and rec…'
complete -c dbus-test-tool -l string --description 'The payload of each message is a UTF-8 string.  This is the default.'
complete -c dbus-test-tool -l bytes --description 'The payload of each message is a byte-array.'
complete -c dbus-test-tool -l empty --description 'The messages have no payload.'
complete -c dbus-test-tool -l payload --description 'Use S as the --string or --bytes in the messages.'
complete -c dbus-test-tool -l stdin --description 'Read from standard input until end-of-file is reached, and use that as the --…'
complete -c dbus-test-tool -l message-stdin --description 'Read a complete binary D-Bus method call message from standard input, and use…'
complete -c dbus-test-tool -l random-size --description 'Read whitespace-separated ASCII decimal numbers from standard input, choose o…'
complete -c dbus-test-tool -l seed --description 'Use SEED as the seed for the pseudorandom number generator, to have somewhat …'

