syntax match ROOTType /\V\<\u\w\*_t\>/
syntax match ROOTClass /\V\<T\u\w\*\>/
syntax match ROOTGlobal /\V\<g\u\w\*\>/
syntax match ROOTConstant /\V\<k\u\w\*\>/

" avoid matches in preprocessor statements
syntax cluster cPreProcGroup add=ROOTType,ROOTClass

highlight ROOTType cterm=italic ctermfg=DarkGreen
highlight ROOTClass cterm=italic ctermfg=DarkGreen
highlight ROOTGlobal cterm=italic ctermfg=DarkMagenta
highlight ROOTConstant cterm=italic ctermfg=DarkMagenta
