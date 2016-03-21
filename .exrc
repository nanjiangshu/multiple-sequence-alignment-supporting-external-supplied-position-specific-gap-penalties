if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <silent> <F5> :call Toggle_InertTabWrapper() 
inoremap <silent> <F11> :Tlist
inoremap <silent> <F2> :call Toggle_EditHelpers() 
map! <S-Insert> <MiddleMouse>
nmap <silent>  :nbkey C-B
nmap <silent>  :nbkey C-D
nmap <silent>  :nbkey C-E
nmap <silent>  :nbkey C-H
nmap <silent> <NL> :nbkey C-J
vmap <NL> :put=''
omap <NL> :put=''
nmap <silent>  :nbkey C-K
vmap  :put!=''
omap  :put!=''
nmap <silent>  :nbkey C-N
nmap <silent>  :nbkey C-P
nmap <silent>  :nbkey C-U
map  :WMToggle
map  :FirstExplorerWindow
map  :BottomExplorerWindow
nmap <silent>  :nbkey C-X
nmap <silent>  :nbkey C-Z
map <silent> . :let @_=ProposeAlternatives()
map !d :r !date +"// \%F \%H:\%M:\%S \%A  Week \%U"
map #log o:.!date +"//LOG: \%F \%H:\%M:\%S \%A  Week \%U <${USER}@${HOSTNAME}>\%n// "
noremap <silent> #? :s~^~? ~
          " insert '?' at the first position of line"}}}
noremap <silent> #% :s~^~% ~
          " insert '%' at the first position of line
noremap <silent> #$ :s~^~$ ~
          " insert '$' at the first position of line
noremap <silent> #> :s~^~> ~
          " insert '>' at the first position of line
noremap <silent> #! :s~^~//! ~
          " insert '!' at the first position of line
noremap <silent> #: :s~^~: ~
          " insert ':' at the first position of line
noremap <silent> #" :s~^~" ~
          " vim like comments
noremap <silent> ## :s~^~# ~
          " Perl like comments
noremap <silent> #/ :s~^~// ~
         " C++ comments
noremap <silent> #* :s~.*~/* & */~
    " C comments
