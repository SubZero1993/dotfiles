" Setting filetypes with high prio, see |new-filetype|
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.md.txt         setfiletype markdown
  au! BufRead,BufNewFile *.txt            setfiletype text
  au! BufRead,BufNewFile *.ts             setfiletype typoscript
  au! BufRead,BufNewFile */doc{,s}/*.md   setfiletype markdown
  au! BufRead,BufNewFile */apache/*.conf,*/apache2/*.conf   setfiletype apache
  au! BufRead,BufNewFile */xorg.conf.d/*  setfiletype xf86conf
  au! BufRead,BufNewFile TODO             setfiletype markdown
  au! BufRead,BufNewFile /etc/network/interfaces,/etc/environment setfiletype conf
  au! BufRead,BufNewFile *.haml           setfiletype haml
  au! BufRead,BufNewFile *.pac            setfiletype pac
  au! BufRead,BufNewFile {.,}tmux*.conf*  setfiletype tmux
  au! BufRead,BufNewFile *zsh/functions*  setfiletype zsh
  au! BufNewFile,BufRead *pentadactylrc*,*.penta setfiletype pentadactyl.vim
  au! BufNewFile,BufRead *vimperatorrc*,*.vimp   setfiletype vimperator.vim
  au! BufNewFile,BufRead *.t              setfiletype cram
augroup END

