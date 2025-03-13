" Bits of my old rc

inoremap jk <Esc>
set number

autocmd BufNewFile,BufRead *.v,*.sv set syntax=verilog
autocmd BufRead,BufNewFile *.jl set filetype=julia

" Double space for clear highlighting
nnoremap <Space><Space> :nohlsearch<cr>
nnoremap <Space><w> :nohlsearch<cr>

nmap <Space>w :w!<cr>

try
    colorscheme dracula
catch
endtry

nmap  <leader>e :Explore<cr>
set noshowmode

nnoremap <silent> <C-j> :<C-U>TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :<C-U>TmuxNavigateUp<cr>
nnoremap <silent> <C-h> :<C-U>TmuxNavigateLeft<cr>
nnoremap <silent> <C-l> :<C-U>TmuxNavigateRight<cr>

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" Not Disabling highlighting
let g:ale_set_highlights = 1

" Enable completion where available.
" This setting must be set before ALE is loaded.
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 1
let g:ale_python_auto_virtualenv = 1
let g:ale_lint_on_enter = 1

let g:ale_linters = {
\   'python': ['pylint','mypy']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace', 'reorder-python-imports'],
\   'python' : ['black']
\}

" seeing where the diffs are live! kewl
let g:gitgutter_enabled=1

" show . files
let NERDTreeShowHidden=1

" bringing up more detail for ale
nmap  <leader>m :ALEDetail<cr>

" auto close loclist window
augroup CloseLoclistWindowGroup
    autocmd!
    autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

" instant markdown over ssh maybe?
let g:instant_markdown_open_to_the_world = 1

" nicer msg formats
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_sign_column_always = 1
