% -------------------------------------------------------------------------------------------------
%
%   Webrepublic template class for proposals.
%
%   Copyright (C) 2014 Webrepublic AG
%   Author: Gergely Kalmar (gergely.kalmar at webrepublic.ch)
%
% -------------------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{webrepublic}[2014/08/18 Webrepublic template class for proposals]

% base class
\LoadClass[11pt,a4paper]{article}

% language and encoding
\RequirePackage[T1]{fontenc}

% font
\RequirePackage{fontspec}
\RequirePackage{microtype}
\setmainfont[Path=./fonts/]{HelveticaNeueLTStd}[
  Extension = .otf,
  UprightFont = *-Th,
  BoldFont = *-Roman,
  ItalicFont = *-ThIt,
  BoldItalicFont = *-It
]

% colors
\RequirePackage[cmyk,hyperref]{xcolor}
\definecolor{code}{cmyk}{0, 0, 0, 0.1}
\definecolor{lightblue}{cmyk}{1, 0.5, 0, 0}

% hyperlinks
\RequirePackage[unicode,colorlinks]{hyperref}
\hypersetup{linkcolor=red,urlcolor=lightblue}

% document information
\hypersetup{pdfauthor=Webrepublic}
\hypersetup{pdfsubject=Webrepublic}
\hypersetup{pdfkeywords={Webrepublic}}

% layout
\RequirePackage{a4wide}
\setlength{\voffset}{-0.5in}
\setlength{\topmargin}{0pt}
\setlength{\headheight}{1.2cm}
\setlength{\headsep}{0.5in}
\setlength{\textheight}{625pt}
\setlength{\footskip}{0.75in}

% header and footer
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyhead[L]{\includegraphics[height=1cm]{./style/webrepublic_logo.pdf}}
\fancyfoot[L]{%
    \footnotesize
    \begin{tabular}{@{}p{4.5cm}ll}
            \textcolor{gray}{\textbf{Webrepublic AG}} & \textcolor{red}{email} & \href{mailto:office@webrepublic.ch}{office@webrepublic.ch} \\
            \textcolor{gray}{Seefeldstrasse 233}      & \textcolor{red}{tel}   & \href{tel:+41 44 542 90 60}{+41 44 542 90 60} \\
            \textcolor{gray}{CH - 8008 Zürich}        & \textcolor{red}{web}   & \href{http://www.webrepublic.ch}{www.webrepublic.ch}
    \end{tabular}
}
\fancyfoot[R]{\footnotesize~\\\textcolor{gray}{Page \thepage/\pageref*{LastPage}}}

% code environment
\RequirePackage{listings}
\lstdefinelanguage{JavaScript}{
    keywords={break, case, catch, continue, debugger, default, delete, do, else, finally, for, function, if, in, instanceof, new, return, switch, this, throw, try, typeof, var, void, while, with},
    keywordstyle=\color{blue},
    ndkeywords={class, export, boolean, throw, implements, import, this},
    ndkeywordstyle=\color{darkgray},
    identifierstyle=\color{black},
    sensitive=true,
    comment=[l]{//},
    morecomment=[s]{/*}{*/},
    commentstyle=\color{green}\ttfamily,
    stringstyle=\color{magenta}\ttfamily,
    morestring=[b]',
    morestring=[b]"
}

\lstset{
   backgroundcolor=\color{code},
   extendedchars=true,
   basicstyle=\fontsize{8}{1em}\selectfont\ttfamily,
   showstringspaces=false,
   showspaces=false,
   numbers=left,
   numberstyle=\footnotesize,
   numbersep=9pt,
   tabsize=2,
   breaklines=true,
   showtabs=false,
   captionpos=b,
   aboveskip=4mm,
   belowskip=2mm
}

% section style and spacing
\frenchspacing
\RequirePackage{parskip}
\setlength{\parskip}{4mm plus 1.5mm minus 1.5mm}

\RequirePackage{titlesec}
\titlespacing\section{0pt}{4mm plus 2mm minus 2mm}{0mm plus 1mm minus 1mm}
\titlespacing\subsection{0pt}{4mm plus 1mm minus 1mm}{0mm plus 0.5mm minus 0.5mm}

\titleformat{\section}{\color{gray}\normalfont\LARGE}{}{0pt}{}
\titleformat{\subsection}{\normalfont\bf\large}{}{0pt}{}

% graphics
\RequirePackage{graphicx}
\RequirePackage{epstopdf}

% hyphenation patterns
\hyphenation{Web-re-pub-lic}

% new commands
\renewcommand{\title}[1]{\hypersetup{pdftitle=#1}\textcolor{red}{\LARGE \textbf{#1}}}
\renewcommand{\author}[1]{\hypersetup{pdfauthor=#1}}
\newcommand{\subtitle}[1]{\par\vspace*{-0.4em}\textcolor{red}{\LARGE #1}}
\newcommand{\subsubtitle}[1]{\par\vspace*{-0.4em}\textcolor{red}{\Large #1}}
\newcommand{\confidential}{\fancyhead[R]{\textcolor{gray}{\vspace*{0.15cm}\Large\textsc{C o n f i d e n t i a l}}}}
