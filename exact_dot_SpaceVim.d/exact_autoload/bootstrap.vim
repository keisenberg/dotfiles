" bootstrap.vim :: SpaceVim :: Bootstrap configuration


"
"" Directive :: Function

" Function :: bootstrap#before
function! bootstrap#before() abort
    " Notify :: Informative
    call SpaceVim#logger#info("Initializing :: Function :: bootstrap#before")


    " SpaceVim :: Custom binding :: Group :: o -> +Specials
    call SpaceVim#custom#SPCGroupName(['o'], '+Specials')

    " SpaceVim :: Custom binding :: Group :: +Specials :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['o', '2'], ':set tabstop=2', 'Indent :: 2 spaces', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', '4'], ':set tabstop=4', 'Indent :: 4 spaces', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'M'], ':MarkedToggle!', 'Marked 2 :: Toggle', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'S'], ':%sort', 'Sort :: Forward', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'U'], ':SPUpdate', 'SpaceVim :: Update', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'W'], ':ToggleWorkspace', 'Workspace:: Toggle', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'a'], ':set filetype=yaml.ansible', 'Syntax :: Ansible YAML', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'f'], ':Shfmt', 'Shfmt :: Format buffer', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'g'], ':Goyo', 'Goyo :: Toggle', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'h'], ':Limelight!!', 'Limelight :: Toggle', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'k'], ':nmap', 'Keybindings :: NORMAL', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'l'], ':SPLayer -l', 'SpaceVim :: Layers', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'm'], ':call MaximizeActiveWindowToggle()', 'Maximize window :: Toggle', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'p'], ':set paste!', 'Toggle :: Paste mode', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'q'], ':qall!', 'Quit :: Force', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'r'], ":'<,'>call Renumber()", 'Renumber list', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 's'], ':set syntax=sh', 'Syntax :: Shell', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'u'], ':MundoToggle', 'Toggle :: Mundo', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'w'], ':wq!', 'Write / Quit :: Force', 1)

    " SpaceVim :: Custom binding :: Group :: o -> c -> +Colors
    call SpaceVim#custom#SPCGroupName(['o', 'c'], '+Colors')

    " SpaceVim :: Custom binding :: Group :: +Specials -> +Colors :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['o', 'c', 's'], ':color solarized8', 'solarized8', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'c', 'g'], ':color gruvbox8', 'gruvbox8', 1)

    " SpaceVim :: Custom binding :: Group :: o -> g -> +Git
    call SpaceVim#custom#SPCGroupName(['o', 'g'], '+Git')

    " SpaceVim :: Custom binding :: Group :: +Specials -> +Git :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['o', 'g', 'c'], ':!git add --all && git commit', 'Commit :: Manual', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'g', 'p'], ':!git aa && git pp', 'Push :: Auto', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 'g', 'u'], ':!git pp', 'Pull :: Push', 1)

    " SpaceVim :: Custom binding :: Group :: o -> t -> +Spelling
    call SpaceVim#custom#SPCGroupName(['o', 't'], '+Spelling')

    " SpaceVim :: Custom binding :: Group :: +Specials -> +Spelling :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['o', 't', '4'], ':EnableAutocorrect', 'Autocorrect :: Enable', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 't', '5'], ':DisableAutocorrect', 'Autocorrect :: Disable', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 't', 'e'], ':set spelllang=en', 'Language :: EN', 1)
    call SpaceVim#custom#SPC('nnoremap', ['o', 't', 'n'], ':set spelllang=nl', 'Language :: NL', 1)

    " SpaceVim :: Custom binding :: Group :: v -> +Clap
    call SpaceVim#custom#SPCGroupName(['v'], '+Clap')

    " SpaceVim :: Custom binding :: Group :: +Clap :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['v', 'b'], ':Clap buffers', 'Open buffers', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'f'], ':Clap files +no-cache ++finder=fd --exclude .git --hidden --no-ignore-vcs --type f', 'Files', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'i'], ':Clap git_files', 'Git files', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'k'], ':Clap colors', 'Colorschemes', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'l'], ':Clap lines', 'Loaded buffers lines', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'p'], ':Clap providers', 'Providers', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'r'], ':Clap registers', 'Registers', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 's'], ':Clap grep +no-cache', 'Grep on the fly', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'w'], ':Clap windows', 'Open windows', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'y'], ':Clap yanks', 'Yank stack', 1)

    " SpaceVim :: Custom binding :: Group :: v -> g -> +Git
    call SpaceVim#custom#SPCGroupName(['v', 'g'], '+Git')

    " SpaceVim :: Custom binding :: Group :: +Clap -> +Git :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['v', 'g', 'b'], ':Clap bcommits', 'Commits :: Buffer', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'g', 'c'], ':Clap commits', 'Commits :: Base', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'g', 'f'], ':Clap git_files', 'Managed files', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'g', 'u'], ':Clap git_diff_files', 'Uncommited files', 1)

    " SpaceVim :: Custom binding :: Group :: v -> h -> +history
    call SpaceVim#custom#SPCGroupName(['v', 'h'], '+history')

    " SpaceVim :: Custom binding :: Group :: +Clap -> +History :: Keys
    call SpaceVim#custom#SPC('nnoremap', ['v', 'h', 'b'], ':Clap history', 'Open buffers', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'h', 'c'], ':Clap command_history', 'Command history', 1)
    call SpaceVim#custom#SPC('nnoremap', ['v', 'h', 's'], ':Clap search_history', 'Search history', 1)


    " SpaceVim :: Insert mode :: Unmap key bindings
    iunmap jk


    " Notify :: Informative
    call SpaceVim#logger#info("Initialized :: Function :: bootstrap#before")
