source ~/.vim/helix.vim
source ~/.vim/plugin.vim

autocmd!

syntax on
set number

" Global line completion (not just open buffers. ripgrep required.)
inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
  \ 'prefix': '^.*$',
  \ 'source': 'rg -n ^ --color always',
  \ 'options': '--ansi --delimiter : --nth 3..',
  \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

inoremap <leader>f Files<cr>
inoremap <leader>b Buffers<cr>
nmap <leader>/ :Rg<cr>
