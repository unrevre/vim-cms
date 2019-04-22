syntax keyword CMSSWFWType
            \ int32 vint32 uint32 vuint32 int64 vint64 uint64 vuint64
            \ bool vbool double vdouble string vstring
            \ FileInPath
            \ InputTag VInputTag ESInputTag VESInputTag
            \ EventID VEventID LuminosityBlockID VLuminosityBlockID
            \ EventRange VEventRange LuminosityBlockRange VLuminosityBlockRange
            \ PSet VPSet

syntax keyword CMSSWModule
            \ Service Source SecSource OutputModule
            \ ESSource ESProducer ESPrefer
            \ EDProducer EDFilter EDAnalyzer
            \ EDAlias

syntax keyword CMSSWGroup
            \ Process Schedule Path EndPath Sequence Task

syntax match CMSSWType /\V\<cms.\(untracked.\)\=\w\+\>/
            \ contains=CMSSWFWType,CMSSWModule,CMSSWGroup

syntax keyword CMSSWProcess process

highlight CMSSWFWType cterm=italic ctermfg=DarkGreen
highlight CMSSWModule cterm=italic ctermfg=DarkGreen
highlight CMSSWGroup cterm=italic ctermfg=DarkGreen
highlight CMSSWType cterm=italic ctermfg=DarkGreen

highlight CMSSWProcess cterm=italic ctermfg=DarkMagenta
