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

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" Not Disabling highlighting
let g:ale_set_highlights = 1

" Enable completion where available.
" This setting must be set before ALE is loaded.
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 1

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

let g:ale_linters = {
\   'python': ['pylint']
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace', 'reorder-python-imports'],
\   'python' : ['black']
\}
