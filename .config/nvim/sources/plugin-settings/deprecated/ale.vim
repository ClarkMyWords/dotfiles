
let g:ale_linters = {
            \ 'cpp': ['gcc'],
            \ 'c': ['gcc'],
            \ 'asm': ['gcc'],
            \ 'rust': ['cargo'],
            \ 'vim': ['vint'],
            \ 'bash': ['bashate'],
            \ 'css': ['prettier', 'stylelint'],
            \ 'git': ['gitlint'],
            \ 'javascript': ['eslint', 'prettier'],
            \ 'json': ['eslint', 'prettier'],
            \ 'markdown': ['pandoc', 'prettier']
            \}

let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1

