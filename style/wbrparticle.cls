% -------------------------------------------------------------------------------------------------
%
%   Webrepublic template class for proposals.
%
%   KOMA-Script Docs:
%   http://texdoc.net/texmf-dist/doc/latex/koma-script/scrguide.pdf
%
%   Copyright (C) 2014 Webrepublic AG
%
% -------------------------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wbrparticle}[2014/10/20 Webrepublic document class for articles]

% base class
\LoadClass[
    draft=false,    % set this to true for draft mode
    fontsize=11pt,  % base font size
		DIV=13,         % page layout
    parskip=half    % put spacing between paragraphs
]{scrartcl}

% page style
\pagestyle{plain}

% language and encoding
\RequirePackage[T1]{fontenc}

% colors
\RequirePackage[hyperref]{xcolor}
\definecolor{lightblue}{cmyk}{1, 0.5, 0, 0}
\definecolor{wbrpred}{cmyk}{0, 0.8353, 0.7490, 0}  % ff2a40

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
\setkomafont{sectioning}{\bfseries\color{wbrpred}}

% hyperlinks
\RequirePackage[unicode,colorlinks]{hyperref}
\hypersetup{linkcolor=wbrpred,urlcolor=lightblue}

% document information
\hypersetup{pdfauthor=Webrepublic}
\hypersetup{pdfsubject=Webrepublic}
\hypersetup{pdfkeywords={Webrepublic}}

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
            \textcolor{gray}{\textbf{Webrepublic AG}} & \textcolor{wbrpred}{email} & \href{mailto:office@webrepublic.ch}{office@webrepublic.ch} \\
            \textcolor{gray}{Seefeldstrasse 233}      & \textcolor{wbrpred}{tel}   & \href{tel:+41 44 542 90 60}{+41 44 542 90 60} \\
            \textcolor{gray}{CH - 8008 Zürich}        & \textcolor{wbrpred}{web}   & \href{http://www.webrepublic.ch}{www.webrepublic.ch}
    \end{tabular}
}
\fancyfoot[R]{\footnotesize~\\\textcolor{gray}{Page \thepage/\pageref*{LastPage}}}

% graphics
\RequirePackage{graphicx}
\RequirePackage{epstopdf}

% hyphenation patterns
\hyphenation{Web-re-pub-lic}
