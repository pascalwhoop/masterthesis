let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
inoremap <silent> <Plug>IMAP_JumpBack :call IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
nmap <NL> <Plug>IMAP_JumpForward
vmap <NL> <Plug>IMAP_JumpForward
nnoremap <silent>  :CtrlP
xnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
xnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
xnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
xnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
xnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
xnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
xnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
xnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
xnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
xnoremap <silent> ,al :call VEnclose('', '', '\begin{align}', '\end{align}')
xnoremap <silent> ,as :call VEnclose('', '', '\begin{align*}', '\end{align*}')
xnoremap <silent> ,ad :call VEnclose('', '', '\begin{aligned}', '\end{aligned}')
xnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
xnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
xnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
xnoremap <silent> ,es :call VEnclose('', '', '\begin{equation*}', '\end{equation*}')
xnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
xnoremap ,se :call VEnclose('\section{', '}', '', '')
xnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
xnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
xnoremap <silent> ,ce :call VEnclose('{\centering ', '}', '\begin{center}', '\end{center}')
xnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
xnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
xnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
xnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
xnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
xnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
xnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
xnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
xnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
xnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
xnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
xnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
xnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
xnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
xnoremap ,pa :call VEnclose('\part{', '}', '', '')
xnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
xnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
xnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
xnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
xnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
xnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
xnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
xnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
xnoremap , :call ExecMap(',', 'v')
nnoremap \d :YcmShowDetailedDiagnostic
xnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
xnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
xnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
xnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
xnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
xnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
xnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
xnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
xnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
xnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
xnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
xnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
xnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
xnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
xnoremap ` :call ExecMap('`', 'v')
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack :call IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>:call IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>:call IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_JumpBack `<:call IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug> i
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1, 1)
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vmap <BS> "-d
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap <NL> <Plug>IMAP_JumpForward
abbr RL \ac{RL}
abbr DRL \ac{Deep-RL}
abbr NN \ac{NN}
abbr MDP \ac{MDP}
abbr POMDP \ac{POMDP}
abbr AI \ac{AI}
abbr PPO \ac{PPO}
abbr GPU \ac{GPU}
abbr CPU \ac{CPU}
abbr TF \ac{TF}
abbr TPU \ac{TPU}
abbr SOTA \ac{SOTA}
abbr PowerTAC \ac{PowerTAC}
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set completefunc=youcompleteme#CompleteFunc
set completeopt=preview,menuone
set cpoptions=aAceFsB
set errorfile=~/Documents/Code/University/masterthesis/src/chaps/body.log
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Menlo\ Regular:h13
set guitablabel=%M%t
set helplang=en
set imsearch=0
set langmenu=none
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/vim-latex,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/vim-latex/after
set spelllang=en_us
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set wildignore=*/node_modules/*
set window=64
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Code/masterthesis/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +30 chaps/body.tex
badd +5 bibliography.bib
badd +2 acronyms.tex
badd +1 thesis.vim
badd +5 ~/Documents/Code/masterthesis/.gitignore
badd +11 cover.tex
badd +0 abstract.tex
badd +0 proposal.tex
argglobal
silent! argdel *
set stal=2
edit chaps/body.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 103 + 102) / 205)
exe 'vert 2resize ' . ((&columns * 60 + 102) / 205)
exe '3resize ' . ((&lines * 34 + 32) / 65)
exe 'vert 3resize ' . ((&columns * 40 + 102) / 205)
exe '4resize ' . ((&lines * 28 + 32) / 65)
exe 'vert 4resize ' . ((&columns * 40 + 102) / 205)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("equation*")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("equation")
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <Plug>(vimtex-delim-close) =vimtex#delim#close()
inoremap <buffer> <silent> <Plug>(vimtex-cmd-create) =vimtex#cmd#create_insert()
omap <buffer> <silent> % <Plug>(vimtex-%)
xmap <buffer> <silent> % <Plug>(vimtex-%)
nmap <buffer> <silent> % <Plug>(vimtex-%)
nmap <buffer> <silent> K <Plug>(vimtex-doc-package)
omap <buffer> <silent> [[ <Plug>(vimtex-[[)
omap <buffer> <silent> [] <Plug>(vimtex-[])
xmap <buffer> <silent> [[ <Plug>(vimtex-[[)
xmap <buffer> <silent> [] <Plug>(vimtex-[])
nmap <buffer> <silent> [[ <Plug>(vimtex-[[)
nmap <buffer> <silent> [] <Plug>(vimtex-[])
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> <silent> \lm <Plug>(vimtex-imaps-list)
nmap <buffer> \lv <Plug>Tex_View
nmap <buffer> <silent> \lY <Plug>(vimtex-labels-toggle)
nmap <buffer> <silent> \ly <Plug>(vimtex-labels-open)
nmap <buffer> <silent> \lT <Plug>(vimtex-toc-toggle)
nmap <buffer> <silent> \lt <Plug>(vimtex-toc-open)
nmap <buffer> <silent> \lG <Plug>(vimtex-status-all)
nmap <buffer> <silent> \lg <Plug>(vimtex-status)
nmap <buffer> <silent> \lC <Plug>(vimtex-clean-full)
nmap <buffer> <silent> \lc <Plug>(vimtex-clean)
nmap <buffer> <silent> \le <Plug>(vimtex-errors)
nmap <buffer> <silent> \lK <Plug>(vimtex-stop-all)
nmap <buffer> <silent> \lk <Plug>(vimtex-stop)
xmap <buffer> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <silent> \lo <Plug>(vimtex-compile-output)
nmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> <silent> \lq <Plug>(vimtex-log)
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> <silent> \lX <Plug>(vimtex-reload-state)
nmap <buffer> <silent> \lx <Plug>(vimtex-reload)
nmap <buffer> <silent> \lI <Plug>(vimtex-info-full)
nmap <buffer> <silent> \li <Plug>(vimtex-info)
omap <buffer> <silent> ][ <Plug>(vimtex-][)
omap <buffer> <silent> ]] <Plug>(vimtex-]])
xmap <buffer> <silent> ][ <Plug>(vimtex-][)
xmap <buffer> <silent> ]] <Plug>(vimtex-]])
nmap <buffer> <silent> ][ <Plug>(vimtex-][)
nmap <buffer> <silent> ]] <Plug>(vimtex-]])
omap <buffer> <silent> aP <Plug>(vimtex-aP)
xmap <buffer> <silent> aP <Plug>(vimtex-aP)
omap <buffer> <silent> a$ <Plug>(vimtex-a$)
xmap <buffer> <silent> a$ <Plug>(vimtex-a$)
omap <buffer> <silent> ae <Plug>(vimtex-ae)
xmap <buffer> <silent> ae <Plug>(vimtex-ae)
omap <buffer> <silent> ad <Plug>(vimtex-ad)
xmap <buffer> <silent> ad <Plug>(vimtex-ad)
omap <buffer> <silent> ac <Plug>(vimtex-ac)
xmap <buffer> <silent> ac <Plug>(vimtex-ac)
nmap <buffer> <silent> csd <Plug>(vimtex-delim-change-math)
nmap <buffer> <silent> csc <Plug>(vimtex-cmd-change)
nmap <buffer> <silent> cse <Plug>(vimtex-env-change)
nmap <buffer> <silent> cs$ <Plug>(vimtex-env-change-math)
nmap <buffer> <silent> dsd <Plug>(vimtex-delim-delete)
nmap <buffer> <silent> dsc <Plug>(vimtex-cmd-delete)
nmap <buffer> <silent> dse <Plug>(vimtex-env-delete)
nmap <buffer> <silent> ds$ <Plug>(vimtex-env-delete-math)
omap <buffer> <silent> iP <Plug>(vimtex-iP)
xmap <buffer> <silent> iP <Plug>(vimtex-iP)
omap <buffer> <silent> i$ <Plug>(vimtex-i$)
xmap <buffer> <silent> i$ <Plug>(vimtex-i$)
omap <buffer> <silent> ie <Plug>(vimtex-ie)
xmap <buffer> <silent> ie <Plug>(vimtex-ie)
omap <buffer> <silent> id <Plug>(vimtex-id)
xmap <buffer> <silent> id <Plug>(vimtex-id)
omap <buffer> <silent> ic <Plug>(vimtex-ic)
xmap <buffer> <silent> ic <Plug>(vimtex-ic)
xmap <buffer> <silent> tsD <Plug>(vimtex-delim-toggle-modifier-reverse)
nmap <buffer> <silent> tsD <Plug>(vimtex-delim-toggle-modifier-reverse)
xmap <buffer> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <silent> tsc <Plug>(vimtex-cmd-toggle-star)
nmap <buffer> <silent> tse <Plug>(vimtex-env-toggle-star)
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
xnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nnoremap <buffer> <Plug>(vimtex-view) :call b:vimtex.viewer.view('')
nnoremap <buffer> <Plug>(vimtex-toc-toggle) :call b:vimtex.toc.toggle()
nnoremap <buffer> <Plug>(vimtex-toc-open) :call b:vimtex.toc.open()
onoremap <buffer> <silent> <Plug>(vimtex-aP) :call vimtex#text_obj#sections(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-iP) :call vimtex#text_obj#sections(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-aP) :call vimtex#text_obj#sections(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-iP) :call vimtex#text_obj#sections(1, 1)
onoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0, 0,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1, 0,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0, 1,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1, 1,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0, 0,'env_tex')
onoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1, 0,'env_tex')
xnoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0, 1,'env_tex')
xnoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1, 1,'env_tex')
onoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0, 0,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1, 0,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0, 1,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1, 1,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0, 0)
onoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1, 0)
xnoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0, 1)
xnoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1, 1)
nnoremap <buffer> <Plug>(vimtex-reload-state) :VimtexReloadState
nnoremap <buffer> <Plug>(vimtex-toggle-main) :VimtexToggleMain
nnoremap <buffer> <Plug>(vimtex-errors) :call vimtex#qf#toggle()
xnoremap <buffer> <silent> <SNR>79_(vimtex-[[) :call vimtex#motion#next_section(0,1,1)
xnoremap <buffer> <silent> <SNR>79_(vimtex-[]) :call vimtex#motion#next_section(1,1,1)
xnoremap <buffer> <silent> <SNR>79_(vimtex-][) :call vimtex#motion#next_section(1,0,1)
xnoremap <buffer> <silent> <SNR>79_(vimtex-]]) :call vimtex#motion#next_section(0,0,1)
nnoremap <buffer> <silent> <Plug>(vimtex-[[) :call vimtex#motion#next_section(0,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-[]) :call vimtex#motion#next_section(1,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-][) :call vimtex#motion#next_section(1,0,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]]) :call vimtex#motion#next_section(0,0,0)
xnoremap <buffer> <silent> <SNR>79_(vimtex-%) :call vimtex#motion#find_matching_pair(1)
nnoremap <buffer> <silent> <Plug>(vimtex-%) :call vimtex#motion#find_matching_pair()
nnoremap <buffer> <SNR>79_(V) V
nnoremap <buffer> <SNR>79_(v) v
nnoremap <buffer> <Plug>(vimtex-reload) :VimtexReload
nnoremap <buffer> <Plug>(vimtex-log) :VimtexLog
nnoremap <buffer> <Plug>(vimtex-labels-toggle) :call b:vimtex.labels.toggle()
nnoremap <buffer> <Plug>(vimtex-labels-open) :call b:vimtex.labels.open()
nnoremap <buffer> <Plug>(vimtex-info-full) :VimtexInfo!
nnoremap <buffer> <Plug>(vimtex-info) :VimtexInfo
nnoremap <buffer> <Plug>(vimtex-imaps-list) :call vimtex#imaps#list()
nnoremap <buffer> <silent> <Plug>(vimtex-env-toggle-star) :call vimtex#env#toggle_star()
nnoremap <buffer> <silent> <Plug>(vimtex-env-change-math) :call vimtex#env#change_prompt('env_math')
nnoremap <buffer> <silent> <Plug>(vimtex-env-delete-math) :call vimtex#env#delete('env_math')
nnoremap <buffer> <silent> <Plug>(vimtex-env-change) :call vimtex#env#change_prompt('env_tex')
nnoremap <buffer> <silent> <Plug>(vimtex-env-delete) :call vimtex#env#delete('env_tex')
nnoremap <buffer> <Plug>(vimtex-doc-package) :VimtexDocPackage
nnoremap <buffer> <silent> <Plug>(vimtex-delim-delete) :call vimtex#delim#delete()
nnoremap <buffer> <silent> <Plug>(vimtex-delim-change-math) :call vimtex#delim#change_prompt()
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier-reverse) :call vimtex#delim#toggle_modifier_visual({'dir': -1})
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier_visual()
nnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier-reverse) :call vimtex#delim#toggle_modifier({'dir': -1})
nnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier()
nnoremap <buffer> <Plug>(vimtex-status-all) :call vimtex#compiler#status(1)
nnoremap <buffer> <Plug>(vimtex-status) :call vimtex#compiler#status(0)
nnoremap <buffer> <Plug>(vimtex-clean-full) :call vimtex#compiler#clean(1)
nnoremap <buffer> <Plug>(vimtex-clean) :call vimtex#compiler#clean(0)
nnoremap <buffer> <Plug>(vimtex-stop-all) :call vimtex#compiler#stop_all()
nnoremap <buffer> <Plug>(vimtex-stop) :call vimtex#compiler#stop()
nnoremap <buffer> <Plug>(vimtex-compile-output) :call vimtex#compiler#output()
xnoremap <buffer> <Plug>(vimtex-compile-selected) :call vimtex#compiler#compile_selected('visual')
nnoremap <buffer> <Plug>(vimtex-compile-selected) :set opfunc=vimtex#compiler#compile_selectedg@
nnoremap <buffer> <Plug>(vimtex-compile-ss) :call vimtex#compiler#compile_ss()
nnoremap <buffer> <Plug>(vimtex-compile) :call vimtex#compiler#compile()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-toggle-star) :call vimtex#cmd#toggle_star()
xnoremap <buffer> <silent> <Plug>(vimtex-cmd-create) :call vimtex#cmd#create_ask(1)
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-create) :call vimtex#cmd#create_ask(0)
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-change) :call vimtex#cmd#change()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-delete) :call vimtex#cmd#delete()
imap <buffer> <silent> ]] <Plug>(vimtex-delim-close)
inoremap <buffer> <silent> <expr> `vr vimtex#imaps#wrap_math("`vr", '\varrho')
inoremap <buffer> <silent> <expr> `vq vimtex#imaps#wrap_math("`vq", '\vartheta')
inoremap <buffer> <silent> <expr> `vk vimtex#imaps#wrap_math("`vk", '\varkappa')
inoremap <buffer> <silent> <expr> `vf vimtex#imaps#wrap_math("`vf", '\varphi')
inoremap <buffer> <silent> <expr> `ve vimtex#imaps#wrap_math("`ve", '\varepsilon')
inoremap <buffer> <silent> <expr> `Y vimtex#imaps#wrap_math("`Y", '\Psi')
inoremap <buffer> <silent> <expr> `X vimtex#imaps#wrap_math("`X", '\Xi')
inoremap <buffer> <silent> <expr> `W vimtex#imaps#wrap_math("`W", '\Omega')
inoremap <buffer> <silent> <expr> `U vimtex#imaps#wrap_math("`U", '\Upsilon')
inoremap <buffer> <silent> <expr> `S vimtex#imaps#wrap_math("`S", '\Sigma')
inoremap <buffer> <silent> <expr> `Q vimtex#imaps#wrap_math("`Q", '\Theta')
inoremap <buffer> <silent> <expr> `P vimtex#imaps#wrap_math("`P", '\Pi')
inoremap <buffer> <silent> <expr> `L vimtex#imaps#wrap_math("`L", '\Lambda')
inoremap <buffer> <silent> <expr> `F vimtex#imaps#wrap_math("`F", '\Phi')
inoremap <buffer> <silent> <expr> `D vimtex#imaps#wrap_math("`D", '\Delta')
inoremap <buffer> <silent> <expr> `G vimtex#imaps#wrap_math("`G", '\Gamma')
inoremap <buffer> <silent> <expr> `x vimtex#imaps#wrap_math("`x", '\xi')
inoremap <buffer> <silent> <expr> `z vimtex#imaps#wrap_math("`z", '\zeta')
inoremap <buffer> <silent> <expr> `w vimtex#imaps#wrap_math("`w", '\omega')
inoremap <buffer> <silent> <expr> `u vimtex#imaps#wrap_math("`u", '\upsilon')
inoremap <buffer> <silent> <expr> `y vimtex#imaps#wrap_math("`y", '\psi')
inoremap <buffer> <silent> <expr> `t vimtex#imaps#wrap_math("`t", '\tau')
inoremap <buffer> <silent> <expr> `s vimtex#imaps#wrap_math("`s", '\sigma')
inoremap <buffer> <silent> <expr> `r vimtex#imaps#wrap_math("`r", '\rho')
inoremap <buffer> <silent> <expr> `q vimtex#imaps#wrap_math("`q", '\theta')
inoremap <buffer> <silent> <expr> `p vimtex#imaps#wrap_math("`p", '\pi')
inoremap <buffer> <silent> <expr> `n vimtex#imaps#wrap_math("`n", '\nu')
inoremap <buffer> <silent> <expr> `m vimtex#imaps#wrap_math("`m", '\mu')
inoremap <buffer> <silent> <expr> `l vimtex#imaps#wrap_math("`l", '\lambda')
inoremap <buffer> <silent> <expr> `k vimtex#imaps#wrap_math("`k", '\kappa')
inoremap <buffer> <silent> <expr> `i vimtex#imaps#wrap_math("`i", '\iota')
inoremap <buffer> <silent> <expr> `h vimtex#imaps#wrap_math("`h", '\eta')
inoremap <buffer> <silent> <expr> `g vimtex#imaps#wrap_math("`g", '\gamma')
inoremap <buffer> <silent> <expr> `f vimtex#imaps#wrap_math("`f", '\phi')
inoremap <buffer> <silent> <expr> `e vimtex#imaps#wrap_math("`e", '\epsilon')
inoremap <buffer> <silent> <expr> `d vimtex#imaps#wrap_math("`d", '\delta')
inoremap <buffer> <silent> <expr> `c vimtex#imaps#wrap_math("`c", '\chi')
inoremap <buffer> <silent> <expr> `b vimtex#imaps#wrap_math("`b", '\beta')
inoremap <buffer> <silent> <expr> `a vimtex#imaps#wrap_math("`a", '\alpha')
inoremap <buffer> <silent> <expr> `jL vimtex#imaps#wrap_math("`jL", '\Rightarrow')
inoremap <buffer> <silent> <expr> `jl vimtex#imaps#wrap_math("`jl", '\rightarrow')
inoremap <buffer> <silent> <expr> `jH vimtex#imaps#wrap_math("`jH", '\Leftarrow')
inoremap <buffer> <silent> <expr> `jh vimtex#imaps#wrap_math("`jh", '\leftarrow')
inoremap <buffer> <silent> <expr> `jK vimtex#imaps#wrap_math("`jK", '\Uparrow')
inoremap <buffer> <silent> <expr> `jk vimtex#imaps#wrap_math("`jk", '\uparrow')
inoremap <buffer> <silent> <expr> `jJ vimtex#imaps#wrap_math("`jJ", '\Downarrow')
inoremap <buffer> <silent> <expr> `jj vimtex#imaps#wrap_math("`jj", '\downarrow')
inoremap <buffer> <silent> <expr> `E vimtex#imaps#wrap_math("`E", '\exists')
inoremap <buffer> <silent> <expr> `A vimtex#imaps#wrap_math("`A", '\forall')
inoremap <buffer> <silent> <expr> `) vimtex#imaps#wrap_math("`)", '\supset')
inoremap <buffer> <silent> <expr> `( vimtex#imaps#wrap_math("`(", '\subset')
inoremap <buffer> <silent> <expr> `] vimtex#imaps#wrap_math("`]", '\supseteq')
inoremap <buffer> <silent> <expr> `[ vimtex#imaps#wrap_math("`[", '\subseteq')
inoremap <buffer> <silent> <expr> `> vimtex#imaps#wrap_math("`>", '\rangle')
inoremap <buffer> <silent> <expr> `< vimtex#imaps#wrap_math("`<", '\langle')
inoremap <buffer> <silent> <expr> `* vimtex#imaps#wrap_math("`*", '\times')
inoremap <buffer> <silent> <expr> `. vimtex#imaps#wrap_math("`.", '\cdot')
inoremap <buffer> <silent> <expr> `\ vimtex#imaps#wrap_math("`\\", '\setminus')
inoremap <buffer> <silent> <expr> `= vimtex#imaps#wrap_math("`=", '\equiv')
inoremap <buffer> <silent> <expr> `8 vimtex#imaps#wrap_math("`8", '\infty')
inoremap <buffer> <silent> <expr> `6 vimtex#imaps#wrap_math("`6", '\partial')
inoremap <buffer> <silent> <expr> `0 vimtex#imaps#wrap_math("`0", '\emptyset')
inoremap <buffer> <silent> `` `
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=~/.vim/bundle/vim-latex/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#Underfull%.%#,%-W%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+WPackage\ %.%#Warning:\ %m,%-Z\ [],%-Z,%-C(%.%#)\ %#%m\ on\ input\ line\ %l.,%-C(%.%#)\ %#%m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-C%.%#,%-O[%*\\d]%r,%-Q\ %#)%r,%-Q\ %#[%\\d%*[^()])%r,%-Q\ %#])%r,%-O(%f)%r,%-P(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-O[%*\\d,%-O,%-G%.%#,%-O%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=3
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=latex\ -interaction=nonstopmode\ -file-line-error-style\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
1,2fold
3,24fold
27,27fold
28,28fold
26,28fold
29,29fold
30,31fold
25,31fold
33,33fold
34,34fold
35,36fold
32,36fold
38,38fold
39,39fold
40,41fold
37,41fold
42,43fold
46,46fold
47,47fold
48,49fold
45,49fold
51,51fold
52,52fold
53,71fold
50,71fold
44,71fold
77,77fold
78,78fold
80,80fold
81,81fold
82,83fold
79,83fold
75,83fold
84,84fold
85,98fold
99,100fold
101,101fold
25
normal! zo
32
normal! zo
33
normal! zc
44
normal! zo
50
normal! zo
let s:l = 74 - ((22 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
74
normal! 0283|
wincmd w
argglobal
if bufexists('bibliography.bib') | buffer bibliography.bib | else | edit bibliography.bib | endif
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bundle/vim-latex/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#Underfull%.%#,%-W%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+WPackage\ %.%#Warning:\ %m,%-Z\ [],%-Z,%-C(%.%#)\ %#%m\ on\ input\ line\ %l.,%-C(%.%#)\ %#%m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-C%.%#,%-O[%*\\d]%r,%-Q\ %#)%r,%-Q\ %#[%\\d%*[^()])%r,%-Q\ %#])%r,%-O(%f)%r,%-P(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-O[%*\\d,%-O,%-G%.%#,%-O%.%#
setlocal noexpandtab
if &filetype != 'bib'
setlocal filetype=bib
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=latex\ -interaction=nonstopmode\ -file-line-error-style\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'bib'
setlocal syntax=bib
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 31 - ((24 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 013|
wincmd w
argglobal
if bufexists('thesis.vim') | buffer thesis.vim | else | edit thesis.vim | endif
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 022|
wincmd w
argglobal
if bufexists('acronyms.tex') | buffer acronyms.tex | else | edit acronyms.tex | endif
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("equation*")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("equation")
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <F9> <Plug>Tex_Completion
nmap <buffer> \ll <Plug>Tex_Compile
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \lv <Plug>Tex_View
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
xnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=~/.vim/bundle/vim-latex/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-G%.%#Underfull%.%#,%-W%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+WPackage\ %.%#Warning:\ %m,%-Z\ [],%-Z,%-C(%.%#)\ %#%m\ on\ input\ line\ %l.,%-C(%.%#)\ %#%m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-C%.%#,%-O[%*\\d]%r,%-Q\ %#)%r,%-Q\ %#[%\\d%*[^()])%r,%-Q\ %#])%r,%-O(%f)%r,%-P(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-P(%f%r,%-Q)%r,%-O(%f)%r,%-O[%*\\d]%r,%-O[%*\\d,%-O,%-G%.%#,%-O%.%#
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=Tex_CalcIdent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],.,),,0=\\bibitem,0=\\item,0=\\else,0=\\or,0=\\fi
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=latex\ -interaction=nonstopmode\ -file-line-error-style\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 7 - ((1 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 066|
wincmd w
exe 'vert 1resize ' . ((&columns * 103 + 102) / 205)
exe 'vert 2resize ' . ((&columns * 60 + 102) / 205)
exe '3resize ' . ((&lines * 34 + 32) / 65)
exe 'vert 3resize ' . ((&columns * 40 + 102) / 205)
exe '4resize ' . ((&lines * 28 + 32) / 65)
exe 'vert 4resize ' . ((&columns * 40 + 102) / 205)
tabedit cover.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 102 + 102) / 205)
exe 'vert 2resize ' . ((&columns * 102 + 102) / 205)
argglobal
if bufexists('/usr/share/vim/vim80/doc/change.txt') | buffer /usr/share/vim/vim80/doc/change.txt | else | edit /usr/share/vim/vim80/doc/change.txt | endif
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal nobuflisted
setlocal buftype=help
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=nc
setlocal conceallevel=2
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'help'
setlocal filetype=help
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcroql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=!-~,^*,^|,^\",192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'help'
setlocal syntax=help
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1354 - ((0 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1354
normal! 060|
wincmd w
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 102 + 102) / 205)
exe 'vert 2resize ' . ((&columns * 102 + 102) / 205)
tabedit proposal.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 162 - ((35 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
162
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
