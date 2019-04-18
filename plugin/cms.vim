if exists("g:loaded_cms") || &compatible
    finish
endif
let g:loaded_cms = 1

if expand('%:p') =~# '/CMSSW_\d\+_\d\+_\d\+\(_\S\+\)\=/src/'
    augroup cmsinc
        autocmd FileType python setlocal include=
                    \\\(\^\\s*\\(from\\\|import\\)\\s\\+
                    \\\zs\\w\\+\\.\\w\\+\\.\\S\\+\\ze\\\|
                    \process.load(\\s*\\('\\\|\"\\)
                    \\\zs\\S\\+\\ze\\('\\\|\"\\)\\s*)\\)
        autocmd FileType python setlocal includeexpr=
                    \substitute(substitute(v:fname,'\\.','/','g'),
                    \'\\(\\w\\+/\\w\\+/\\)','\\1python/','')
        autocmd FileType python let &l:path=
                    \&path . substitute(expand('%:p'),
                    \'/CMSSW_\d\+_\d\+_\d\+/src/.*','\1,','')
    augroup END
endif
