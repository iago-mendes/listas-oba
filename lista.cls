\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lista}[Lista de Exercícios]

\LoadClass[a4paper, 12pt]{article}

\RequirePackage[top=1cm, bottom=2.1cm, left=2.5cm, right=2.5cm]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx, caption}
\RequirePackage{float}
\RequirePackage{amsmath, amsfonts, amssymb, esint}
\RequirePackage{color}
\RequirePackage{hyperref}
\RequirePackage{multicol}
\RequirePackage{wallpaper}
\RequirePackage{titlesec}
\RequirePackage{enumitem}

\CenterWallPaper{1}{../img/background.png}
\titleformat{\section}{\large\bfseries}{\thesection.}{0.5em}{}
\titleformat{\subsection}{\normalfont\bfseries}{\thesubsection.}{0.5em}{}

\hypersetup
{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,      
	urlcolor=blue,
}

\newcommand{\cabecalho}[4] % numero; tipo; assunto; autor(s)
{
	\begin{figure}
		\centering
		\href{https://ligadeastronomia.com}{\includegraphics[scale=0.6]{../img/logos.png}}
	\end{figure}
	
	\begin{center}
		{
			\large
			\textbf{#1ª Lista de exercícios para a OBA (Nível 4)} \linebreak
			#2 \linebreak
			#3
		}
		\end{center}
	
	\begin{flushright}
		Material elaborado por \textbf{#4}
	\end{flushright}
}

\newenvironment{questao}[1] % pontuação
{
	\section{Questão (#1)}
}
{}

\newenvironment{pergunta}[1] % pontuação
{
	\subsection{Pergunta (#1)}
}
{}

\newenvironment{alternativas}
{
	\begin{enumerate}[label=$(\quad)$]
}
{
	\end{enumerate}
}