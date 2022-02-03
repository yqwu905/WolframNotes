\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yqwu-note}[Note class by Yuanqing Wu]

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass[]{ctexart}

% Import Packages
\RequirePackage{ctex}
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}
\RequirePackage{cite}
\RequirePackage{siunitx}
\RequirePackage{enumerate}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{physics}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[most]{tcolorbox}
\RequirePackage{float}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}

\numberwithin{equation}{subsection}

\newcommand*\circled[1]{\raisebox{.5pt}{\textcircled{\raisebox{-.9pt} {#1}}}}

\theoremstyle{definition}
\newtheorem{exmp}{Example}[subsection]

\newtcbtheorem[number within=section]{definition}{Definition --\ }{
   coltitle=purple,
   colframe=red!80!blue,
   detach title,
   boxrule=0pt,
   leftrule=2pt,
   attach title to upper,
   sharp corners,
   left=1mm,
}{def}

\newtcbtheorem[number within=section]{theorem}{Theorem}{
   coltitle=purple,
   colframe=Cyan1!70!black,
   detach title,
   boxrule=0pt,
   leftrule=2pt,
   attach title to upper,
   sharp corners,
   left=1mm,
}{thm}

\newtcbtheorem[number within=section]{lemma}{Lemma}{
   coltitle=purple,
   colframe=green!30!blue,
   detach title,
   boxrule=0pt,
   leftrule=2pt,
   attach title to upper,
   sharp corners,
   left=1mm,
}{lem}

\newtcbtheorem[number within=section]{corollary}{Corollary}{
   coltitle=purple,
   colframe=blue!30!green,
   detach title,
   boxrule=0pt,
   leftrule=2pt,
   attach title to upper,
   sharp corners,
   left=1mm,
}{cor}

\newtcbtheorem[number within=section]{remark}{Remark}{
   coltitle=purple,
   colframe=Orchid!70!black,
   detach title,
   boxrule=0pt,
   leftrule=2pt,
   attach title to upper,
   sharp corners,
   left=1mm,
}{rem}




\newcommand\yqwuDepartmentName{}
\newcommand\department[1]{\renewcommand\yqwuDepartmentName{#1}}
\newcommand\yqwuProjectName{}
\newcommand\project[1]{\renewcommand\yqwuProjectName{#1}}

\renewcommand{\maketitle}{%
  \thispagestyle{empty}
  {
    \centering
    \vspace{1cm}
  
    % Titles
    % Information about the University
    {\
            \textsc{\yqwuProjectName}
    }
    \vspace{2 cm}
  
    \rule{\linewidth}{2mm} \\[0.8cm]
    { \LARGE \sc \@title}\\[0.55cm]
    \rule{\linewidth}{0.6mm} \\[2.5cm]
  
    \hspace{1cm}
    \begin{tabular}{l p{6cm}}
            \textbf{Name} & \textbf{\@author}\\[10pt]
            \textbf{Department} & \yqwuDepartmentName \\[10pt]
            \textbf{Date} & \@date \\
    \end{tabular}
  
    %\vfill
    \vspace{2cm}
    % Light logo and Dark logo
    \begin{center}
    \includegraphics[width=4.5cm]{image/school_tag.png}
    \end{center}
      \begin{center}
    \includegraphics[width=4.5cm]{image/school_name.jpg}
    \end{center}
      \vspace{0.5cm}
      %\pagebreak
      \global\let\newpagegood\newpage
    \global\let\newpage\relax
    \global\let\newpage\newpagegood
  }
}
