\LoadClass{article} % Extends LaTeXs article class

\input{ayush-common.def}

% \RequirePackage{titling}
% \pretitle{\begin{flushleft} \LARGE \itshape}
% \posttitle{\end{flushleft} \vskip -0.3em}
% \preauthor{\begin{flushleft} \large \itshape}
% \postauthor{\end{flushleft} \vskip -0.3em}
% \predate{\begin{flushleft} \large \itshape}
% \postdate{\end{flushleft}}


% \makeatletter
% \renewcommand{\maketitle}{\bgroup\setlength{\parindent}{0pt}
% 	\begin{flushleft}
% 		{\large \itshape \@author \vskip -0.2em}
% 		{\large \itshape \@date}
% 	\end{flushleft}\egroup
% 	\vskip 2.0em
% }
% \makeatother

\titleformat{\section}%
  [hang]% shape
  {\normalfont\Large\itshape}% format applied to label+text
  {\thesection}% label
  {1em}% horizontal separation between label and title body
  {}% before the title body
  []% after the title body

\titleformat{\subsection}%
  [hang]% shape
  {\normalfont\large\itshape}% format applied to label+text
  {\thesubsection}% label
  {1em}% horizontal separation between label and title body
  {}% before the title body
  []% after the title body

\titleformat{\paragraph}%
  [runin]% shape
  {\normalfont\itshape}% format applied to label+text
  {\theparagraph}% label
  {1em}% horizontal separation between label and title body
  {}% before the title body
  []% after the title body
