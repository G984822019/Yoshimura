\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{entry}[2021/06/20 v0.3 卒論審査登録(拓殖大学工学部情報工学科)]
\LoadClass[twocolumn]{jsarticle}
\RequirePackage{newenum}
\RequirePackage[dvipdfmx]{graphicx}

\def\author#1#2{\def\@author{#1 #2}}
\def\supervisor#1#2{%
  #1 & #2 \\}
\def\supervised#1{\def\@supervised{
    指導教員 \begin{tabular}[t]{ll}
      #1
  \end{tabular}}}

\renewcommand{\normalsize}{%
    \@setfontsize\normalsize\@xpt{13}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand{\scriptsize}{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand{\tiny}{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand{\large}{\@setfontsize\large\@xipt{15}}
\renewcommand{\Large}{\@setfontsize\Large\@xiipt{19}}
\renewcommand{\LARGE}{\@setfontsize\LARGE\@xivpt{21}}
\renewcommand{\huge}{\@setfontsize\huge\@xviipt{25}}
\renewcommand{\Huge}{\@setfontsize\Huge\@xxpt{28}}


\def\@cite#1#2{\leavevmode\unskip
  \ifnum\lastpenalty=\z@\penalty\@highpenalty\fi% highpenalty before
  \,{
    [{\multiply\@highpenalty 3 #1%             % triple-highpenalties within
      \if@tempswa,\penalty\@highpenalty\ #2\fi % and before note.
    }]}\spacefactor\@m}

\renewcommand{\maketitle}{
  \if@twocolumn
    \ifnum \col@number=\@ne \@maketitle
    \else \twocolumn[\@maketitle]%
    \fi
  \else
     \global\@topnum\z@   % Prevents figures from going at top of page.
     \@maketitle
  \fi
  \thispagestyle{empty}\@thanks
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\p@thanks\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@supervised\@empty
%%
%%
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
%%
  \global\let\date\relax
  \global\let\and\relax
  }
\def\@maketitle{%
  \begin{center}%
    \let\footnote\thanks
	{\LARGE\bf \@title \par}%
	\vskip 1.0em%
	       { \large
		 \lineskip .0em%
		 \baselineskip 0em%
		 \@author \hspace*{\fill} \@supervised
	       }%
	       \vskip 1em%
  \end{center}%
}%

\renewcommand{\section}{\@startsection{section}{1}{\z@}%
   {.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {.3\Cdp}%
   {\reset@font\Large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
   {.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {.3\Cdp}%
   {\reset@font\large\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
   {.5\Cvs \@plus.5\Cdp \@minus.2\Cdp}%
   {.3\Cdp}%
   {\reset@font\normalsize\bfseries}}


\setlength\paperheight {297mm}%
\setlength\paperwidth  {210mm}
\setlength\textwidth{\paperwidth}
\setlength\oddsidemargin{18mm}
\setlength\evensidemargin{18mm}
\setlength\columnsep{3zw}
\addtolength\textwidth{-\oddsidemargin}
\addtolength\textwidth{-\evensidemargin}
\addtolength\oddsidemargin{-1in}
\addtolength\evensidemargin{-1in}

\setlength\topmargin{20mm}
\addtolength\topmargin{-1in}
\setlength\headheight{0mm}
\setlength\headsep{0mm}
%\setlength\textheight{\paperheight}
\setlength\textheight{252mm}
\setlength\itemsep{0mm}
\setlength\parsep{0mm}

