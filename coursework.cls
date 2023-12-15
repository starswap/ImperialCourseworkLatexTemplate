% REMEMBER TO ADD INSTITUTION
\LoadClass[10pt]{article} % Start with the basic article class DO NOT alter font size; this is a competition requirement
\NeedsTeXFormat{LaTeX2e} % version requirementa
\ProvidesClass{coursework}[Imperial College London Coursework Template]

% Extra packages required to do the styling
\RequirePackage{titlesec}
\RequirePackage{tabularx}
\RequirePackage{pgffor}
\RequirePackage{pbox}
\RequirePackage{geometry}
\RequirePackage{xcolor}
\RequirePackage{listings}
\RequirePackage{textcomp}
\RequirePackage[T1]{fontenc}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{chngcntr}
\RequirePackage{authoraftertitle}

% \counterwithin{figure}{section}

\newcommand{\institution}[1] {
    \newcommand{\@institution}{#1}    
}



% Colours to be used in the document
\definecolor{imperialblue}{rgb}{0.0, 0.24, 0.45}
\definecolor{lbcolor}{rgb}{1.0,1.0,1.0}

% Format of code listings
\lstset{
	backgroundcolor=\color{lbcolor},
	tabsize=4,
	rulecolor=,
	language=python,
        basicstyle=\scriptsize,
        upquote=false,
        aboveskip={1.5\baselineskip},
        columns=fixed,
        showstringspaces=false,
        extendedchars=true,
        breaklines=true,
        prebreak = \raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
        frame=single,
        showtabs=false,
        showspaces=false,
        showstringspaces=false,
        identifierstyle=\ttfamily,
        keywordstyle=\color{orange},
        commentstyle=\color[rgb]{0.133,0.545,0.133},
        stringstyle=\color[rgb]{0.627,0.126,0.941},
        numbers=left
}


% lengths and orientation of page; use US letter paper because it is larger than A4 and so we get more space 
\setlength{\parindent}{0ex} % Remove indent
\setlength{\parskip}{0ex}
\geometry{a4paper, portrait, margin=0.7in} % Do not alter margin: This is a competition requirement

% format of section headings
\titleformat{\section}
    {\Large\it\raggedright}
    {}{0em}
    {}
    [\color{imperialblue}\titlerule]
    
\titlespacing*{\section}{0pt}{1.6ex}{2.5ex}

% format subsection headings
\titleformat{\subsection}
    {\large\bfseries\raggedright}
    {\thesubsection. }{0em}
    {}
    

%Assumption and Justification
\newcommand{\assume}[2]{
    \textit{#1}
    \\
    \textbf{Justification:} #2
}

% Ensures figures are numbered 1.1 3.2 etc and not just 1,2,3,4
%\renewcommand{\thefigure}{\arabic{figure}}

%Creates headers and footers
\setlength{\headheight}{14.5pt}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\MyTitle }
\fancyhead[C]{}
\fancyhead[R]{\MyAuthor}

\fancyfoot[L]{Page \thepage~of \pageref*{LastPage}}
\fancyfoot[C]{}
\fancyfoot[R]{\@institution}

\renewcommand{\sectionmark}[1]{\markboth{#1}{\rightmark}}
\renewcommand{\subsectionmark}[1]{\markright{#1}}

\renewcommand{\headrulewidth}{0.4pt} % line between header and main content
\renewcommand{\footrulewidth}{0.4pt} % line between footer and main content


\def\@maketitle{%
  %\null
  %\vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\normalfont\Large\bfseries \@title \par}%
    %\vskip 1.5em%
    %{\large
     % \lineskip .5em%
     % \begin{tabular}[t]{c}%
      %  \@author
      %\end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
 % \par
 % \vskip 1.5em
}
