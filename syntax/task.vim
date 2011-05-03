if exists("b:current_syntax")
  finish
endif

syntax match taskKeyword "\s@\w\+" contained

syntax match taskWorkingIcon "^-" contained
syntax match taskWorkingIcon "^\s*-" contained
syntax match taskDoneIcon "^•" contained
syntax match taskDoneIcon "^\s*•" contained

syntax match taskWorkingItem "^-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskWorkingItem "^\s*-.*" contains=taskWorkingIcon,taskKeyword
syntax match taskDoneItem "^•.*" contains=taskDoneIcon,taskKeyword
syntax match taskDoneItem "^\s*•.*" contains=taskDoneIcon,taskKeyword

highlight taskKeyword guifg=#96CBFE guibg=NONE gui=NONE ctermfg=blue ctermbg=NONE cterm=NONE

highlight taskWorkingItem guifg=#f6f3e8 guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
highlight taskDoneItem guifg=#555555 guibg=NONE gui=italic ctermfg=grey ctermbg=NONE cterm=NONE

highlight taskWorkingIcon guifg=#FF6C60 guibg=NONE gui=NONE ctermfg=red ctermbg=none cterm=NONE
highlight taskDoneIcon guifg=#555555 guibg=NONE gui=italic ctermfg=grey ctermbg=none cterm=NONE

syntax match sectionTitleLine "^.*:\s*$" contains=sectionTitle
syntax match sectionTitle "\S.*:\s*$"
highlight sectionTitle guifg=#96CBFE guibg=black gui=bold,underline ctermfg=blue ctermbg=black cterm=bold,underline

let b:current_syntax = "task"

