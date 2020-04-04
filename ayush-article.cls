\LoadClass{article} % Extends LaTeXs article class

\input{ayush-common.def}

% Option to add roll number (for lab reports)
\newcommand{\rollnumber}[1]{\gdef\@rollnumber{#1}}

% Custom \maketitle: includes options for title, date, author, and roll number
\makeatletter
\def\@maketitle{%
	\newpage
	\vskip 2em%
	{\textit{\LARGE \@title} \hfill \textit{by \@author}}%
	\vskip 0.2em%
	{\textit{\large \@date} \hfill \textit{Roll Number \@rollnumber}}%
	\pagestyle{plain}
	\par}
\makeatother


\renewenvironment{abstract}
  {\begin{quotation}\if@tufte@sfsidenotes\begin{sffamily}\fi}
  {\if@tufte@sfsidenotes\end{sffamily}\fi\end{quotation}}


% Table styling: Easy environment for typesetting tables.
\RequirePackage{booktabs}
\newenvironment{easytable}[3]{%
	\begin{table}[htpb]
		\begin{center}
			\caption{#2}
			\label{#3}
			\vspace{0.5em}
			\begin{tabular*}{\textwidth}{c @{\extracolsep{\fill}} #1}
			\toprule
}{%
			\\ \bottomrule
			\end{tabular*}
		\end{center}
	\end{table}
}

% Image styling: Easy command to include graphics
\RequirePackage{graphicx} % allow embedded images
  \graphicspath{{images/}} % set of paths to search for images

\newcommand{\image}[3]{
	\begin{figure}[htpb]
		\centering
		\includegraphics[width=0.525\textwidth]{#1}
		\caption[center]{#2}
		\label{#3}
	\end{figure}
}
