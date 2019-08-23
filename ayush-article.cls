\LoadClass{article} % Extends LaTeXs article class

% Margins and page size
\RequirePackage[a4paper,left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}

% Typesetting: Fonts, line spacing, font size
\RequirePackage[osf,sc]{mathpazo}
\RequirePackage[scaled=0.90]{helvet}
\RequirePackage[scaled=0.85]{beramono}

\linespread{1.2}

\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xipt{15}}
\renewcommand\Large{\@setfontsize\Large\@xiipt{16}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xivpt{18}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{30}}

% Left aligns all text
\raggedright

% Option to add roll number (for lab reports)
\newcommand{\rollnumber}[1]{\gdef\@rollnumber{#1}}

% Custom \maketitle: includes options for title, date, author, and roll number
\makeatletter
\def\@maketitle{%
	\newpage
	\vskip 2em%
	{\textit{\LARGE \@title}}%
	\vskip 0.4em%
	{\textit{\large \@date}}%
	\\
	\flushright
	\textit{{by \@author}}
	\\
	\textit{{Roll Number \@rollnumber}}
	\pagestyle{plain}
	\par}
\makeatother

% Styling for section titles
\RequirePackage{titlesec}
\titleformat{\section}
	{\normalfont\Large\itshape}{}{0pt}{}

\titleformat{\subsection}
	{\normalfont\large\itshape}{}{0pt}{}

% No third level subsubsections
\renewcommand\subsubsection{%
  \errmessage{\string\subsubsection is undefined by this class.}
}

% Compact lists
\RequirePackage{enumitem}
\setlist{itemsep=0pt}

% Table styling: Easy environment for typesetting tables.
\RequirePackage{booktabs}
\RequirePackage{dcolumn}
	\newcolumntype{d}[1]{D{.}{.}{#1}}    

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
		\begin{center}
			\includegraphics[width=0.75\textwidth]{#1}
			\caption{#2}
			\label{#3}
		\end{center}
	\end{figure}
}
