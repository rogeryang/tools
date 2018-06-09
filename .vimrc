set nu
set ai
set tabstop=4
syntax on

set encoding=utf-8
set fileencodings=utf-8,gbk,latin1
set termencoding=utf-8

set hlsearch

map <M-j> :cn<CR>
map <M-k> :cp<CR>
map <M-c> :ccl<CR>
exec "set <M-j>=\ej"
exec "set <M-k>=\ek"
exec "set <M-c>=\ec"

if executable('gtags')
    map <F3> :GtagsCursor<CR>
    map <F4> :Gtags -f %<CR>
endif

if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': '~/.cquery/cache' },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })

endif
