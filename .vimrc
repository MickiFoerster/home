set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ericcurtin/CurtineIncSw.vim'
Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on    " required
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line" Uncomment the following to have Vim jump to the last position when
" reopening a file
"
let g:ycm_global_ycm_extra_conf = '/home/micki/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"
"
"
"
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
if has("autocmd")
  filetype indent on
endif

" In tex files spell checking is enabled
if has("autocmd")
  autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=en_us,de_de
endif
syntax on

" my properties
"if has("autocmd")
"  autocmd BufRead,BufNewFile *.c set foldmethod=marker|set foldmarker={,}
"  autocmd BufRead,BufNewFile *.cpp set foldmethod=marker|set foldmarker={,}
"  autocmd BufRead,BufNewFile *.cc set foldmethod=marker|set foldmarker={,}
"  autocmd BufRead,BufNewFile *.h set foldmethod=marker|set foldmarker={,}
"  autocmd BufRead,BufNewFile *.hpp set foldmethod=marker|set foldmarker={,}
  "set foldlevel=100 " do not autofold anything
  "set foldopen-=search " do not open folds when you search into them
  "set foldopen-=undo   " do not open fold when you undo stuff
"endif

"======
" the following have been moved to .gvimrc
"set showtabline=2 " show tab line all the time not only if tabs are present. This can be set to 0 if you want to hide the tabline. You can only switch between them with :tabn and :tabp
"======
"set magic
set spelllang=en_us,de_de,fr
set nowrap
set tabpagemax=20
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set nowrapscan
set noignorecase
set vb
"set encoding=latin1
"set fileencoding=latin1
set encoding=utf-8
set fileencoding=utf-8
set number
set showcmd
set autoread
set viewdir=$HOME/.vim/views
"set guifont=bitstream\ vera\ sans\ mono\ 14
"set guifont=bitstream\ vera\ sans\ mono\ 8
" remove menubar: 
set guioptions-=m
" remove symbolbar:
set guioptions-=T
"set backupdir=/tmp,~/ablage,~/
"set directory=/tmp,~/ablage,~/

" ALT Tab shortcuts
map <A-Up>    :tabfirst<CR>
map <A-Left>  :tabprevious<CR>
map <A-Right> :tabnext<CR>
map <A-Down>  :tablast<CR>
map <C-h>  :tabprevious<CR>
map <C-l> :tabnext<CR>
"map <C-t>     :tabnew<CR>
"map <C-S> :let @/=@s<CR>/<CR>
"map <F2> :ConqueTermVSplit /bin/bash<CR>
		":ConqueTermSplit <command> 
		":ConqueTermVSplit <command> 
		":ConqueTermTab <command> 
