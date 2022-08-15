if !exists("g:potion_commands")
     let g:potion_command = "potion/bin/potion"
endif

function! PotionCompileAndRunFile()
     silent !clear
     execute "!" . g:potion_command . " ". bufname("%")
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>
