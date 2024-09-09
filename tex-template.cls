\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}
\ProvidesClass{tex-template}
% \DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\setcounter{errorcontextlines}{999}

% Version Control
\RequirePackage{gitinfo2}

% Code Execution and Typesetting
\RequirePackage[%
    pygopt={
        style=bw
        },
    upquote=true
    ]{pythontex}
\setpythontexfv{%
    breaklines,
    breakanywhere,
    frame=leftline,
    framerule=0.8pt,
    firstnumber=last,
    numbers=left,
    numbersep=0pt
    }

% Localization
\usepackage[USenglish]{babel}
\usepackage[nospace]{varioref}

\renewcommand{\FancyVerbFormatLine}[1]{\small #1}
\renewcommand{\theFancyVerbLine}{%
    \tiny\rmfamily{\arabic{FancyVerbLine}\,}
    }

\newenvironment{revisionhistory}
{\setcounter{secnumdepth}{0}\subsection{Revision History}}
    {\setcounter{secnumdepth}{3}}

\newcommand{\blankpage}{%
    \vspace*{\fill}
    \begin{center}
        This page intentionally left blank.
    \end{center}
    \vspace*{\fill}
}

% Mathematics
\RequirePackage{mathtools} % Mathematics typesetting
\RequirePackage[% Mathematics with modern fonts
    warnings-off={% Turn off default always-on warnings
        mathtools-colon,
        mathtools-overbracket
        }
    ]{unicode-math} 
\RequirePackage{lualatex-math} % Math fixes for LuaLaTeX
\RequirePackage{siunitx} % Handy typesetting of units

% Font
\RequirePackage{fontspec} % Modern .ttc, .ttf, and .otf fonts
\setmathfont{STIXTwoMath-Regular.otf}
\setmainfont{STIXTwoText-Regular.otf}[%
    Ligatures=TeX,
    ItalicFont=STIXTwoText-Italic.otf,
    BoldFont=STIXTwoText-Bold.otf,
    BoldItalicFont=STIXTwoText-BoldItalic.otf,
    ]
\setsansfont{Inter Medium}[%
    Ligatures=TeX,
    Scale=MatchLowercase
    ]
\setmonofont{Iosevka Fixed}[%
    Ligatures=TeX,
    Scale=MatchLowercase
    ]

% Localization
\RequirePackage[% Localized context-sensitive quotes
    autostyle=true
    ]{csquotes}
\RequirePackage[%
    letterpaper, % 8.5 by 11 paper size
    margin=1in
    ]{geometry}

% Section Title Formatting
\RequirePackage{titlesec}
\titleformat{\section}{\Large\sffamily}{\thesection}{1em}{\Large\sffamily}
\titleformat{\subsection}{\large\sffamily}{\thesubsection}{1em}{\large\sffamily}
\titleformat{\subsubsection}{\normalsize\sffamily}{\thesubsubsection}{1em}{\normalsize\sffamily}
% \AddToHook{cmd/section/before}{\clearpage}

% Table of Contents Formatting
\RequirePackage{titletoc}
\dottedcontents{section}[1em]{}{1em}{0.5em}
\dottedcontents{subsection}[3em]{}{2em}{0.5em}
\dottedcontents{subsubsection}[5em]{}{3em}{0.5em}

%% Pythontex 
% Get lengths (in LaTeX points!)
\newlength\inlength \inlength=1in
\newlength\cmlength \cmlength=1cm
\newlength\mmlength \mmlength=1mm
\newlength\emlength \emlength=1em
\newlength\exlength \exlength=1ex
\newlength\bplength \bplength=1bp
\newlength\ddlength \ddlength=1dd
\newlength\pclength \pclength=1pc

% Get font parameters
\makeatletter

% Font Sizes
\tiny\xdef\thetinysize{\f@size}
\scriptsize\xdef\thescriptsize{\f@size}
\footnotesize\xdef\thefootnotesize{\f@size}
\small\xdef\thesmallsize{\f@size}
\normalsize\xdef\thenormalsize{\f@size}
\large\xdef\thelargesize{\f@size}
\Large\xdef\theLargesize{\f@size}
\LARGE\xdef\theLARGEsize{\f@size}
\huge\xdef\thehugesize{\f@size}
\Huge\xdef\theHugesize{\f@size}

% Fonts 
\sffamily\mdseries\upshape\xdef\thesffont{\expandafter\string\the\font}
\ttfamily\mdseries\upshape\xdef\thettfont{\expandafter\string\the\font}
\rmfamily\mdseries\upshape\xdef\thermfont{\expandafter\string\the\font}
\sffamily\bfseries\upshape\xdef\theboldsffont{\expandafter\string\the\font}
\ttfamily\bfseries\upshape\xdef\theboldttfont{\expandafter\string\the\font}
\rmfamily\bfseries\upshape\xdef\theboldrmfont{\expandafter\string\the\font}
\sffamily\mdseries\itshape\xdef\theitalicsffont{\expandafter\string\the\font}
\ttfamily\mdseries\itshape\xdef\theitalicttfont{\expandafter\string\the\font}
\rmfamily\mdseries\itshape\xdef\theitalicrmfont{\expandafter\string\the\font}
\sffamily\bfseries\itshape\xdef\thebolditalicsffont{\expandafter\string\the\font}
\ttfamily\bfseries\itshape\xdef\thebolditalicttfont{\expandafter\string\the\font}
\rmfamily\bfseries\itshape\xdef\thebolditalicrmfont{\expandafter\string\the\font}
\sffamily\mdseries\scshape\xdef\thesmallcapssffont{\expandafter\string\the\font}
\ttfamily\mdseries\scshape\xdef\thesmallcapsttfont{\expandafter\string\the\font}
\rmfamily\mdseries\scshape\xdef\thesmallcapsrmfont{\expandafter\string\the\font}
\sffamily\bfseries\scshape\xdef\theboldsmallcapssffont{\expandafter\string\the\font}
\ttfamily\bfseries\scshape\xdef\theboldsmallcapsttfont{\expandafter\string\the\font}
\rmfamily\bfseries\scshape\xdef\theboldsmallcapsrmfont{\expandafter\string\the\font}
\sffamily\mdseries\slshape\xdef\theslantedsffont{\expandafter\string\the\font}
\ttfamily\mdseries\slshape\xdef\theslantedttfont{\expandafter\string\the\font}
\rmfamily\mdseries\slshape\xdef\theslantedrmfont{\expandafter\string\the\font}
\sffamily\bfseries\slshape\xdef\theboldslantedsffont{\expandafter\string\the\font}
\ttfamily\bfseries\slshape\xdef\theboldslantedttfont{\expandafter\string\the\font}
\rmfamily\bfseries\slshape\xdef\theboldslantedrmfont{\expandafter\string\the\font}

% Math Fonts
\xdef\themathfont{\expandafter\string\the\textfont0}
\xdef\themathfontone{\expandafter\string\the\textfont1}
\xdef\themathfonttwo{\expandafter\string\the\textfont2}
\xdef\themathfontthree{\expandafter\string\the\textfont3}

\def\mathdefault#1{#1}

\makeatother

% Define Python Context
\setpythontexcontext{%
    romanfont=\thermfont,
    romanboldfont=\theboldrmfont,
    romanitalicfont=\theitalicrmfont,
    romanbolditalicfont=\thebolditalicrmfont,
    sansfont=\thesffont,
    sansboldfont=\theboldsffont,
    sansitalicfont=\theitalicsffont,
    sansbolditalicfont=\thebolditalicsffont,
    monofont=\thettfont,
    monoboldfont=\theboldttfont,
    monoitalicfont=\theitalicttfont,
    monobolditalicfont=\thebolditalicttfont,
    mathfont=\themathfont,
    mathfontone=\themathfontone,
    mathfonttwo=\themathfonttwo,
    mathfontthree=\themathfontthree,
    scsansfont = \thesmallcapssffont,
    scromanfont = \thesmallcapsrmfont,
    scmonofont = \thesmallcapsttfont,
    scsansboldfont = \theboldsmallcapssffont,
    scromanboldfont = \theboldsmallcapsrmfont,
    scmonoboldfont = \theboldsmallcapsttfont,
    slantedsansfont = \theslantedsffont,
    slantedromanfont = \theslantedrmfont,
    slantedmonofont = \theslantedttfont,
    slantedsansboldfont = \theboldslantedsffont,
    slantedromanboldfont = \theboldslantedrmfont,
    slantedmonoboldfont = \theboldslantedttfont,
    tiny=\thetinysize,
    scriptsize=\thescriptsize,
    footnotesize=\thefootnotesize,
    small=\thesmallsize,
    normalsize=\thenormalsize,
    large=\thelargesize,
    Large=\theLargesize,
    LARGE=\theLARGEsize,
    huge=\thehugesize,
    Huge=\theHugesize,
    baselineskip=\the\baselineskip,
    % baselinestretch=\the\baselinestretch,
    columnsep=\the\columnsep,
    columnwidth=\the\columnwidth,
    evensidemargin=\the\evensidemargin,
    linewidth=\the\linewidth,
    oddsidemargin=\the\oddsidemargin,
    paperwidth=\the\paperwidth,
    paperheight=\the\paperheight,
    parindent=\the\parindent,
    parskip=\the\parskip,
    textheight=\the\textheight,
    textwidth=\the\textwidth,
    topmargin=\the\topmargin,
    unitlength=\the\unitlength,
    in=\the\inlength,
    cm=\the\cmlength,
    mm=\the\mmlength,
    em=\the\emlength,
    ex=\the\exlength,
    bp=\the\bplength,
    dd=\the\ddlength,
    pc=\the\pclength
}

\begin{pythontexcustomcode}{py}
import os # File management utilities
import numpy as np # Python numerical computing library
import matplotlib as mpl # Plotting library
from cycler import cycler # Property cycler utilities
from matplotlib import pyplot as plt # Pyplot API
from matplotlib import rcParams as rc # Matplotlib plot styling
from matplotlib.ticker import EngFormatter # Plot tick formatting

class Environment():

    build_directory = os.path.abspath(os.getcwd())
    output_directory = os.sep.join(build_directory.split(os.sep)[:-1])
    figures_directory = os.path.join(build_directory, 'figures')
    pgf_directory = os.path.join(figures_directory, 'pgf')
    pdf_directory = os.path.join(figures_directory, 'pdf')

    def __init__(self):
        figure_directories = [ self.figures_directory, self.pgf_directory, self.pdf_directory ]
        for directory in figure_directories:
            if not os.path.exists(directory):
                os.mkdir(directory)

environment = Environment()

def signif(x, p):
    x = np.asarray(x)
    x_positive = np.where(np.isfinite(x) & (x != 0), np.abs(x), 10**(p-1))
    mags = 10 ** (p - 1 - np.floor(np.log10(x_positive)))
    return np.round(x * mags) / mags

def metallic_ratio(n):
    return 0.5 * ( n + np.sqrt(n**2 + 4) )
    
def eng_format(arg: str):
    return EngFormatter(unit=arg, sep=r'\,')

def save_pythontex_figure(figure, figure_name):
    if type(figure) == mpl.figure.Figure:
        figure.savefig(os.path.join(environment.pgf_directory, f'{figure_name}.pgf'))
        figure.savefig(os.path.join(environment.pdf_directory, f'{figure_name}.pdf'))
    return figure

def find_closest_e_series_number(value, target):
    """ 
    Returns closest E-series number to {value}. If {target} (in percent) is not
    specified, return closest value to an E192 number.

    Numbers from https://en.wikipedia.org/wiki/E_series_of_preferred_numbers
    """

    # 40% tolerance
    e_3 = [ 1.0, 2.2, 4.7 ]

    # 20% tolerance
    e_6 = [ 1.0, 1.5, 2.2, 3.3, 4.7, 6.8 ]

    # 10% tolerance
    e_12 = [ 1.0, 1.2, 1.5, 1.8, 2.2, 2.7, 3.3, 3.9, 4.7, 5.6, 6.8, 8.2 ]

    # 5% tolerance
    e_24 = [ 1.0, 1.1, 1.2, 1.3, 1.5, 1.6, 1.8, 2.0, 2.2, 2.4, 2.7, 3.0, 3.3,
           3.6, 3.9, 4.3, 4.7, 5.1, 5.6, 6.2, 6.8, 7.5, 8.2, 9.1 ]

    # 2% tolerance
    e_48 = [ 1.00, 1.05, 1.10, 1.15, 1.21, 1.27, 1.33, 1.40, 1.47, 1.54, 1.62,
           1.69, 1.78, 1.87, 1.96, 2.05, 2.15, 2.26, 2.37, 2.49, 2.61, 2.74,
           2.87, 3.01, 3.16, 3.32, 3.48, 3.65, 3.83, 4.02, 4.22, 4.42, 4.64,
           4.87, 5.11, 5.36, 5.62, 5.90, 6.19, 6.49, 6.81, 7.15, 7.50, 7.87,
           8.25, 8.66, 9.09, 9.53 ]

    # 1% tolerance
    e_96 = [ 1.00, 1.02, 1.05, 1.07, 1.10, 1.13, 1.15, 1.18, 1.21, 1.24, 1.27,
           1.30, 1.33, 1.37, 1.40, 1.43, 1.47, 1.50, 1.54, 1.58, 1.62, 1.65,
           1.69, 1.74, 1.78, 1.82, 1.87, 1.91, 1.96, 2.00, 2.05, 2.10, 2.15,
           2.21, 2.26, 2.32, 2.37, 2.43, 2.49, 2.55, 2.61, 2.67, 2.74, 2.80,
           2.87, 2.94, 3.01, 3.09, 3.16, 3.24, 3.32, 3.40, 3.48, 3.57, 3.65,
           3.74, 3.83, 3.92, 4.02, 4.12, 4.22, 4.32, 4.42, 4.53, 4.64, 4.75,
           4.87, 4.99, 5.11, 5.23, 5.36, 5.49, 5.62, 5.76, 5.90, 6.04, 6.19,
           6.34, 6.49, 6.65, 6.81, 6.98, 7.15, 7.32, 7.50, 7.68, 7.87, 8.06,
           8.25, 8.45, 8.66, 8.87, 9.09, 9.31, 9.53, 9.76 ]

    # 0.5% tolerance
    e_192 = [ 1.00, 1.01, 1.02, 1.04, 1.05, 1.06, 1.07, 1.09, 1.10, 1.11, 1.13,
            1.14, 1.15, 1.17, 1.18, 1.20, 1.21, 1.23, 1.24, 1.26, 1.27, 1.29,
            1.30, 1.32, 1.33, 1.35, 1.37, 1.38, 1.40, 1.42, 1.43, 1.45, 1.47,
            1.49, 1.50, 1.52, 1.54, 1.56, 1.58, 1.60, 1.62, 1.64, 1.65, 1.67,
            1.69, 1.72, 1.74, 1.76, 1.78, 1.80, 1.82, 1.84, 1.87, 1.89, 1.91,
            1.93, 1.96, 1.98, 2.00, 2.03, 2.05, 2.08, 2.10, 2.13, 2.15, 2.18,
            2.21, 2.23, 2.26, 2.29, 2.32, 2.34, 2.37, 2.40, 2.43, 2.46, 2.49,
            2.52, 2.55, 2.58, 2.61, 2.64, 2.67, 2.71, 2.74, 2.77, 2.80, 2.84,
            2.87, 2.91, 2.94, 2.98, 3.01, 3.05, 3.09, 3.12, 3.16, 3.20, 3.24,
            3.28, 3.32, 3.36, 3.40, 3.44, 3.48, 3.52, 3.57, 3.61, 3.65, 3.70,
            3.74, 3.79, 3.83, 3.88, 3.92, 3.97, 4.02, 4.07, 4.12, 4.17, 4.22,
            4.27, 4.32, 4.37, 4.42, 4.48, 4.53, 4.59, 4.64, 4.70, 4.75, 4.81,
            4.87, 4.93, 4.99, 5.05, 5.11, 5.17, 5.23, 5.30, 5.36, 5.42, 5.49,
            5.56, 5.62, 5.69, 5.76, 5.83, 5.90, 5.97, 6.04, 6.12, 6.19, 6.26,
            6.34, 6.42, 6.49, 6.57, 6.65, 6.73, 6.81, 6.90, 6.98, 7.06, 7.15,
            7.23, 7.32, 7.41, 7.50, 7.59, 7.68, 7.77, 7.87, 7.96, 8.06, 8.16,
            8.25, 8.35, 8.45, 8.56, 8.66, 8.76, 8.87, 8.98, 9.09, 9.20, 9.31,
            9.42, 9.53, 9.65, 9.76, 9.88 ]

    match target:
        case '40%':
            target = np.array(e_3)
        case '20%':
            target = np.array(e_6)
        case '10%':
            target = np.array(e_12)
        case '5%':
            target = np.array(e_24)
        case '2%':
            target = np.array(e_48)
        case '1%':
            target = np.array(e_96)
        case '0.5%':
            target = np.array(e_192)
        case _:
            target = np.array(e_192)

    order = np.floor(np.log10(value))
    index = np.searchsorted(target, value / 10**order)
    return target[index-1] * 10**order

class Geometry():

    # Convert from (LaTeX!) points to inches 
    # There is ~ 0.14 micron floating point error here
    in_length = float(pytex.context['in'][:-2]) / 72.27
    cm_length = float(pytex.context['cm'][:-2]) / 72.27
    mm_length = float(pytex.context['mm'][:-2]) / 72.27
    em_length = float(pytex.context['em'][:-2]) / 72.27
    ex_length = float(pytex.context['ex'][:-2]) / 72.27
    bp_length = float(pytex.context['bp'][:-2]) / 72.27
    dd_length = float(pytex.context['dd'][:-2]) / 72.27
    pc_length = float(pytex.context['pc'][:-2]) / 72.27

    column_width = float(pytex.context['columnwidth'][:-2]) / 72.27
    text_width = float(pytex.context['textwidth'][:-2]) / 72.27
    text_height = float(pytex.context['textheight'][:-2]) / 72.27
    figure_width = column_width - 2 * em_length
    figure_height = figure_width / metallic_ratio(1) # Define figure height as a function of the figure width and the golden ratio

    axis_dimensions = (0, 0, 1, 1) # 0 lr margin, 0 tb margin, 100% figure size

geometry = Geometry()

# Determine font parameters
class Font():
    # Font faces
    roman = pytex.context['romanfont'].split('/')[1][:-3]
    bold_roman = pytex.context['romanboldfont'].split('/')[1][:-3]
    bold_italic_roman = pytex.context['romanbolditalicfont'].split('/')[1][:-3]
    italic_roman = pytex.context['romanitalicfont'].split('/')[1][:-3]
    sans = pytex.context['sansfont'].split('/')[1][:-3]
    mono = pytex.context['monofont'].split('/')[1][:-3]
    math = pytex.context['mathfont'].split('/')[1][:-3]
    
    # Font sizes
    tiny = pytex.context['tiny']
    script_size = pytex.context['scriptsize']
    footnote_size = pytex.context['footnotesize']
    small = pytex.context['small']
    normal_size = pytex.context['normalsize']
    large = pytex.context['large']
    llarge = pytex.context['Large']
    lllarge = pytex.context['LARGE']
    huge = pytex.context['huge']
    hhuge = pytex.context['Huge']

font = Font() # Instantiate the class for use

# figure settings
cmap = plt.get_cmap('grey') # Select colormap
num_plot_styles = 4 # number of colors for plotting

# Initialize empty lists for plot colors and styles
plot_colors = []
line_styles = []
for i in range(num_plot_styles): # Populate the color and style lists
    plot_colors.append(cmap(1.0 * i/num_plot_styles))
    line_styles.append((0, (i+1, i)))

# Define the main cycler with the two component lists 
style_cycler = cycler(color=plot_colors, linestyle=line_styles)

# Document-wide Matplotlib Configuration
rc.update({
        'backend': 'pgf',
        'lines.linewidth': 1,
        'font.family': 'serif',
        'font.size': font.footnote_size,
        'text.usetex': True,
        'axes.prop_cycle': style_cycler,
        'axes.labelsize': font.footnote_size,
        'axes.linewidth': 0.8,
        'xtick.direction': 'in',
        'xtick.top': True,
        'xtick.bottom': True,
        'xtick.minor.visible': True,
        'ytick.direction': 'in',
        'ytick.left': True,
        'ytick.right': True,
        'ytick.minor.visible': True,
        'legend.fontsize': font.footnote_size,
        'legend.fancybox': False,
        'figure.figsize': (geometry.figure_width, geometry.figure_height),
        'figure.dpi': 600,
	'figure.constrained_layout.use': True,
        'figure.constrained_layout.hspace': 0,
        'figure.constrained_layout.wspace': 0,
        'figure.constrained_layout.w_pad': 0,
        'figure.constrained_layout.h_pad': 0,
        'savefig.format': 'pgf',
        'savefig.bbox': 'tight',
        'savefig.transparent': True,
        'pgf.rcfonts': False,
	'pgf.preamble': '\n'.join([
                r'\usepackage{mathtools}',
                r'\usepackage[warnings-off={mathtools-colon, mathtools-overbracket}]{unicode-math}',
                r'\usepackage{lualatex-math}',
                r'\usepackage{siunitx}',
                r'\usepackage{fontspec}',
                r'\setmainfont{%s}[Ligatures=TeX, ItalicFont=%s, BoldFont=%s, BoldItalicFont=%s]' %(font.roman, font.italic_roman, font.bold_roman, font.bold_italic_roman),
                r'\setmathfont{%s}' %(font.math),
                r'\setsansfont{%s}[Ligatures=TeX, Scale=MatchLowercase]' %(font.sans),
                r'\setmonofont{%s}[Ligatures=TeX, Scale=MatchLowercase]' %(font.mono),
		r'\usepackage[USenglish]{babel}',
                r'\usepackage[autostyle=true]{csquotes}'
	]),
        'pgf.texsystem': 'lualatex', # default is xetex, but lualatex is preferred
})

\end{pythontexcustomcode}

\AtBeginDocument{
    \renewcommand{\abstractname}{Introduction}
    \addtocontents{toc}{\protect\thispagestyle{empty}}
    
    % Headers
    \RequirePackage{fancyhdr}
    \renewcommand{\sectionmark}[1]{\markright{#1}}
    \setlength{\headheight}{24pt}
    \fancypagestyle{fancy}{
        \fancyhf{}
        \renewcommand{\headrulewidth}{0.8pt}
        \renewcommand{\footrulewidth}{0pt}
        \fancyhead[L]{\sffamily\thedoctitle}
        \fancyhead[R]{\sffamily\small\rightmark}
        \fancyfoot[C]{\sffamily\small\thepage}
        \fancyfoot[L]{\sffamily\footnotesize \gitHash}
    }
    \pagestyle{fancy}

    \title{\textsf{\textbf{\thedoctitle}}}
    \author{\textsf{\gitAuthorName\ \gitAuthorEmail}}
    \date{\textsf{\gitAuthorDate}}
}