"map <C-a> 		:!/bin/bash<CR>
map <F3> 		  :let header_file = substitute(expand("%"), "\.c$", ".h", "")<CR>:execute "vsplit " . header_file<CR>
map <F4> 		  :let header_file = substitute(expand("%"), "\.cpp$", ".h", "")<CR>:execute "vsplit " . header_file<CR>
"map <F4>   		:set foldenable<CR>:set foldmethod=marker<CR>:set foldmarker={,}<CR>
"map <S-F4> 		:set foldenable<CR>:set foldmethod=marker<CR>:set foldmarker=/*,*/<CR>
map <F5> 		  :!cscope -b<CR>:cs reset<CR><CR>
map <S-F5> 		:VCSDiff<CR>
"map <F6> 		:!ctags *.cpp *.h *.c *.cc *.hpp *.tex<CR>
"map <S-F6> 		:w !detex\|wc -w<CR>
map <F6> 	    /\(^\\part{\\|^\\chapter{\)<CR>
map <S-F6> 		?\(^\\part{\\|^\\chapter{\)<CR>
map <F7>     	/\(^\\section\\|^\\subsection\\|^\\subsubsection\\|^\\paragraph\)<CR>
map <S-F7>     	?\(^\\section\\|^\\subsection\\|^\\subsubsection\\|^\\paragraph\)<CR>
map <F8>     	/\(^\\begin\\|^\\bib\)<CR>
map <S-F8>      ?\(^\\begin\\|^\\bib\)<CR>
map <C-F10>  	:bufdo e<CR>
map <C-F11> 	:vsplit test.in.spl<cr>:vsplit t1_test.in.spl<cr>:vsplit a1_test.in.spl<cr>
map <C-F12> 	:tabnew ~/.vimrc<CR>
map <C-UP>    ?^[^\ \t#].*(<CR>
map <C-Down>  /^[^\ \t#].*(<CR>

" thesis abbreviations
iabbrev lstgets /*@$\gets$@*/
iabbrev lstidx  /*@$_{idx}$@*/
iabbrev lstforallthreads /*@$\forall$@*/ t /*@$\in [0:\numthreads-1]:$@*/
iabbrev EURO   €
iabbrev oehtml &ouml;
iabbrev aehtml &auml;
iabbrev uehtml &uuml;
iabbrev Oehtml &Ouml;
iabbrev Aehtml &Auml;
iabbrev Uehtml &Uuml;
iabbrev sshtml &szlig;
iabbrev AEE Ä
iabbrev UEE Ü
iabbrev OEE Ö
iabbrev aaa ä
iabbrev uuu ü
iabbrev ooo ö
iabbrev gccplugintemplate GCC=gcc-svn<cr>GCC_SRC_DIR=$$HOME/workspace/external-projects/gcc-svn<cr>GCC_BLD_DIR=$$HOME/workspace/external-projects/gcc-svn/bld<cr>GCC_PLUGIN_DIR=$(GCC_BLD_DIR)/lib/gcc/x86_64-unknown-linux-gnu/4.7.0/plugin<cr>CFLAGS+=-fPIC -O2 -I$(GCC_SRC_DIR)/gcc -I$(GCC_BLD_DIR)/gcc -I$(GCC_BLD_DIR)/gmp -I$(GCC_PLUGIN_DIR)/include<cr><cr>$(GCC_PLUGIN_DIR)/helloworld.so: helloworld.o<cr>$(GCC) $(CFLAGS) -shared $^ -o $@<cr><cr>helloworld.o: helloworld.c<cr>$(GCC) -c $(CFLAGS) helloworld.c<cr><cr>test: test.c<cr>$(GCC) -fplugin=`$(GCC) -print-file-name=plugin`/helloworld.so  $<<cr><cr>clean:<cr>rm -f *.o<cr>cd $(GCC_PLUGIN_DIR);rm -f helloworld.so<cr><cr>.PHONY: clean test<cr>-------------------------------------------------------------------------------------<cr>/* This plugin is only a template to start with programming a plugin for gcc.  */<cr><cr>#include "gcc-plugin.h"<cr>#include "config.h"<cr>#include "system.h"<cr>#include "coretypes.h"<cr>#include "tm.h"<cr>#include "toplev.h"<cr>#include "basic-block.h"<cr>#include "gimple.h"<cr>#include "tree.h"<cr>#include "tree-pass.h"<cr>#include "intl.h"<cr>#include "plugin-version.h"<cr>#include "diagnostic.h"<cr><cr>int plugin_is_GPL_compatible; /* Plugin has to have under GPL license what one defines with this definition. Without this definition gcc exits with a fatal error. */<cr><cr><cr>static tree<cr>get_real_ref_rhs (tree expr)<cr>{<cr>switch (TREE_CODE (expr))<cr>{<cr>case SSA_NAME:<cr>case VAR_DECL:<cr>case PARM_DECL:<cr>case FIELD_DECL:<cr>case COMPONENT_REF:<cr>case MEM_REF:<cr>case ARRAY_REF:<cr>return expr;<cr>default:<cr>return NULL_TREE;<cr>}<cr>}<cr><cr>static unsigned int<cr>execute_my_plugin_title (void)<cr>{<cr>gimple_stmt_iterator gsi;<cr>basic_block bb;<cr><cr>fprintf(stderr, "Start of my plugin:\n");<cr>FOR_EACH_BB (bb)<cr>{<cr>for (gsi = gsi_start_bb (bb); !gsi_end_p (gsi); gsi_next (&gsi))<cr>{<cr>fprintf(stderr, "%p\n", gsi);<cr>}<cr>}<cr><cr>return 0;<cr>}<cr><cr>/* Pass gate function. Currently always returns true.  */<cr><cr>static bool<cr>gate_my_plugin_title (void)<cr>{<cr>return true;<cr>}<cr><cr>static struct gimple_opt_pass pass_my_plugin_title =<cr>{<cr>{<cr>GIMPLE_PASS,<cr>"my_plugin_title",                    /* name */<cr>gate_my_plugin_title,                 /* gate */<cr>execute_my_plugin_title,              /* execute */<cr>NULL,                                 /* sub */<cr>NULL,                                 /* next */<cr>0,                                    /* static_pass_number */<cr>TV_NONE,                              /* tv_id */<cr>PROP_ssa,                             /* properties_required */<cr>0,                                    /* properties_provided */<cr>0,                                    /* properties_destroyed */<cr>0,                                    /* todo_flags_start */<cr>TODO_dump_func                        /* todo_flags_finish */<cr>}<cr>};<cr><cr>char hello_text[4096];<cr><cr>/* The initialization routine exposed to and called by GCC. The spec of this<cr>function is defined in gcc/gcc-plugin.h.<cr> <cr>LUGIN_NAME - name of the plugin (useful for error reporting)<cr>ARGC        - the size of the ARGV array<cr>ARGV        - an array of key-value argument pair<cr><cr>Returns 0 if initialization finishes successfully.<cr> <cr>ote that this function needs to be named exactly "plugin_init".  */<cr><cr>int<cr>plugin_init (struct plugin_name_args *plugin_info,<cr>struct plugin_gcc_version *version)<cr>{<cr>struct register_pass_info pass_info;<cr>const char *plugin_name = plugin_info->base_name;<cr>int argc = plugin_info->argc;<cr>struct plugin_argument *argv = plugin_info->argv;<cr>int i;<cr><cr>if (!plugin_default_version_check (version, &gcc_version))<cr>return 1;<cr><cr>/* Self-assign detection should happen after SSA is constructed.  */<cr>pass_info.pass = &pass_my_plugin_title.pass;<cr>pass_info.reference_pass_name = "ssa";<cr>pass_info.ref_pass_instance_number = 1;<cr>pass_info.pos_op = PASS_POS_INSERT_AFTER;<cr><cr>for (i = 0; i < argc; ++i)<cr>{<cr>if (!strcmp (argv[i].key, "say-hello"))<cr>{<cr>if (argv[i].value)<cr>warning (0, G_("option '-fplugin-arg-%s-say-hello=%s'"),<cr>plugin_name, argv[i].value);<cr>else<cr>strncpy(hello_text, argv[i].value, 4096);<cr>}<cr>else<cr>warning (0, G_("plugin %qs: unrecognized argument %qs ignored"),<cr>plugin_name, argv[i].key);<cr>}<cr><cr>register_callback (plugin_name, <cr>LUGIN_PASS_MANAGER_SETUP, <cr>ULL,<cr>&pass_info);<cr><cr>return 0;<cr>}
iabbrev redtemplate     "\e[1;31mRED ALERT\e[0;0m"
iabbrev greentemplate   "\e[1;32mEVERYTHING'S FINE\e[0;0m"
iabbrev maketex TARGET=targetfilename<cr>SRC=$(TARGET).tex<cr>PDF=$(TARGET).pdf<cr><cr>%.pdf: %.tex<cr>pdflatex $< -o $@<cr><cr>$(PDF): $(SRC)<cr><cr>clean:<cr>rm -f *.o *.exe *.aux *.log *.pdf<cr><cr>.PHONY: clean <cr>
iabbrev makecxx BINARIES=MxM MxM.debug<cr>CXX=g++<cr>CXXFLAGS=-o $@<cr>LDFLAGS=-lgsl -lgslcblas `pkg-config glib-2.0 --cflags --libs`<cr><cr>MxM: MxM.cpp<cr>$(CXX) $(CXXFLAGS) $(LDFLAGS) $<<cr><cr>MxM.debug: MxM.cpp<cr>$(CXX) -g $(CXXFLAGS) $(LDFLAGS) $<<cr><cr>clean:<cr>rm -f $(BINARIES)<cr><cr>.PHONY: clean<cr>
iabbrev pythontemplate #!/usr/bin/env python<cr>import re<cr>import sys<cr>import os<cr><cr>for arg in sys.argv:<cr>if arg != sys.argv[0]:<cr>file = open(arg, 'r');<cr>basename, extension = os.path.splitext(arg);<cr>newfilename = basename + "-scaling" + extension;<cr>of = open(newfilename, 'w');<cr>for line in file:<cr>linesplit = re.split('\t', line);<cr>of.write(linesplit[0]);<cr>of.write(linesplit[1]);<cr>of.write(linesplit[3]);<cr><esc>
iabbrev perltemplate #!/usr/bin/perl<cr>use warnings;<cr>use strict;<cr><cr>while(<>) {<cr>}<esc>kA<cr>
iabbrev omptemplate #include <stdio.h><cr>#include <stdlib.h><cr>#include <omp.h><cr><cr>int main(int argc, char* argv[])<cr>{<cr>int i;<cr>#pragma omp parallel <cr>{<cr>fprintf(stderr, "This is thread %d\n.", omp_get_thread_num());<cr>}<cr>#pragma omp sections<cr>{<cr>#pragma omp section<cr>fprintf(stderr, "This is thread %d\n.", omp_get_thread_num());<cr>#pragma omp section<cr>fprintf(stderr, "This is thread %d\n.", omp_get_thread_num());<cr>}<cr>#pragma omp parallel for<cr>for(i=0;i<10;i++)<cr>fprintf(stderr, "This is thread %d\n.", omp_get_thread_num());<cr>return 0;<cr>}<cr><esc>
iabbrev ompdatadecomp  <tab>int tid=0;<cr><tab>int p=0;<cr><tab>int c=0;<cr><tab>int lb=0;<cr><tab>int ub=0;<cr><tab>int i=0;<cr><cr><tab>tid=omp_get_thread_num();<cr><tab>p=omp_get_num_threads();<cr><tab>c=n/p;<cr><tab>i=c*p;<cr><tab>if(i!=n) {<cr><tab><tab> c=c+1; <cr><tab>}<cr><tab>lb=tid*c;<cr><tab>ub=(tid+1)*c-1;<cr><tab>if(ub>=n) {<cr><tab><tab>ub=n-1; <cr><tab>}<cr><tab>i=lb;<cr><tab>y=0.;<cr><tab>while(i<=ub) {<cr><tab><tab>y=y+sin(x[i]);<cr><tab><tab>i=i+1;<cr><tab>}<cr><cr>
"iabbrev mpitemplate #include <mpi.h><cr>#include <stdio.h><cr><cr>int main(int argc, char* argv[]) <cr>{<cr>int i;<cr>int id;  /* Process rank */<cr>int p;   /* Number of processes */<cr>MPI_Init(&argc, &argv);<cr>MPI_Comm_rank(MPI_COMM_WORLD, &id);<cr>MPI_Comm_size(MPI_COMM_WORLD, &p);<cr>printf("Process %d is done\n", id);<cr>fflush(stdout);<cr>MPI_Finalize();<cr>return 0;<cr>}<cr>
iabbrev mpitemplate #include <mpi.h><cr>#include <iostream><cr><cr>int main(int argc, char* argv[])<cr>{<cr><tab>int id, num_procs;<cr><tab>MPI_Init(&argc,&argv);<cr><tab>MPI_Comm_rank(MPI_COMM_WORLD, &id);<cr><tab>MPI_Comm_size(MPI_COMM_WORLD, &num_procs);<cr><tab>std::cout << "Hello world!\n";<cr><tab>MPI_Finalize();<cr><tab>return 0;<cr>}<cr>
iabbrev mpisend     MPI_Send(<cr>&a[0], <cr>                  /* void* message */<cr>2,                       /* int   count   */<cr>MPI_DOUBLE,              /* MPI_Datatype datatype */<cr>1,                       /* int dest */<cr>1,                       /* int tag  */<cr>MPI_COMM_WORLD           /* MPI_Comm comm */<cr>);<cr>
iabbrev mpirecv     MPI_Recv(<cr>&a[2],                    /* void *message         */<cr>2,                        /* int count             */<cr>MPI_DOUBLE,               /* MPI_Datatype datatype */<cr>1,                        /* int source            */<cr>2,                        /* int tag               */<cr>MPI_COMM_WORLD,           /* MPI_Comm comm         */<cr>&status                   /* MPI_Status *status    */<cr>);<cr>
iabbrev mpigather   MPI_Gather(  a[0]+id*2,       /* void *send_buffer      */<cr>2,                /* int  send_cnt          */<cr>MPI_DOUBLE,       /* MPI_Datatype send_type */<cr>&a,               /* void *recv_buffer      */<cr>2,                /* int  *recv_cnt         */<cr>MPI_DOUBLE,       /* MPI_Datatype recv_type */<cr>0,                /* int root               */<cr>MPI_COMM_WORLD    /* MPI_Comm coomunicator  */<cr>);<cr>
iabbrev getopttemplate #include <ctype.h><cr>#include <stdio.h><cr>#include <stdlib.h><cr>#include <unistd.h><cr><cr>int<cr>main (int argc, char **argv)<cr>{<cr>int aflag = 0;<cr>int bflag = 0;<cr>char *cvalue = NULL;<cr>int index;<cr>int c;<cr><cr>opterr = 0;<cr><cr>while ((c = getopt (argc, argv, "abc:")) != -1)<cr>switch (c)<cr>{<cr>case 'a':<cr>aflag = 1;<cr>break;<cr>case 'b':<cr>bflag = 1;<cr>break;<cr>case 'c':<cr>cvalue = optarg;<cr>break;<cr>case '?':<cr>if (optopt == 'c')<cr>fprintf (stderr, "Option -%c requires an argument.\n", optopt);<cr>else if (isprint (optopt))<cr>fprintf (stderr, "Unknown option `-%c'.\n", optopt);<cr>else<cr>fprintf (stderr,<cr>"Unknown option character `\\x%x'.\n",<cr>optopt);<cr>return 1;<cr>default:<cr>abort ();<cr>}<cr><cr>printf ("aflag = %d, bflag = %d, cvalue = %s\n",<cr>aflag, bflag, cvalue);<cr><cr>for (index = optind; index < argc; index++)<cr>printf ("Non-option argument %s\n", argv[index]);<cr>return 0;<cr>}<cr><cr>
iabbrev cxxtemplate #include <iostream><cr><cr><cr>int main(int argc, char* argv[])<cr>{<cr>return 0;<cr>}<cr><esc>2kI<tab><esc>
iabbrev glibtemplate #include <glib.h><cr><cr>int main(int argc, char* argv[])<cr>{<cr>return 0;<cr>}<cr><esc>2kI<esc>
iabbrev gtimertemplate GTimer *gtimer=NULL;<cr>gtimer=g_timer_new();<cr>g_timer_start(gtimer);<cr>g_timer_stop(gtimer);<cr>g_print("Elapsed time: %6.2f sec\n", g_timer_elapsed(gtimer,NULL));<cr>g_timer_destroy(gtimer);<cr>
iabbrev qttemplate #include <QApplication><cr>#include <QPushButton><cr><cr>int main(int argc, char *argv[]) <cr>{<cr><tab>QApplication app(argc, argv);<cr><tab>QPushButton button("Leave me alone");<cr><tab>button.resize(123,45);<cr><tab>button.show();<cr><cr><tab>return app.exec();<cr> }<cr><esc>2kI<tab><esc>
iabbrev qtuitemplate // form.h<cr>#ifndef FORM_H<cr>#define FORM_H<cr><cr>#include <QtGui><cr>#include <QDialog><cr>#include "ui_mydialog.h"<cr><cr>class myDialog : public QDialog {<cr>Q_OBJECT<cr>public:<cr>	myDialog();<cr>	~myDialog(){}<cr>private:<cr>	Ui::Dialog ui;<cr>private slots:<cr>	void handle_dialogresults();<cr><cr>};<cr>#endif <cr><cr>// form.cpp<cr>#include "form.h"<cr><cr>myDialog::myDialog() {<cr>	ui.setupUi(this);<cr>	connect(ui.pushButton, SIGNAL( clicked() ), this, SLOT( handle_dialogresults() ));<cr>}<cr><cr>void myDialog::handle_dialogresults() <cr>{<cr>}	<cr><cr>// main.cpp<cr>#include <QApplication><cr>#include "form.h"<cr><cr>int main(int argc, char *argv[]) <cr>{<cr>	QApplication app(argc, argv);<cr>	myDialog *dlg = new myDialog;<cr>	dlg->show();<cr>	return app.exec();<cr>}<cr>
iabbrev ctemplate #include <stdio.h><cr>#include <stdlib.h><cr><cr>int main(int argc, char* argv[])<cr>{<cr>return 0;<cr>}<cr><esc>2kI<tab><esc>
iabbrev dccf   void f(const int n, double *x, double& y)<cr>#pragma ad indep x<cr>#pragma ad dep y<cr>{<cr>  int i=0;<cr>  y=1;<cr>  for(i=0;i<n;i++) {<cr><tab>y=y*sin(x[i]);<cr>  }<cr>}<cr><esc>
iabbrev flextemplate %option noyywrap nounput yylineno<cr><cr>%x COMMENT<cr><cr>%{<cr>#include <stdio.h><cr>#include <stdarg.h><cr>#include "parser.tab.h"<cr><cr>void<cr>info(char *s, ...)<cr>{<cr><tab>va_list params;<cr><tab>va_start(params, s);<cr><tab>fprintf(stderr, "%d: info: ", yylineno);<cr><tab>vfprintf(stderr, s, params);<cr><tab>fprintf(stderr, "\n");<cr>}<cr><cr>%}<cr><cr>WS<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>[\t\ \n]+<cr>INTRINSIC_FUNCTION<tab><tab><tab><tab><tab><tab><tab>sin\|cos\|exp<cr>OP<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>[\-+\*/]<cr>EQ<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>=<cr>OPEQ<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{OP}{EQ}<cr>NAME<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>[_a-zA-Z][_a-zA-Z0-9]*<cr><cr>%%<cr><cr>"/*"<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{ BEGIN(COMMENT); }<cr><COMMENT>"*/"<tab><tab><tab><tab><tab><tab><tab><tab>{ BEGIN(INITIAL); }<cr><COMMENT>([^*]\|\n)+\|.<tab><tab><tab><tab><tab><tab>{}<cr><COMMENT><<EOF>><tab><tab><tab><tab><tab><tab><tab>{ yyerror("Unterminated comment"); return 0;}<cr>"//".*\n<tab><tab><tab><tab><tab><tab><tab><tab><tab>{}<cr>{WS}<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{}<cr>{INTRINSIC_FUNCTION}<tab><tab><tab><tab><tab><tab>{  info("INTRINSIC_FUNCTION found in line %d", yylineno);return INTF; }<cr>{OP}<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{  info("OP found"); return OP; }<cr>{EQ}<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{  info("EQ found"); return EQ; }<tab><cr>{OPEQ}<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{  info("OPEQ found"); return OPEQ; }<tab><cr>{NAME}<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{  info("NAME found"); return NAME; }<cr>.<tab><tab><tab><tab><tab><tab><tab><tab><tab><tab><tab>{  info("DEFAULT rule for char: '%c'", yytext[0]); return yytext[0]; }<cr><cr><cr>%%<cr>
iabbrev bisontemplate %{<cr>#include <stdio.h><cr>#include <stdarg.h><cr>extern int yylineno;<cr>void yyerror(const char *s, ...);<cr>void info(char *s, ...);<cr>%}<cr><cr>%token NAME<cr>%token INTF<cr>%token OP<cr>%token EQ<cr>%token OPEQ<cr><cr>%%<cr><cr>slc: <tab><tab>seqstmts<cr><tab><tab>;<cr>seqstmts: <tab>stmt ';' {info("seqstmts->stmt");}<cr><tab><tab>\| <tab>stmt ';' seqstmts {info("seqstmts->stmt seqstmt");}<cr><tab><tab>;<cr>stmt:<tab><tab>assign  {info("stmt->assign");}<cr><tab><tab>;<cr>assign:<tab><tab>NAME EQ expr<cr><tab>  <tab>\|<tab>NAME OPEQ expr<cr><tab><tab>;<cr><cr>expr:<tab><tab>NAME OP NAME<cr><tab><tab>\|<tab>INTF '(' NAME ')'<cr><tab><tab>;<cr><cr>%%<cr><cr>void<cr>yyerror(const char *s, ...)<cr>{<cr><tab>va_list params;<cr><tab>va_start(params, s);<cr><tab>fprintf(stderr, "%d: error: ", yylineno);<cr><tab>vfprintf(stderr, s, params);<cr><tab>fprintf(stderr, "\n");<cr>}<cr><cr>int<cr>main(int argc, char **argv)<cr>{<cr><tab>int i, rc=0;<cr><tab>if( argc < 2 ) { // stdin<cr><tab><tab>yylineno = 1;<cr><tab><tab>rc=yyparse();<cr><tab>}<cr><tab>else {  // from input files<cr><tab><tab>for(i=1;i<argc;i++) {<cr><tab><tab><tab>FILE *f = fopen(argv[i], "r");<cr><tab><tab><tab>if(!f) {<cr><tab><tab><tab><tab>perror(argv[1]);<cr><tab><tab><tab><tab>return 1;<cr><tab><tab><tab>}<cr><tab><tab><tab>yyrestart(f);<cr><tab><tab><tab>rc\|=yyparse();<cr><tab><tab><tab>fclose(f);<cr><tab><tab>}<cr><tab>}<cr><tab>if(!rc)<cr><tab><tab>printf("parsing successful\n");<cr><tab>else<cr><tab><tab>printf("parsing unsuccessful\n");<cr><tab>return rc;<cr>}<cr>
iabbrev cmaketemplate cmake_minimum_required(VERSION 2.8)<cr><cr>project(Media-Collector)<cr><cr>#set(CMAKE_CXX_FLAGS "$(CMAKE_CXX_FLAGS) --std=c++11")<cr>set(MAIN_HEADER main.h)<cr>set(MAIN_SOURCES main.c)<cr>include_directories( $ENV{HOME}/workspace/external-projects/ )<cr>link_directories( $ENV{HOME}/workspace/external-projects/ )<cr>add_executable(${EXECUTABLE_NAME} ${MAIN_HEADER} ${MAIN_SOURCES}) <cr>target_link_libraries(${EXECUTABLE_NAME} customlibname)<cr>install(TARGETS ${EXECUTABLE_NAME} DESTINATION "/usr/local/${EXECUTABLE_NAME}")
iabbrev socketconnect  int sd;<cr>int status;<cr>struct sockaddr_in sa;<cr>if( (sd=socket(AF_INET, SOCK_STREAM, 0)) < 0 )<CR>{<CR>fprintf(stderr, "error: socket failed: %s\n", strerror(errno));<CR>exit(EXIT_FAILURE);<CR>}<CR><CR>memset(&sa, 0, sizeof(sa));<CR>sa.sin_family = AF_INET;<CR>sa.sin_port = htons(SERVICE_PORT); <CR>if( inet_pton(AF_INET, "127.0.0.1", &sa.sin_addr) != 1)<CR>{<CR>fprintf(stderr, "error: inet_pton(): %s\n", strerror(errno));<CR>close(sd);<CR>exit(EXIT_FAILURE);<CR>}<CR>if( connect(sd, (struct sockaddr*)&sa, sizeof(sa)) < 0 )<CR>{<CR>fprintf(stderr, "error: socket failed: %s\n", strerror(errno));<CR>close(sd);<CR>exit(EXIT_FAILURE);<CR>}<CR><CR>if( write(sd, HELLO, sizeof(HELLO)) < 0 )<CR>{<CR>fprintf(stderr, "error: write failed: %s\n", strerror(errno));<CR>close(sd);<CR>exit(EXIT_FAILURE);<CR>}<CR>close(sd);<CR>


" latex abbreviations
iabbrev texmatrix \begin{align}<cr>\begin{bmatrix}<cr>a & b \\<cr>c & d<cr>\end{bmatrix}<cr>\end{align}
iabbrev textutorial \documentclass{article}<cr><cr>\usepackage{amsmath}<cr>\usepackage{palatino}<cr>\usepackage{amssymb}<cr>\usepackage{amsxtra}<cr>\usepackage[german]{babel}<cr>\usepackage{t1enc}<cr>\usepackage[utf8]{inputenc}<cr>\usepackage{amsthm}<cr>\usepackage{epsfig}<cr>\usepackage{listings}<cr>\usepackage{url}<cr>\usepackage{graphicx}<cr>\begin{document}<cr><cr>\lstloadlanguages{[ISO]C++}<cr>\lstset{basicstyle=\small, numbers=none, numberstyle=\footnotesize}<cr><cr>\pagestyle{plain}<cr><cr>\begin{center}<cr>{\bf \large Einf\"uhrung in die Informatik (Programmierung, WS10/11)} \vspace{.1cm} \\<cr>\includegraphics[width=3cm]{figures/logo.pdf} \\<cr>{\bf \huge \"Ubungsblatt A (18 Punkte)} \vspace{.1cm} \\<cr>(Erste Schritte mit C++, g++ und subversion)\vspace{.3cm} \\<cr>{\bf Abgabe: 2.11.2010 bis 16:30 Uhr per svn}\\<cr>\end{center}<cr><cr>\section*{Aufgabe 1 (10 Punkte)}<cr>\section*{Aufgabe 2 (10 Punkte)}<cr><cr><cr>\end{document}<cr>
iabbrev textemplate \documentclass[a4paper]{article}<cr>\usepackage[utf8]{inputenc}<cr>\usepackage{listings}<cr>\begin{document}<cr>\begin{lstlisting}<cr>asdf<cr>\end{lstlisting}<cr>\end{document}
iabbrev texpaper \documentclass[a4paper]{article}<cr><cr><cr>\usepackage{amsthm}<cr>\usepackage{amsmath}<cr>\usepackage{amssymb}<cr>\usepackage[utf8]{inputenc}<cr>\usepackage[pdftex,bookmarks=true,bookmarksopen=false,bookmarksnumbered=true,linktocpage,colorlinks=true,linkcolor=blue, citecolor=blue, urlcolor=blue]{hyperref}<cr>\usepackage{listings}<cr><cr>\theoremstyle{plain}<cr>\newtheorem{theorem}{Theorem}<cr>\newtheorem{lemma}[theorem]{Lemma}<cr>\newtheorem{corollary}[theorem]{Corollary}<cr>\newtheorem{proposition}[theorem]{Proposition}<cr>\theoremstyle{definition}<cr>\newtheorem{definition}[theorem]{Definition}<cr>\theoremstyle{remark} <cr>\newtheorem*{remark}{Remark}<cr><cr><cr>\newcommand{\N}{{\mathbb N}}<cr>\newcommand{\R}{{\mathbb R}}<cr>\newcommand{\A}{{\mathbf A}}<cr>\newcommand{\X}{{\mathbf x}}<cr>\newcommand{\Y}{{\mathbf y}}<cr>\newcommand{\tl}{tangent-linear}<cr>\newcommand{\aj}{adjoint}<cr>\newcommand{\oc}{original code}<cr>\newcommand{\lstref}[1]{listing \ref{#1}}<cr>\newcommand{\Lstref}[1]{Listing \ref{#1}}<cr>\newcommand{\lstline}[2]{line \ref{#2} of listing \ref{#1}}<cr>\newcommand{\prg}[1]{{\lstinline[basicstyle=\sffamily,keywordstyle=\mdseries]!#1!}}<cr>\newcommand{\AD}{Algorithmic Differentiation}<cr>\newcommand{\numthreads}{OMP\_NUM\_THREADS}<cr><cr><cr>\lstloadlanguages{[ISO]C++}<cr>\lstset{captionpos=b,language=[ISO]C++,basicstyle=\small\sffamily, numbers=left, numberstyle=\footnotesize, stepnumber=1, numbersep=5pt, breaklines=true, escapeinside={/*@}{@*/}}<cr>\lstset{morekeywords={omp, parallel, pragma, num_threads, firstprivate, reduction}}<cr>\title{\TITLE}<cr>\author{Michael F\"orster$^1$\\<cr>\footnotesize $^1$ Michael.Foerster@com-science.de, Germany\\<cr>}<cr>\date{}<cr><cr><cr>\hypersetup{%<cr>pdfauthor={Michael Förster}<cr>,pdftitle={\TITLE}<cr>,pdfsubject={}<cr>,linkcolor=blue,anchorcolor=blue,citecolor=blue,filecolor=blue,menucolor=blue,urlcolor=blue}<cr>\begin{document}<cr><cr><cr>\maketitle<cr><cr><cr>\begin{abstract}<cr>abstract text<cr>\end{abstract}<cr><cr><cr>\section{Introduction}<cr>\section{What have been done}<cr>\section{Experimental Results}<cr>\section{Outlook}<cr><cr><cr>\bibliographystyle{unsrt}<cr>\bibliography{../../paper}<cr>\end{document}<cr><cr>
iabbrev texbeamer \documentclass{beamer}<cr>\usepackage{beamerthemeshadow}<cr>\begin{document}<cr>\title{Beamer Class well nice}  <cr>\author{Sascha Frank}<cr>\date{\today} <cr><cr>\frame{\titlepage} <cr><cr>\frame{\frametitle{Table of contents}\tableofcontents} <cr><cr><cr>\frame{<cr>\frametitle{pictures and lists in beamer class}<cr>\begin{columns}<cr>\begin{column}{5cm}<cr>\begin{itemize}<cr>\item<1-> subject 1<cr>\item<3-> subject 2<cr>\item<5-> subject 3<cr>\end{itemize}<cr>\vspace{3cm} <cr>\end{column}<cr>\begin{column}{5cm}<cr>\begin{overprint}<cr>\includegraphics<2>{PIC1}<cr>\includegraphics<4>{PIC2}<cr>\includegraphics<6>{PIC3}<cr>\end{overprint}<cr>\end{column}<cr>\end{columns}}<cr><cr>\end{document}<cr><cr><cr><cr>
iabbrev bibarticle  @article { id,<cr>author = {},<cr>title = {{}},<cr>journal ={},<cr>year = {},<cr>pages = {},<cr>publisher = {},<cr>address = {},<cr>}<cr><cr>
iabbrev bibbook     @book { id,<cr>author = {},<cr>title = {{}},<cr>year = {},<cr>publisher = {},<cr>address = {},<cr>}<cr><cr>
iabbrev bibtechreport  @book { id,<cr>author = {},<cr>title = {{}},<cr>year = {},<cr>address = {},<cr>}<cr><cr>
iabbrev bibarticle  @article { id,<cr>author = {},<cr>title = {{}},<cr>journal ={},<cr>year = {},<cr>pages = {},<cr>publisher = {},<cr>address = {},<cr>}<cr><cr>
iabbrev texpapermakefile   SRC_CODES=code/f.c code/a1_f.c code/f-wt-omp1.c<cr>GENERATED_SRC=memext.c seq.c critical.c<cr>GENERATED_TEX=*.aux *.log *.pdf *.ps *.dvi *.bbl *.blg<cr><cr><cr>all: paper.ps  paper.pdf<cr><cr>%.ps:%.dvi<cr>dvips $< -o<cr><cr>%.pdf: %.ps<cr><cr>paper.dvi: paper.tex Makefile $(GENERATED_SRC) $(SRC_CODES)<cr>latex $< <cr>bibtex $(<:.tex=.aux)<cr>latex $< <cr>latex $< <cr><cr><cr><cr>seq.c: code/a1_adomp_f.c Makefile <cr>cat $< \| sed "s/\t/\ \ \ \ /g" > /tmp/a.c<cr>g++ -E -C -P -DSOLUTION_SEQ /tmp/a.c > $@<cr><cr>critical.c: code/a1_adomp_f.c Makefile <cr>cat $< \| sed "s/\t/\ \ \ \ /g" > /tmp/a.c<cr>g++ -E -C -P -DSOLUTION_CRITICAL /tmp/a.c > $@ <cr>perl -n -p -e 's#firstprivate\(([^\)]*)\)#\\\n\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ firstprivate($$1) /*@ \\label{lst-adomp-critical2} @*/#;' $@ > /tmp/a.c<cr>mv /tmp/a.c $@<cr><cr>memext.c: code/a1_adomp_f.c Makefile <cr>cat $< \| sed "s/\t/\ \ \ \ /g" > /tmp/a.c<cr>g++ -E -C -P -DSOLUTION_MEMEXT /tmp/a.c > $@ <cr>perl -n -p -e 's#firstprivate\(([^\)]*)\)#\\\n\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ firstprivate($$1)#;' $@ > /tmp/a.c<cr>mv /tmp/a.c $@<cr><cr>clean:<cr>rm -f $(GENERATED_SRC) $(GENERATED_TEX)<cr><cr>.PHONY: all clean<cr>
iabbrev texletter   \documentclass[DIN, pagenumber=false, parskip=half,%<cr>fromalign=left, fromphone=true,%<cr>fromemail=true, fromurl=false, %<cr>fromlogo=false, fromrule=false] {scrlttr2}<cr>\usepackage[utf8]{inputenc} % umlaute und ß direkt eingeben<cr>\usepackage{eurosym}<cr>\usepackage{ngerman} <cr><cr>\setkomavar{fromname}{Michael Förster}<cr>\setkomavar{fromaddress}{Rott 11\\52152 Simmerath}<cr>\setkomavar{fromphone}{0160/4416609}<cr>\setkomavar{fromemail}{Michael.Foerster@com-science.de}<cr>\setkomavar{subject}{betreff}<cr>\setkomavar{signature}{}<cr>%\setkomavar{fromurl}{www.michael-förster.de}<cr>\setkomavar{signature}{}<cr><cr>\begin{document}<cr>%\subject{asdf}<cr>\begin{letter}<cr>{\noindent%<cr>Jungbluth \& Hiltner Grundstücks GbR\\<cr>Oberstr. 86\\<cr>52349 Düren<cr>}<cr>\opening{Sehr geehrte Damen und Herren,}<cr><cr>ich bin Mieter des Garagenstellplatz mit der Nummer 1215 in der Achterstraße 24, 52072 Aachen.<cr>Durch einen Wohnungswechsel bin ich leider gezwungen den Mietvertrag fristgerecht zum 31.07.2010 zu kündigen.<cr>Ich wünsche Ihnen weiterhin alles Gute und verbleibe <cr><cr>\closing{mit freundlichen Grüßen}<cr>\end{letter}<cr><cr>\end{document}
iabbrev texletter2  \documentclass{letter}<cr>\usepackage{hyperref}<cr>\signature{Joe Bloggs}<cr>\address{21 Bridge Street \\ Smallville \\ Dunwich DU3 4WE}<cr><cr>\longindentation=0pt<cr><cr><cr><cr><cr>\begin{document}<cr><cr>\begin{letter}{Director \\ Doe \& Co \\ 35 Anthony Road<cr>\\ Newport \\ Ipswich IP3 5RT}<cr>\opening{Dear Sir or Madam:}<cr><cr>I am writing to you on behalf of the Wikipedia project (http://www.wikipedia.org/),<cr>an endeavour to build a fully-fledged multilingual encyclopaedia in an entirely<cr>open manner, to ask for permission to use your copyrighted material.<cr><cr>% The \ldots command produces dots in a way that will not upset<cr>% the typesetting of the document.<cr>\ldots<cr><cr>That said, allow me to reiterate that your material will be used to the noble end of<cr>providing a free collection of knowledge for everyone; naturally enough, only if you<cr>agree. If that is the case, could you kindly fill in the attached form and post it<cr>back to me? We shall greatly appreciate it.<cr><cr>Thank you for your time and consideration.<cr><cr>I look forward to your reply.<cr><cr>\closing{Yours Faithfully,}<cr><cr>\ps<cr><cr>P.S. You can find the full text of GFDL license at<cr>\url{http://www.gnu.org/copyleft/fdl.html}.<cr><cr>\encl{Copyright permission form}<cr><cr>\end{letter}<cr>\end{document}
iabbrev textable \begin{table}[!ht]<cr>\begin{center}<cr>\begin{tabular}{\|l\|c\|c\|c\|}\hline<cr>\multicolumn{4}{\|c\|}{\rule[-3mm]{0mm}{8mm}\textbf{title}}\\<cr>\hline\hline<cr>col1     &    col2   &  \hspace{3cm}  &  col3 \\<cr>blabla   &  & & \\ \hline<cr>\end{tabular}<cr>\caption{The Caption.}<cr>\label{tbl1}<cr>\end{center}<cr>\end{table}<esc>2kI<tab><esc>
iabbrev texcols \begin{center}<cr>\begin{columns}[c]\begin{column}{0.45\textwidth}<cr>\includegraphics[width=32ex]{figures/juelich-logo}   <cr>\end{column}<cr>\begin{column}{0.45\textwidth}<cr>IBG-1: Biotechnologie <cr>\end{column}<cr>\end{columns}<cr>\end{center}<cr>
iabbrev texframe \frame{<cr>\frametitle{title}<cr>\framesubtitle{subtitle}<cr>\begin{center}<cr>\begin{itemize}<cr>\item {}<cr>\item {}<cr>\item {}<cr>\item {}<cr>\item {}<cr>\end{itemize}<cr>\end{center}<cr>}<cr>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<cr><esc>?title<cr>
iabbrev texvframe \frame[containsverbatim]{<cr>\frametitle{title}<cr>\begin{lstlisting}[caption={},numbers=none,label={}]<cr><cr>\end{lstlisting}<cr>}<cr>%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<cr><esc>?title<cr>
iabbrev texitem \begin{itemize}<cr>\item <cr>\item <cr>\end{itemize}
iabbrev texenum \begin{enumerate}<cr>\item <cr>\item <cr>\end{enumerate}
iabbrev texlstlabel /*@ \label{} @*/  
iabbrev texlstcom /*@$$@*/  
iabbrev texrule \rule[0mm]{0mm}{0mm}
iabbrev texlst \begin{lstlisting}[caption={},numbers=none,label={}]<cr>\end{lstlisting}<cr><esc>2kA<cr>
iabbrev texfig \begin{figure}[htb]<cr><tab>\centering<cr><tab>\includegraphics[0.95\textwidth]{images/plot.eps}<tab>\caption{caption}<tab>\label{label}<cr>\end{figure}
iabbrev textbllst \begin{table*}[hptb]<cr>\begin{tabular}{p{-1ex}l}<cr>&<cr>\lstinputlisting[caption={caption},label={lst-label1}]{code/f.c}<cr>\end{tabular}<cr>\end{table*}<cr>
iabbrev texsrctrans <cr>\lstset{caption={},numbers=none,label={}}<cr>\begin{center}<cr>\begin{tabular}{ccc}<cr>\begin{lstlisting}<cr>\end{lstlisting}<cr>&<cr>\rule[0mm]{10mm}{0mm}<cr>$\longmapsto$<cr>\rule[0mm]{10mm}{0mm}<cr>&<cr>\begin{lstlisting}<cr>\end{lstlisting}<cr>\\<cr>\end{tabular}<cr>\end{center}<cr><cr>
"una textbl

" phd thesis abbreviations
iabbrev SPLLST  unsigned int n;<cr>double *x;<cr>double *thread_result;<cr>#pragma omp parallel<cr>{<cr>int tid=0;<cr>int p=0;<cr>int c=0;<cr>int lb=0;<cr>int ub=0;<cr>int i=0;<cr>int j;<cr>double y=0.;<cr><cr>tid=omp_get_thread_num();<cr>p=omp_get_num_threads();<cr>c=n/p;<cr>lb=tid*c;<cr>ub=(tid+1)*c-1;<cr>i=lb;<cr>while(i<=ub) {<cr>y=sin(x[i]);<cr>}<cr>}<cr>
iabbrev texspl \begin{align}<cr>\begin{array}{l}<cr>\end{array}<cr>\end{align}<cr>
iabbrev SEQ  \SeqStmts
iabbrev SSEQ \SubSeqStmts
iabbrev lstmm   /*@$  $@*/
iabbrev lstit  /*@\it @*/

" AUTOCONF macros
iabbrev AC_ARG_ENABLE()  AC_ARG_ENABLE([ENABLEWHAT], <cr>[AC_HELP_STRING([--enable-ENABLEWHAT], [This enables ENABLEWHAT.])],<cr>[ac_cv_enable_ENABLEWHAT=$enableval],<cr>[ac_cv_enable_ENABLEWHAT=no]<cr>)<cr><cr>if test "$ac_cv_enable_ENABLEWHAT" != "no"; then<cr>AC_DEFINE([DEFNAME], [1], [Comment which lands in the config.h])<cr>fi<cr>AC_SUBST([ENABLEWHAT], [$ac_cv_enable_ENABLEWHAT])<cr>
iabbrev AC_ARG_WITH()    AC_ARG_WITH([WITHWHAT], <cr>[AC_HELP_STRING([--with-WITHWHAT], [This compiles with WITHWHAT])],<cr>[ac_cv_with_WITHWHAT=$withval],<cr>[ac_cv_with_WITHWHAT=no]<cr>)<cr><cr>if test "$ac_cv_with_WITHWHAT" != "no"; then<cr>AC_DEFINE([DEFNAME], [1], [Comment which lands in the config.h])<cr>fi<cr>AC_SUBST([WITHWHAT], [$ac_cv_with_WITHWHAT])<cr>
iabbrev AC_CHECK_PROGS() AC_CHECK_PROGS(LATEX,[pdflatex latex],no)<cr>if test $LATEX = "no" ;<cr>then<cr>AC_MSG_ERROR([Unable to find a Latex application.]);<cr>fi
iabbrev AC_DEFINE()      AC_DEFINE([DEBUG], [0], [Debug switch, on=1 off=0])
iabbrev AM_CONDITIONAL() AM_CONDITIONAL([CONDITIONAL_VARIABLE], [test $myvar = "yes"])
iabbrev AC_MSG_CHECKING() AC_MSG_CHECKING([whether WHAT is enabled ])<cr>AC_MSG_RESULT([$ac_cv_enable_WHAT])<cr>


" OpenMP abbreviations
iabbrev _TID             int tid = omp_get_thread_num(); 

" load session file automatically
"silent source! Session.vim

let g:ctags_statusline=1
let g:ctags_title=1
let generate_tags=1
" re-generate ctags each time you save a buffer:
let g:ctags_regenerate=1

"let sessionoptions=blank,folds,globals,help,localoptions,options,resize,sesdir,slash,tabpages,unix,winpos,winsize

"set cinkeys=0{,0},0),:,0#,!^F,o,O,e 
set cinkeys=0{,0},0),:,!^F,o,O,e 
" CTRL Tab shortcuts
"unmap <C-Tab>
colorscheme murphy

" Get a list of available printers with 'lpstat -a'
set pdev=NRG_DSm645
set printoptions=number:y,syntax:y
set history=100
" set textwidth=80
" cscope mappings
source $HOME/.vim/cscope_maps.vim

let g:ycm_autoclose_preview_window_after_insertion = 1

" Go language settings
au BufRead,BufNewFile *.go set filetype=go 
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
" use goimports for formatting
let g:go_fmt_command = "goimports"

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
" Open go doc in vertical windows, horizontal, or tab
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef" <CR>

" Add hook for clang-format
map <C-K> ggVG :py3f /home/micki/workspace/external-projects/llvm/tools/clang/tools/clang-format/clang-format.py<CR>
imap <C-K> <c-o>:py3f /home/micki/workspace/external-projects/llvm/tools/clang/tools/clang-format/clang-format.py<CR>

autocmd FileType go nnoremap <C-]> :GoDef<CR>
