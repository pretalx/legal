\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{terms}

\RequirePackage{ifthen}
\usepackage{textcomp}
\usepackage{graphicx}
\RequirePackage{mathpazo}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{color}
\RequirePackage{pifont}
\RequirePackage{setspace}
\usepackage[utf8x]{inputenc}
\usepackage[a4paper,bottom=15mm]{geometry}
\usepackage[default,scale=0.95]{opensans}
\pagenumbering{arabic}

\ProcessOptions \relax

\LoadClass[11pt]{scrartcl}
\usepackage{enumitem}

% --- Page Layout ---
\setlength\textwidth{180mm}
\setlength\textheight{255mm}
\setlength\oddsidemargin{-10mm}
\setlength\evensidemargin{0in}
\setlength\topmargin{-20mm}
\setlength\parindent{0in}
\setlength\parskip{0.5em}

% Define default command values
\newcommand{\Title}{}
\newcommand{\ShortTitle}{}
\newcommand{\Version}{}
\newcommand{\Date}{}

\newcommand{\SetTitle}[1]{\renewcommand{\Title}{#1}}
\newcommand{\SetShortTitle}[1]{\renewcommand{\ShortTitle}{#1}}
\newcommand{\SetVersion}[1]{\renewcommand{\Version}{#1}}
\newcommand{\SetDate}[1]{\renewcommand{\Date}{#1}}

\renewcommand\maketitle{
    \thispagestyle{termstitle}
    \vspace*{-12mm}
    \begin{center}
    \includegraphics*[height=3cm]{../logo}\\
    \LARGE{\Title} \\
    \vspace{5mm}
    \normalsize{Version \Version\ -- \Date}
    \end{center}
    \onehalfspacing
}
    \newcommand{\signline}[1]{
    ~ \\
    \vspace{12mm}
    \begin{tabular}{lp{2em}l}
     \hspace{5cm}   && \hspace{8cm} \\\cline{1-1}\cline{3-3}
     Ort, Datum     && {#1}
    \end{tabular}
}


\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\S\ \arabic{subsection}}
\setenumerate[1]{label=(\arabic*)}
\setenumerate[2]{label=\alph*)}
\renewcommand{\autodot}{}

\renewcommand\section{\@startsection
    {section}{2}{0mm}{0.1\baselineskip}{0.1\baselineskip}{\centering\normalfont\large\textbf}
}
\renewcommand\subsection{\@startsection
    {subsection}{2}{0mm}{0.1\baselineskip}{0.1\baselineskip}{\centering\normalfont\normalsize\textbf}
}
\renewcommand\subsubsection{\@startsection
    {subsubsection}{2}{0mm}{0.1\baselineskip}{0.1\baselineskip}{\normalfont\normalsize\textbf}
}
\newenvironment{noindlist}
{\begin{list}{\labelitemi}{\leftmargin=1em\itemindent=0em\topsep=-5em\itemsep=-4pt}}
{\end{list}}


% --- Header and Footer Styles ---

% The style for the page with \maketitle called on it.
\fancypagestyle{termstitle} {
    \renewcommand\headrulewidth{0pt}
    \renewcommand\footrulewidth{0.5pt}
    \chead{}
    \cfoot{\thepage\ / \pageref{LastPage}}
    \lfoot{}
    \rfoot{}
    \lhead{}
    \rhead{}
}

% The style for pages without \maketitle called on it.
\fancypagestyle{terms} {
    \renewcommand\headrulewidth{0.5pt}
    \renewcommand\footrulewidth{0.5pt}
    \chead{}
    \cfoot{\thepage\ / \pageref{LastPage}}
    \lfoot{}
    \rfoot{}
    \lhead{\ShortTitle}
    \rhead{Version \Version}
}

\pagestyle{terms}

\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage{longtable}
\RequirePackage{multirow}
\usepackage[
   colorlinks=true,
   urlcolor=black,
   filecolor=black,
   linkcolor=black,
   citecolor=black,
   menucolor=black,
   raiselinks=true,
   breaklinks,
   verbose,
   plainpages=false,
   pageanchor=true,
   pdfstartview=FitH,
]{hyperref}
