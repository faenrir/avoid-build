# mcpp
# Autogenerated from man page /usr/share/man/man1/mcpp.1
complete -c mcpp -o @MODE --description 'Specify preprocessing mode.  MODE should be one of these 4:.'
complete -c mcpp -o @std --description 'Standard conforming mode.  (default).'
complete -c mcpp -o @poststd -o @post --description 'special \'post-Standard\' mode.'
complete -c mcpp -o @kr --description 'K&R 1st mode.'
complete -c mcpp -o @oldprep -o @old --description '"old_preprocessor" mode (i. e.  "Reiser model" cpp).'
complete -c mcpp -s C --description 'Output also comments.'
complete -c mcpp -s D --description 'Define <macro> as <value> (default:1).'
complete -c mcpp -s e --description 'Change the default multi-byte character encoding to one of: euc_jp, gb2312, k…'
complete -c mcpp -s I --description 'Add <directory> to the #include search list.'
complete -c mcpp -o I- --description 'Unset system or site specific include directories.'
complete -c mcpp -s j --description 'Do not output the source line in diagnostics.'
complete -c mcpp -s M -o MM -o MD -o MMD -o MP -o MQ -o MT -o MF --description 'Output source file dependency line for makefile.'
complete -c mcpp -s N --description 'Don\'t predefine any non-standard macros.'
complete -c mcpp -s o --description 'Output to <file>.'
complete -c mcpp -s P --description 'Don\'t output #line lines.'
complete -c mcpp -s Q --description 'Output diagnostics to "mcpp. err" (default:stderr).'
complete -c mcpp -s U --description 'Undefine <macro>.'
complete -c mcpp -s v --description 'Show version of mcpp.'
complete -c mcpp -s W --description 'Set warning level to <level> (OR of {0,1,2,4,8,16}, default:1).'
complete -c mcpp -s z --description 'Don\'t output the included file, only defining macros.'
complete -c mcpp -s + --description 'Process C++ source.'
complete -c mcpp -s 2 --description 'Enable digraphs.'
complete -c mcpp -s h --description 'Re-define the pre-defined macro __STDC_HOSTED__ as <n>.'
complete -c mcpp -s S --description 'Redefine __STDC__ to <n>, undefine old style macros.'
complete -c mcpp -s V --description 'Redefine __STDC_VERSION__ or __cplusplus to <n>.'
complete -c mcpp -o @compat --description 'Expand recursive macro more than Standard.'
complete -c mcpp -s 3 --description 'Enable trigraphs.'
complete -c mcpp -s K --description 'Embed macro annotations into comments.'
complete -c mcpp -s a --description 'Process "assembler" source.  PRAGMA mcpp has the following #pragma directives.'

