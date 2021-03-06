

" disable default behavior for php
let g:sacpDefaultFileTypesEnable = { "php":0, "markdown":1, "text":1, "go":0}

" The omnifunc phpcomplete#Complete is very slow, stop using it!
autocmd FileType php call sacp#enableForThisBuffer({ "matches": [
			\ { '=~': '\$\w\{2,}$'     , 'feedkeys': "\<plug>(sacp_cache_fuzzy_bufferkeyword_complete)"},
			\ { '=~': '\v[a-zA-Z]{3,}$', 'feedkeys': "\<plug>(sacp_cache_fuzzy_bufferkeyword_complete)"},
			\ { '=~': '::$'            , 'feedkeys': "\<plug>(sacp_cache_fuzzy_bufferkeyword_complete)"},
			\ { '=~': '->$'            , 'feedkeys': "\<plug>(sacp_cache_fuzzy_bufferkeyword_complete)"},
			\ ]
			\ })

" 1. variables are all defined in current scope, use keyword from current
" buffer for completion
" 2. When the '.' is pressed, use smarter omnicomplete `<C-x><C-o>`, this
" works well with the vim-go plugin
autocmd FileType go call sacp#enableForThisBuffer({ "matches": [
			\ { '=~': '\v[a-zA-Z]{3}$' , 'feedkeys': "\<Plug>(sacp_cache_fuzzy_bufferkeyword_complete)"} ,
			\ { '=~': '\.$'            , 'feedkeys': "\<Plug>(sacp_cache_fuzzy_omnicomplete)", "ignoreCompletionMode":1} ,
			\ ]
			\ })



