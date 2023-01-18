\LoadClass{article} % Extends LaTeXs article class

\input{ayush-common.def}

% Option to add roll number (for lab reports)
\newcommand{\rollnumber}[1]{\gdef\@rollnumber{#1}}

% Custom \maketitle: includes options for title, date, author, and roll number
\makeatletter
\def\@maketitle{%
	\raggedright
	\newpage
	\vskip 2em%
	{\textit{\Large \@title}}%
	\par
	{\textit{by \@author}}%
	\\
	{\textit{Roll Number: \@rollnumber}}%
	\par
	{\textit{\@date}}%
	\pagestyle{plain}
	\par
	\vskip 1em}
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