endfunction

" Function :: bootstrap#after
function! bootstrap#after() abort
    " Notify :: Informative
    call SpaceVim#logger#info("Initializing :: Function :: bootstrap#after")

    " Function :: GetScriptNumber :: Dynamically retrieve script number (<SNR>)
    function! GetScriptNumber(script_name)
        redir => scriptnames
        silent! scriptnames
        redir END

        for script in split(l:scriptnames, "\n")
            if l:script =~ a:script_name
                return str2nr(split(l:script, ":")[0])
            endif
        endfor

        return -1
    endfunc

    " Function :: ClapFormat :: Change default vim-clap prompt
    function! ClapFormat() abort
        if exists('g:__clap_provider_cwd')
            let cwd = g:__clap_provider_cwd
        else
            let cwd = getcwd()
        endif
        return '%spinner% :: %forerunner_status% :: %provider_id% :: '.(cwd).' :: '
    endfunction

    " Function :: ClapPreviewToggle :: Toggle options in preview window :: Kept for historical purposes
    function! ClapPreviewToggle() abort
        call win_execute(g:clap.preview.winid, 'setlocal wrap')
    endfunction

    " Funtion :: Maximize active window :: Toggle
    function! MaximizeActiveWindowToggle()
        if exists("s:maximize_session")
            exec "source " . s:maximize_session
            call delete(s:maximize_session)
            unlet s:maximize_session
            let &hidden=s:maximize_hidden_save
            unlet s:maximize_hidden_save
        else
            let s:maximize_hidden_save = &hidden
            let s:maximize_session = tempname()
            exec "mksession! " . s:maximize_session
            only
        endif
    endfunction


    " Autocommand group :: higlightKeys :: Higlight specified keys in comments
    augroup highlightKeys
      autocmd!
      autocmd Syntax * syntax match highlightKeys /\v\_.<(BUG|FIXME|HACK|NOTE|TODO|XXX).*/hs=s+1 containedin=.*Comment
    augroup END


    " Option :: Vim :: 2 :: Moving around, searching and patterns
    set whichwrap+=<,>,h,l,[,]                                  " List of flags specifying which commands wrap to another line
    set ignorecase                                              " Ignore case when using a search pattern
    set smartcase                                               " Override 'ignorecase' when pattern has upper case characters

    " Option :: Vim :: 4 :: Displaying text
    set scrolloff=4                                             " Number of screen lines to show around the cursor
    set nolinebreak                                             " Disable wrapping long lines at a character in 'breakat'
    set sidescroll=1                                            " Minimal number of columns to scroll horizontally
    set sidescrolloff=15                                        " Minimal number of columns to keep left and right of the cursor
    set listchars+=space:·                                      " Add list of strings used for list mode
    set numberwidth=1                                           " Number of columns to use for the line number

    " Option :: Vim :: 5 :: Syntax, highlighting and spelling
    filetype on                                                 " Enable filetype plugins
    filetype plugin indent on                                   " Enable filetype based indentation
    set cursorline                                              " Highlight the screen line of the cursor
    set cursorcolumn                                            " Columns to the highlight
    set spelllang=en                                            " List of accepted languages

    " Option :: Vim :: 6 :: Multiple windows
    set splitbelow                                              " A new window is put below the current one
    set splitright                                              " A new window is puut right of the current one

    " Option :: Vim :: 8 :: Terminal
    set title                                                   " Show info in the window title
    set titlestring=Vim:\ %F                                    " String to be used for the window title

    " Option :: Vim :: 9 :: Using the mouse
    set mouse=a                                                 " List of flags for using the mouse
    set ttymouse=xterm2                                         " Terminal name that supports mouse mode

    " Option :: Vim :: 11 :: Messages and info
    set showcmd                                                 " Show (partial) command keys in the status line

    " Option :: Vim :: 12 :: Selecting text
    set clipboard=unnamed,unnamedplus                           " Use the + buffer

    " Option :: Vim :: 13 :: Editing text
    set textwidth=0                                             " Line length above which to break a line
    set completeopt+=noselect,preview                           " Add preview window for Insert mode completion

    " Option :: Vim :: 14 :: Tabs and indenting
    set nocindent                                               " Disable indenting for C code

    " Option :: Vim :: 15 :: Folding
    set foldlevelstart=10                                       " Value for 'foldlevel' when starting to edit a file
    set foldmethod=manual                                       " Fold manually
    set foldminlines=25                                         " Minimum number of screen lines for a fold to be closed
    set foldnestmax=10                                          " Maximum fold depth for when 'foldmethod' is 'indent' or 'syntax'

    " Option :: Vim :: 17 :: Mapping
    set ttimeout                                                " Allow timing out halfway into a key code
    set timeoutlen=1000                                         " Time in milliseconds for 'timeout' (influences guide buffer display timeout)

    " Option :: Vim :: 18 :: Reading and writing files
    set fileformats=unix,dos,mac                                " List of file formats to look for when editing a file
    set writebackup                                             " Write a backup fiile before overwriting a file

    " Option :: Vim :: 19 :: The swap fiile
    set updatetime=250                                          " Time in milliseconds after which the swap file will be updated

    " Option :: Vim :: 20 :: Command line editing
    set history=25                                              " How many command lines are remembered
    set wildmode=longest:full,full                              " Specifies how command line completion works

    " Option :: Vim :: 25 :: Various
    set sessionoptions+=globals                                 " List of words that specifies what to put in a session file
    set sessionoptions-=options                                 " List of words that specifies what not to put in a session file


    " Option :: Plugin :: ansible-vim
    let g:ansible_attribute_highlight = "ab"
    let g:ansible_name_highlight = 'b'
    let g:ansible_extra_keywords_highlight = 1
    let g:ansible_normal_keywords_highlight = 'Constant'
    let g:ansible_with_keywords_highlight = 'Constant'
    let g:ansible_unindent_after_newline = 1

    " Option :: Plugin :: choosewin
    let g:choosewin_overlay_clear_multibyte = 1
    let g:choosewin_overlay_enable = 1
    let g:choosewin_return_on_single_win = 1
    let g:choosewin_statusline_replace = 1

    " Option :: Plugin :: FlyGrep
    let g:FlyGrep_enable_statusline = 1
    let g:FlyGrep_search_tools = ['rg']

    " Option :: Plugin :: FzfFiles
    " TODO :: autoload/SpaceVim/layers/fzf.vim :: SpaceVim/SpaceVim :: PR :: #3491 :: call fzf#run(s:wrap('files', {'sink': 'e', 'options': '--reverse' . ' ' . get(g:, 'fzf_files_options', ''), 'down' : '40%'}))
    let g:fzf_files_options = '--exact --inline-info --preview-window right:65%:noborder --preview "bat --style=changes,numbers,snip --wrap=never {}"'

    " Option :: Plugin :: git-blame
    nnoremap <Leader>s :call gitblame#echo()<CR>

    " Option :: Plugin :: git-messenger
    let g:git_messenger_always_into_popup = v:true
    let g:git_messenger_include_diff = "current"

    " Option :: Plugin :: Goyo
    let g:goyo_width = '75%'
    let g:goyo_height = '90%'

    " Option :: Plugin :: indentLine
    let g:indentLine_color_gui = '#df8700'

    " Option :: Plugin :: NERDTree
    let g:NERDTreeIgnore = [ '\.DS_Store$' ]
    let g:NERDTreeMouseMode = 3
    let g:NERDTreeShowLineNumbers = 1
    let g:NERDTreeWinSize = 65
    let g:NERDTreeQuitOnOpen = 1

    " Option :: Plugin :: Neoformat
    let g:neoformat_basic_format_align = 1
    let g:neoformat_basic_format_retab = 1
    let g:neoformat_basic_format_trim = 1
    let g:neoformat_only_msg_on_error = 1
    let g:neoformat_run_all_formatters = 1

    " Option :: Plugin :: Neomake
    let g:neomake_highlight_columns = 1
    let g:neomake_highlight_lines = 1
    let g:neomake_open_list = 0
    call neomake#configure#automake('inrw')

    " Option :: Plugin :: shfmt
    let g:shfmt_opt = '-bn -i 4 -ln bash -sr'

    " Option :: Plugin :: vim-clap
    autocmd User ClapOnEnter call ClapPreviewToggle()
    let g:ClapPrompt = function('ClapFormat')
    let g:clap_disable_bottom_top = 1
    let g:clap_layout = { 'width': '88%', 'height': '40%', 'row': '25%', 'col': '8%' }
    let g:clap_on_move_delay = 50
    let g:clap_popup_border = 'nil'
    let g:clap_popup_input_delay = 50
    let g:clap_preview_size = { '*': 5, 'files':12, 'grep': 10 }
    let g:clap_provider_grep_executable = 'rg'
    let g:clap_provider_grep_opts = '--glob !.git/ --hidden --no-heading --smart-case --vimgrep'
    let g:clap_selected_sign = { 'text': 'ﱣ ', 'texthl': "ClapSelectedSign", "linehl": "ClapSelected" }
    let g:clap_theme = 'solarized_dark'

    " Option :: Plugin :: vim-diminactive
    let g:diminactive = 1
    let g:diminactiveWindowOn = 1
    let g:diminactiveBufferOn = 1
    let g:diminactive_use_syntax = 0
    let g:diminactive_enable_focus = 1

    " Option :: Plugin :: vim-gitgutter
    let g:gitgutter_sign_column_always = 1
    let g:gitgutter_sign_priority = 5

    " Option :: Plugin :: vim-mundo
    let g:mundo_close_on_revert = 1
    let g:mundo_inline_graph = 0
    let g:mundo_mirror_graph = 1
    let g:mundo_playback_delay = 150
    let g:mundo_preview_bottom = 1
    let g:mundo_preview_height = 25
    let g:mundo_return_on_revert = 0
    let g:mundo_verbose_graph = 0
    let g:mundo_width = 35

    " Option :: Plugin :: vim-shfmt
    let g:shfmt_extra_args = '-bn -i 4 -ln bash -sr'
    let g:shfmt_fmt_on_save = 0

    " Option :: Plugin :: vim-workspace
    let g:workspace_autosave_always = 0
    let g:workspace_autosave_untrailspaces = 0
    let g:workspace_persist_undo_history = 0
    let g:workspace_session_directory = $HOME . '/.cache/vim/vim-workspace/sessions/'
    let g:workspace_session_disable_on_args = 1

    " Option :: Plugin :: SpaceVim // Ensure this line is called last, but still before key mappings / key bindings / autocmd directives
    call eval(printf("<SNR>%d_toggle_whitespace()", GetScriptNumber("ui.vim")))


    " Option :: Leader :: SpaceVim menu key bindings:: Descriptions
    let g:_spacevim_mappings.g = {'name' : 'Git messenger'}
    let g:_spacevim_mappings.s = ['normal! "+s', 'Git blame']
    let g:_spacevim_mappings.t = {'name' : 'Table Mode'}


    " Highlight sections based on predefined directives :: highlightKeys
    highlight link highlightKeys Special


    " Autocommand :: FileType :: gitcommit :: Initialize Git commit environment
    autocmd FileType gitcommit set colorcolumn=+1
    autocmd FileType gitcommit set colorcolumn+=51
    autocmd FileType gitcommit set textwidth=72
    autocmd FileType gitcommit call eval(printf("<SNR>%d_toggle_whitespace()", GetScriptNumber("ui.vim")))

    " Autocommand :: FileType :: mail :: Initialize mail edit environment
    autocmd FileType mail set spell
    autocmd FileType mail EnableAutocorrect
    autocmd FileType mail call SpaceVim#layers#core#statusline#toggle_mode('spell-checking')
    autocmd FileType mail call eval(printf("<SNR>%d_toggle_whitespace()", GetScriptNumber("ui.vim")))


    " Notify :: Informative
    call SpaceVim#logger#info("Initialized :: Function :: bootstrap#after")
endfunction
