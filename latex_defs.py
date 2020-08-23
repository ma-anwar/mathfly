from talon import Context, Module

mod = Module()
ctx = Context()

mod.list("tex_document_classes", desc="TeX document classes")
mod.list("tex_packages", desc="TeX packages")
ctx.lists["user.tex_document_classes"] = {
    "article": "article",
    "beamer": "beamer",
    "book": "book",
    "letter": "letter",
    "proceedings": "proc",
    "report": "report",
}


ctx.lists["user.tex_packages"] = {
    "AMS math": "amsmath",
    # "bib latex"   = ["[style=authoryear]", "biblatex"]
    "colour": "color",
    "geometry": "geometry",
    "hyper ref": "hyperref",
    "graphic X": "graphicx",
    "math tools": "mathtools",
    "multi col": "multicol",
    "long table": "longtable",
    "tabular X": "tabularx",
    "X color": "xcolor",
    "wrap figure": "wrapfig",
    "ticks": "tikz",
}

mod.list("tex_environments", desc="TeX environments")
ctx.lists["user.tex_environments"] = {
    "abstract": "abstract",
    "add margin": "addmargin",
    "align": "align",
    "center": "center",
    "columns": "columns",
    # "column"                      = ["column", "{0.5\\textwidth}"]
    "column": "column",
    "cases": "cases",
    "display cases": "dcases",
    "definition": "definition",
    "description": "description",
    "document": "document",
    "(enumerate | numbered list)": "enumerate",
    "equation": "equation",
    # "figure"                      = ["figure", "[h!]"]
    "figure": "figure",
    "flush left": "flushleft",
    "flush right": "flushright",
    "frame": "frame",
    "(list | itemise)": "itemize",
    "mini page": "minipage",
    # "multi (cols | columns)"      = ["multicols", "{2}"]
    "multi line": "multline",
    "proof": "proof",
    "quotation": "quotation",
    "quote": "quote",
    "split": "split",
    # "table"                       = ["table", "[h!]\n\\centering"]
    # "long table"                  = ["longtable", "{lll}"]
    # "tabular"                     = ["tabular", "{llll}"]
    # "tabular X"                   = ["tabular X", "{l X}"]
    "tick picture" : "tikzpicture",
    "theorem": "theorem",
    "title page": "titlepage",
    "verbatim": "verbatim",
    "verse": "verse",
    "wrap figure": "wrapfigure",
}

mod.list("tex_commands", desc="TeX commands")
ctx.lists["user.tex_commands"] = {
    "author": "author",
    "[add] bib resource": "addbibresource",
    "caption": "caption",
    "chapter": "chapter",
    "simple citation": "cite",
    "frame title": "frametitle",
    "footnote": "footnote",
    "footnote text": "footnotetext[]",
    "graphics path": "graphicspath",
    "[include] graphics": "includegraphics[width=1\\textwidth]",
    "label": "label",
    "new command": "newcommand{}[]",
    "paragraph": "paragraph",
    "paren cite": "parencite",
    "part": "part",
    "reference": "ref",
    "renew command": "renewcommand",
    "sub paragraph": "subparagraph",
    "(section | heading)": "section",
    "sub (section | heading)": "subsection",
    "sub sub (section | heading)": "subsubsection",
    "text cite": "textcite",
    "[text] bold": "textbf",
    "[text] italics": "textit",
    "[text] slanted": "textsl",
    "emphasis": "emph",
    "title": "title",
    "use theme": "usetheme",
    # Accents
    "grave [accent]": "`",
    "acute [accent]": "'",
    "dot [accent]": ".",
    "breve [accent]": "u",
    "(circumflex | hat)": "^",
    "(umlaut | dieresis)": '"',
    "(tilde | squiggle)": "~",
    "(macron | bar)": "=",
}

mod.list("tex_commands_noarg", desc="TeX commands without arguments")
ctx.lists["user.tex_commands_noarg"] = {
    "centering": "centering",
    "column": "column{0.5\\textwidth}",
    "footnote mark": "footnotemark[]",
    "horizontal line": "hline",
    "(lah | lay) tech": "LaTeX~ ",
    "line break": "linebreak",
    "[list] item": "item",
    "make title": "maketitle",
    "new page": "newpage",
    "no indent": "noindent",
    "page break": "pagebreak",
    "print bibliography": "printbibliography",
    "table of contents": "tableofcontents",
    "tech": "TeX~ ",
    "text backslash": "textbackslash",
    "text height": "textheight",
    "text width": "textwidth",
    "vertical line": "vline",
}

#mod.list("tikz_commands", desc='Tickz commands for drawing')
#ctx.lists['tikz_commands'] = {
#    'draw': 'draw',
#    'fill draw' : 'filldraw',
#    "command": "tikz",
#    'clip':'clip',
#    'fill':'fill',
#    'bounding box':'useaboundingbox',
#    'shade':'shade', 
#    'shade draw':'shadedraw',
#    'rectangle path':'rectanglepath',
#    'path':'path',
#    'for each':'foreach',
#    'display style':'displaystyle',
#    'color let':'colorlet',
#    'coordinate':'coordinate',
#
#
#
#
#}


mod.list("tex_templates", desc="TeX templates")
ctx.lists["user.tex_templates"] = {
    "header": r'''
\documentclass[12pt, a4paper]{article}

\usepackage{graphicx}
\usepackage{hyperref}
\usepackage[utf8]{inputenc}
\usepackage[style=authoryear]{biblatex}
\addbibresource{}

\setlength{\parskip}{1em}
\renewcommand{\baselinestretch}{1.3}
''',
# ------------------------------------
    "beamer": r'''
\documentclass{beamer}
\usetheme{metropolis}
\usepackage{graphicx}
\usepackage[style=authoryear]{biblatex}
\addbibresource{}

\begin{document}
\begin{frame}
\frametitle{}

\end{frame}
\end{document}
''',
# ------------------------------------
    "(graphic | figure)": r'''
\begin{figure}[h!]
\centering
\label{}
\includegraphics[width=1\textwidth]{}
\caption{}
\end{figure}
''',
# ------------------------------------
    "figure": r'''
\begin{wrapfigure}{l}{0.5\textwidth}
\centering
\label{}
\includegraphics[width=0.4\textwidth]{}
\caption{}
\end{wrapfigure}
''',
# ------------------------------------
    "table": r'''
\begin{table}[h!]
\centering
\label{}
\begin{tabular}{ccccc}
&  &  &  & \\
\hline
&  &  &  &  \\
\end{tabular}
\caption{}
\end{table}
'''
}
# mod.list("tex_packages", desc="TeX packages")
# ctx.lists["tex_packages"] = {}