vnoremap ( "zdi(z)
vmap ,sum y'>p:'[,']-1s/$/+/|'[,']+1j!
vnoremap ,cal ypkA =jOscale=3:.,+1!bc
nnoremap ,cal yypkA =jOscale=3:.,+1!bc
onoremap ,cal yypkA =jOscale=3:.,+1!bc
map ,pdf :call MakePDF()
vmap ,iM :s/$/\
nmap ,iM :%s/$/\
vmap ,dM :s/\r//g
nmap ,dM :%s/\r//g
vmap ,stws :s/  *$/./g
nmap ,stws :%s/  *$/./g
vmap ,sws :s/ /·/g
nmap ,sws :%s/ /·/g
noremap ,scmt :put=''
noremap ,vcmt :put=''
noremap ,ccmt :put=''
noremap ,m :w
noremap <silent> ,  a l
map ,bc ;bc
map ,nu :g/^/exec "s/^/".strpart(line(".")."    ", 0, 4)
map ,jb :vg/./.,/./-1join
nmap <silent> ,tw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/
map ,db :g/^\s*$/d
map ,dt :s~\s\+$~~
map ,dl :s~^\s\+~~
noremap <silent> ,r :ri 
noremap <silent> ,l :le 
noremap <silent> ,c :ce 
noremap <silent> ,( :call CommentLinePincer('( ', ' )')

noremap <silent> ,< :call CommentLinePincer('<!-- ', ' -->')

noremap <silent> ,* :call CommentLinePincer('/* ', ' */')

noremap <silent> ,? :call CommentLineToEnd('? ')

noremap <silent> ,% :call CommentLineToEnd('% ')

noremap <silent> ,$ :call CommentLineToEnd('$ ')

noremap <silent> ,> :call CommentLineToEnd('> ')

noremap <silent> ,! :call CommentLineToEnd('//! ')

noremap <silent> ,- :call CommentLineToEnd('-- ')

noremap <silent> ,; :call CommentLineToEnd('; ')

noremap <silent> ," :call CommentLineToEnd('" ')

noremap <silent> ,/ :call CommentLineToEnd('// ')

noremap <silent> ,# :call CommentLineToEnd('# ')

noremap ;bc "eyy:call CalcLines(0)
nmap <silent> A :nbkey S-A
nmap <silent> B :nbkey S-B
inoremap ° )
inoremap ½ ]
nmap <silent> C :nbkey S-C
inoremap Ý }
nmap <silent> F :nbkey S-F
nmap <silent> I :nbkey S-I
nmap <silent> L :nbkey S-L
nmap <silent> Q :nbkey S-Q
nmap <silent> R :nbkey S-R
nmap <silent> S :nbkey S-S
nmap <silent> W :nbkey S-W
nmap <silent> X :nbkey S-X
vnoremap [ "zdi[z]
vmap <silent> \cy "0ygv\cc
nmap <silent> \cy "0Y\cc
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
nmap <silent> \ucs :call C_RemoveGuiMenus()
nmap <silent> \lcs :call C_CreateGuiMenus()
map <silent> \bv :VSBufExplorer
map <silent> \bs :SBufExplorer
map <silent> \be :BufExplorer
map \hclt <Plug>HCLToggle
map \hcls <Plug>HCLStop
map \hcli <Plug>HCLStart
map \di <Plug>LoadDrawIt
vmap <silent> \Htd :<BS><BS><BS>
vmap <silent> \tt :<BS><BS><BS>
vmap <silent> \tp@ :<BS><BS><BS>
vmap <silent> \tsq :<BS><BS><BS>
vmap <silent> \tsp :<BS><BS><BS>
vmap <silent> \tml :<BS><BS><BS>
vmap <silent> \tab :<BS><BS><BS>
vmap <silent> \t@ :<BS><BS><BS>
vmap <silent> \t? :<BS><BS><BS>
vmap <silent> \t= :<BS><BS><BS>
vmap <silent> \t< :<BS><BS><BS>
vmap <silent> \t; :<BS><BS><BS>
vmap <silent> \t: :<BS><BS><BS>
vmap <silent> \ts, :<BS><BS><BS>
vmap <silent> \t, :<BS><BS><BS>
vmap <silent> \t| :<BS><BS><BS>
vmap <silent> \anum :B s/\(\d\)\s\+\(-\=[.,]\=\d\)/\1@\2/ge
vmap <silent> \afnc :<BS><BS><BS>
vmap <silent> \adef :<BS><BS><BS>
vmap <silent> \adec :<BS><BS><BS>
vmap <silent> \ascom :<BS><BS><BS>
vmap <silent> \aocom :<BS><BS><BS>
vmap <silent> \acom :<BS><BS><BS>
vmap <silent> \abox :<BS><BS><BS>
vmap <silent> \a= :<BS><BS><BS>
vmap <silent> \a< :<BS><BS><BS>
vmap <silent> \a, :<BS><BS><BS>
vmap <silent> \a? :<BS><BS><BS>
vmap <silent> \Tsp :<BS><BS><BS>
vmap <silent> \T@ :<BS><BS><BS>
vmap <silent> \T= :<BS><BS><BS>
vmap <silent> \T< :<BS><BS><BS>
vmap <silent> \T: :<BS><BS><BS>
vmap <silent> \Ts, :<BS><BS><BS>
vmap <silent> \T, :<BS><BS><BS>
vmap <silent> \T| :<BS><BS><BS>
map <silent> \tdW@ :AlignCtrl v ^\s*/[/*]
map <silent> \tW@ :AlignCtrl mWp1P1=l @
nmap <silent> \t@ :AlignCtrl mIp1P1=l @
omap <silent> \t@ :AlignCtrl mIp1P1=l @
nmap <silent> \aocom :AlignPush
omap <silent> \aocom :AlignPush
noremap \ff ]]%oV]]%jzf+
nmap \fR :set lz
nmap \fr :set lz
map \ht \hclt
map \hs \hcls
map \hl \hcli
nmap gx <Plug>NetrwBrowseX
vnoremap { "zdi{z}
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>17_WE <Plug>AlignMapsWrapperEnd
nmap <SNR>17_WS <Plug>AlignMapsWrapperStart
map <silent> <S-F6> :let @_=SpellLanguage()
map <silent> <F6> :let @_=SpellCheck()
map <silent> <F5> :call Toggle_InertTabWrapper() 
map <F8> :call ToggleSketch()
map <F4> :call ToggleWrapLine()
map <F3> :call ToggleCase()
noremap <silent> <F11> :Tlist
map <silent> <F2> :call Toggle_EditHelpers() 
map <S-Insert> <MiddleMouse>
imap  <Plug>IMAP_JumpForward
inoremap 	 =InsertTabWrapper()
inoremap ( ()<Left>
inoremap ) =JumpNext("(",")","\°")
map <silent> ® :let @_=ProposeAlternatives()
inoremap [ []<Left>
inoremap { {
inoremap } =JumpNext("{","}","\Ý")
cabbr man Man
cabbr sum Sum
iabbr _week =strftime("%F Week %U")
iabbr _date =strftime("%F")
iabbr _time =strftime("%F %H:%M:%S %A Week %U")
iabbr Xmas Christmas
iabbr xmas christmas
iabbr honor honour
iabbr colour color
iabbr sunday Sunday
iabbr saturday Saturday
iabbr friday Friday
iabbr thursday Thursday
iabbr wednesday Wednesday
iabbr tuesday Tuesday
iabbr monday Monday
iabbr yuor your
iabbr yuo you
iabbr ytou you
iabbr yeras years
iabbr yera year
iabbr wya way
iabbr wtih with
iabbr wroking working
iabbr wrod word
iabbr wriet write
iabbr woudl would
iabbr wokr work
iabbr wohle whole
iabbr woh who
iabbr wnats wants
iabbr wnated wanted
iabbr wnat want
iabbr wiull will
iabbr withe with
iabbr windoes windows
iabbr wiht with
iabbr wihch which
iabbr wierd weird
iabbr wief wife
iabbr whta what
iabbr whihc which
iabbr whic which
iabbr whcih which
iabbr wehn when
iabbr watn want
iabbr waht what
iabbr vrey very
iabbr veyr very
iabbr useing using
iabbr tyhe the
iabbr tyhat that
iabbr truely truly
iabbr towrad toward
iabbr tonihgt tonight
iabbr tongiht tonight
iabbr todya today
iabbr tlaking talking
iabbr tkaing taking
iabbr tkaes takes
iabbr tkae take
iabbr tjhe the
iabbr tje the
iabbr timne time
iabbr tihs this
iabbr thta that
iabbr thsoe those
iabbr thsi this
iabbr thnigs things
iabbr thnig thing
iabbr thne then
iabbr thna than
iabbr thme them
iabbr thier their
iabbr thge the
iabbr thgat that
iabbr theri their
iabbr themselfs themselves
iabbr thansk thanks
iabbr tghe the
iabbr tehy they
iabbr tath that
iabbr talekd talked
iabbr taht that
iabbr tahn than
iabbr swiming swimming
iabbr sucess success
iabbr struggel struggle
iabbr strentgh strength
iabbr stpo stop
iabbr stoyr story
iabbr stopry story
iabbr stnad stand
iabbr statment statement
iabbr soudns sounds
iabbr soudn sound
iabbr sohw show
iabbr soem some
iabbr smoe some
iabbr smae same
iabbr similiar similar
iabbr shoudl should
iabbr shiped shipped
iabbr shineing shining
iabbr seperate separate
iabbr sentance sentence
iabbr selectoin selection
iabbr seh she
iabbr rythm rhythm
iabbr rwite write
iabbr religous religious
iabbr recrod record
iabbr reconize recognize
iabbr recomend recommend
iabbr recipies recipes
iabbr recipie recipe
iabbr recieved received
iabbr recieve receive
iabbr receieve receive
iabbr reccommend recommend
iabbr reccomend recommend
iabbr questoin question
iabbr quater quarter
iabbr pwoer power
iabbr puting putting
iabbr protoge protege
iabbr probelm problem
iabbr porblem problem
iabbr poeple people
iabbr pleasent pleasant
iabbr perhpas perhaps
iabbr perhasp perhaps
iabbr peopel people
iabbr owrk work
iabbr otu out
iabbr otehr other
iabbr orginized organized
iabbr opperation operation
iabbr optoins options
iabbr optoin option
iabbr onyl only
iabbr omre more
iabbr ohter other
iabbr oging going
iabbr ocur occur
iabbr occurrance occurrence
iabbr occurence occurrence
iabbr occassion occasion
iabbr ocasion occasion
iabbr nwo now
iabbr nwe new
iabbr nkow know
iabbr necesary necessary
iabbr neccessary necessary
iabbr myu my
iabbr mysefl myself
iabbr mroe more
iabbr moeny money
iabbr mkaing making
iabbr mkaes makes
iabbr mkae make
iabbr makeing making
iabbr lonly lonely
iabbr loev love
iabbr liveing living
iabbr liuke like
iabbr littel little
iabbr likly likely
iabbr liev live
iabbr liekd liked
iabbr liek like
iabbr librery library
iabbr librarry library
iabbr libary library
iabbr levle level
iabbr konws knows
iabbr konw know
iabbr knwos knows
iabbr knwo know
iabbr jsut just
iabbr iwth with
iabbr iwll will
iabbr inthe in the
iabbr insted intead
iabbr indecate indicate
iabbr immediatly immediately
iabbr ihs his
iabbr idaes ideas
iabbr idae idea
iabbr hvaing having
iabbr hvae have
iabbr htis this
iabbr htink think
iabbr hting thing
iabbr htey they
iabbr htere there
iabbr hte the
iabbr hsi his
iabbr hsa has
iabbr hismelf himself
iabbr hge he
iabbr herat heart
iabbr helpfull helpful
iabbr hda had
iabbr haveing having
iabbr happend happened
iabbr haev have
iabbr grwo grow
iabbr gruop group
iabbr govenment government
iabbr gonig going
iabbr goign going
iabbr giveing giving
iabbr geting getting
iabbr gerat great
iabbr fwe few
iabbr frmo from
iabbr freind friend
iabbr foward forward
iabbr foudn found
iabbr fro for
iabbr foriegn foreign
iabbr follwoing following
iabbr follwo follow
iabbr firts first
iabbr fidn find
iabbr fianlly finally
iabbr feild field
iabbr familar familiar
iabbr eyt yet
iabbr excitment excitement
iabbr esle else
iabbr equippment equipment
iabbr embarass embarrass
iabbr ehr her
iabbr drnik drink
iabbr driveing driving
iabbr donig doing
iabbr doller dollars
iabbr doign doing
iabbr doese does
iabbr disatisfied dissatisfied
iabbr diffrent different
iabbr differnt different
iabbr differant different
iabbr developement development
iabbr develope develop
iabbr definately definitely
iabbr danceing dancing
iabbr cxan can
iabbr cpoy copy
iabbr coudl could
iabbr cotten cotton
iabbr conected connected
iabbr comunity community
iabbr comunicate communicate
iabbr completly completely
iabbr compleated completed
iabbr compair compare
iabbr committy committee
iabbr committe committee
iabbr commitee committee
iabbr comittee committee
iabbr comapny company
iabbr comany company
iabbr colection collection
iabbr cna can
iabbr claerly clearly
iabbr claer clear
iabbr circut circuit
iabbr cheif chief
iabbr charector character
iabbr charecter character
iabbr charachter character
iabbr changeing changing
iabbr bve be
iabbr boxs boxes
iabbr beleive believe
iabbr begining beginning
iabbr befoer before
iabbr becuse because
iabbr becuase because
iabbr becomeing becoming
iabbr becasue because
iabbr beacuse because
iabbr bcak back
iabbr baout iabout
iabbr balence balance
iabbr bakc back
iabbr awya away
iabbr audiance audience
iabbr audeince audience
iabbr artical article
iabbr aplyed applied
iabbr appeares appears
iabbr andthe and the
iabbr anbd and
iabbr amke make
iabbr alwasy always
iabbr alreayd already
iabbr alot a lot
iabbr almsot almost
iabbr allready already
iabbr ahve have
iabbr ahppen happen
iabbr agian again
iabbr adn and
iabbr acomodate accommodate
iabbr acommodate accommodate
iabbr acn can
iabbr acheiving achieving
iabbr acheive achieve
iabbr accomodate accommodate
iabbr accesories accessories
iabbr tatn tant
iabbr consatnt constant
iabbr constatn constant
iabbr substistion substitution
iabbr postition position
iabbr atmoic atomic
iabbr nanjaing nanjiang
iabbr spolier spoiler
iabbr teh the
iabbr _Na 6.022 × 10**23
iabbr _atm 101 325 Pa
iabbr _c 299 792 458 m/s
iabbr _G 6.6742(10) × 10**-11 m3·kg-1·s-2
iabbr _h 6.626068 × 10**-34 m2 kg / s
iabbr _e 2.7182818284590452353602874713526624977573
iabbr _pi 3.1415926535897932384626433832795028841972
iabbr _excelabc =A1
iabbr _abc ABCDEFGHIJKLMNOPQRSTUVWXYZ
iabbr _sp"" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbr _sp"- "-----------------------------------------------------------------------------
iabbr _sp"* "*****************************************************************************
iabbr _sp"= "=============================================================================
iabbr _sp#- #-----------------------------------------------------------------------------
iabbr _sp#* #*****************************************************************************
iabbr _sp#= #=============================================================================
iabbr _sp//- //----------------------------------------------------------------------------
iabbr _sp//= //============================================================================
iabbr _sp/// //////////////////////////////////////////////////////////////////////////////
iabbr _sp/** /****************************************************************************/
iabbr _sp/*= /*==========================================================================*/
iabbr _sp/*+ /*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
iabbr _sp/*- /*--------------------------------------------------------------------------*/
iabbr _include #include <stdio.h>
iabbr _printhelp void PrintHelp()
iabbr _allocline int linesize;
iabbr _stdid <F2>if(id[4] == '\0')
iabbr _main int main(int argc, char** argv)
iabbr _mydatatype #include "../MyInclude/DataType.h"
iabbr _myconstant #include "../MyInclude/Constant.h"
iabbr _mycommon #include "../MyInclude/CommonFunction.h"
iabbr _gnuplot #!/bin/env gnuplot -persist
iabbr _awk #!/bin/env awk -f
iabbr _python #!/bin/env python
iabbr _perl #!/bin/env perl -w
iabbr _bash #!/bin/bash
iabbr _csh #!/bin/csh
iabbr _ksh #!/bin/ksh
iabbr _sh #!/bin/sh
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set balloondelay=100
set cindent
set cmdheight=2
set complete=.,w,b,u,t,i,k~/.vim/wordlists/*,k
set dictionary=~/.ispell_british,/usr/share/dict/words
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=cqlro
set grepprg=grep\ -nH\ $*
set guioptions=aegimrLt
set helplang=en
set history=100
set hlsearch
set ignorecase
set incsearch
set infercase
set listchars=eol:$,tab:»·
set matchtime=3
set nomodeline
set mouse=a
set printoptions=paper:letter
set report=0
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolljump=5
set scrolloff=3
set shiftround
set shortmess=filnxtoOrT
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set termencoding=utf-8
set textwidth=78
set viminfo=/10,'10,r/mnt/zip,r/mnt/floppy,f0,h,\"100
set virtualedit=all
set visualbell
set wildmode=list:full
" vim: set ft=vim :