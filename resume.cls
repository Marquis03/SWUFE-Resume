\ProvidesClass{resume}  % 类名
\LoadClass{article}  % 基类
\setlength{\parskip}{0em}  % 段落间距
\setlength{\parindent}{0pt}  % 段落缩进

\RequirePackage{xeCJK}  % 中文支持宏包

\RequirePackage[fontsize=11pt]{fontsize}  % 字体大小宏包
\RequirePackage[
    a4paper,
    left=0.4in,
    right=0.4in,
    top=0.3in,
    bottom=0.3in,
    nohead
]{geometry}                % 页面布局宏包
\RequirePackage{xltxtra}   % XeLaTeX扩展宏包

\RequirePackage{xifthen}   % 条件控制语句宏包

\RequirePackage{xcolor}    % 颜色设置宏包
% \definecolor{mainColor}{RGB}{0,0,0}
\definecolor{mainColor}{RGB}{60,115,181}

\RequirePackage{fontspec}  % 字体设置宏包
\RequirePackage{lmodern}  % Latin Modern 字体
% \setmainfont{JetBrains Mono}[Scale=0.9]
\setmainfont{AlibabaSans}[
    Path= ./fonts/AlibabaSans/,
    Extension = .otf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Italic,
    BoldItalicFont = *-BoldItalic,
    SmallCapsFont = *-Regular,
]

\setCJKmainfont{AlibabaPuHuiTi-3}[
    Path = ./fonts/AlibabaPuHuiTi-3/,
    Extension = .otf,
    UprightFont = *-55-Regular,
    BoldFont = *-85-Bold,
    SmallCapsFont = *-55-Regular,
]

\RequirePackage{titlesec}  % 标题设置宏包

\titleformat{\section}  % Customise the \section command 
  {\scshape\raggedright}
  % {\large\scshape\raggedright}  % Make the \section headers large (\Large), small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}  % 标题前缀
  {}  % Can be used to insert code before the heading
  [{\color{mainColor}\titlerule[1.5pt]}]   % 水平线
\titlespacing*{\section}{0cm}{*0}{*0.3}

\titleformat{\subsection}
  % {\large\raggedright}
  {\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*0}{*0}

\RequirePackage{hyperref}  % 超链接宏包
\hypersetup{
    hidelinks,
    pdftitle={个人简历},
    pdfauthor={小嗷犬},
    % pdfsubject={主题},
    % pdfkeywords={关键词}
}
\urlstyle{same}

\RequirePackage{enumitem}  % 自定义列表宏包
\setlist{noitemsep} % 列表项间距
\setlist[itemize]{topsep=0em, leftmargin=*}
\setlist[enumerate]{topsep=0em, leftmargin=*}

\RequirePackage[super]{nth}  % 序数词宏包

\RequirePackage{fontawesome5}  % Font Awesome 宏包

\RequirePackage{graphbox}

\RequirePackage{tikz}  % 矢量图宏包
\newcommand{\skill}[2]{
  \textcolor{black}{\textbf{#1}}\hfill
  \foreach \x in {1,...,6}{%
    \space{\ifnumgreater{\x}{#2}{\color{mainColor!80!white!20}}{\color{mainColor}}\faSquare{}}}%
    % \faCheck \faFlag \faAward \faHeart \faFire
    % \faCircle \faCog \faCheckCircle \faCheckSquare
    \par
}


\newcommand{\colorIcon}[2]{
  \makebox[1em][c]{\color{#1}#2}
}

\RequirePackage{listings}
\lstset{breaklines=true}