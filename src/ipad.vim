let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
inoremap <silent> <Plug>IMAP_JumpBack :call IMAP_Jumpfunc('b', 0)
inoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
nnoremap <silent>  :CtrlP
xnoremap , :call ExecMap(',', 'v')
xnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
xnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
xnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
xnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
xnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
xnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
xnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
xnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
xnoremap ,pa :call VEnclose('\part{', '}', '', '')
xnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
xnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
xnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
xnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
xnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
xnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
xnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
xnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
xnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
xnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
xnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
xnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
xnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
xnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
xnoremap <silent> ,ce :call VEnclose('{\centering ', '}', '\begin{center}', '\end{center}')
xnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
xnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
xnoremap ,se :call VEnclose('\section{', '}', '', '')
xnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
xnoremap <silent> ,es :call VEnclose('', '', '\begin{equation*}', '\end{equation*}')
xnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
xnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
xnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
xnoremap <silent> ,ad :call VEnclose('', '', '\begin{aligned}', '\end{aligned}')
xnoremap <silent> ,as :call VEnclose('', '', '\begin{align*}', '\end{align*}')
xnoremap <silent> ,al :call VEnclose('', '', '\begin{align}', '\end{align}')
xnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
xnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
xnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
xnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
xnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
xnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
xnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
xnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
xnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
xnoremap ` :call ExecMap('`', 'v')
xnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
xnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
xnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
xnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
xnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
xnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
xnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
xnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
xnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
xnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
xnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
xnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
xnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
xnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1, 1)
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
nmap <silent> <Plug> i
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vnoremap <silent> <Plug>IMAP_JumpBack `<:call IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>:call IMAP_Jumpfunc('b', 0)
vnoremap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>:call IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>IMAP_JumpBack :call IMAP_Jumpfunc('b', 0)
nnoremap <silent> <Plug>IMAP_JumpForward :call IMAP_Jumpfunc('', 0)
imap <NL> <Plug>IMAP_JumpForward
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set errorfile=~/Documents/Code/University/masterthesis/src/chaps/body.log
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/vim-latex,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/vim-latex/after
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set wildignore=*/node_modules/*
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/Code/University/masterthesis/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 chaps/body.tex
badd +1 bibliography.bib
argglobal
silent! argdel *
edit chaps/body.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 76 + 76) / 152)
exe 'vert 2resize ' . ((&columns * 75 + 76) / 152)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("equation")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("equation*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> \rf <Plug>Tex_RefreshFolds
nmap <buffer> \ls <Plug>Tex_ForwardSearch
nmap <buffer> \lv <Plug>Tex_View
vmap <buffer> \ll <Plug>Tex_Compile
nmap <buffer> \ll <Plug>Tex_Compile
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
xnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
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
setlocal completefunc=
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
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],.,)
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
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
3,18fold
21,21fold
22,22fold
20,22fold
23,23fold
24,25fold
19,25fold
27,27fold
28,28fold
29,30fold
26,30fold
32,32fold
33,33fold
34,35fold
31,35fold
36,37fold
40,40fold
41,41fold
42,43fold
39,43fold
45,45fold
46,46fold
47,51fold
44,51fold
38,51fold
54,54fold
53,54fold
55,55fold
56,56fold
58,58fold
59,59fold
60,61fold
57,61fold
52,61fold
62,62fold
63,76fold
77,78fold
79,79fold
3
normal! zo
let s:l = 3 - ((2 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
argglobal
edit bibliography.bib
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
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
setlocal completefunc=
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
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 76 + 76) / 152)
exe 'vert 2resize ' . ((&columns * 75 + 76) / 152)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
