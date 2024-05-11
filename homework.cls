%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% A class for typesetting homework assignments.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2021/09/03 Benjamin Nussbaum's Homework class]
% ------------------------------------------------------------------------------
% Pass options to and load the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% ------------------------------------------------------------------------------
% Define variables
\newcommand{\identifier}[1]{\newcommand\@identifier{#1}}
\newcommand{\coursecode}[1]{\newcommand\@coursecode{#1}}
\newcommand{\instructor}[1]{\newcommand\@instructor{#1}}
\newcommand{\assignment}[1]{\newcommand\@assignment{#1}}

% ------------------------------------------------------------------------------
% Load packages
\RequirePackage[margin={1.5cm,1cm},includeheadfoot]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[shortlabels]{enumitem}

% \RequirePackage{bnbase,bnmath,bnphys}   % Personal style/layout packages

% ------------------------------------------------------------------------------
% Setup layout
\setlength{\headheight}{\baselineskip}
\pagestyle{fancy}
\fancyhf{}
\lhead{{\bf\@author}~---~\@identifier}
\chead{\@coursecode~---~\@instructor}
\rhead{\@assignment}
\lfoot{}
\cfoot{}
\rfoot{\thepage}

% ------------------------------------------------------------------------------
% Problems
\newcounter{problem}
\newcommand{\problemtype}[0]{Problem}

\providecommand\problem{}
\renewcommand{\problem}{
    \refstepcounter{problem}
    \vspace{3ex}
    \noindent{\large\bf{\problemtype\ \theproblem.}}
}

% ------------------------------------------------------------------------------
% Subparts
\newlist{subparts}{enumerate}{2}
\setlist[subparts,1]{label=\bf\alph*.}
\setlist[subparts,2]{label=\bf\roman*.}
\newcommand{\subpart}{\item}