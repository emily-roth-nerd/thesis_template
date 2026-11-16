# Thesis template

## Build
    latexmk            # builds main.pdf (uses latexmkrc)
    latexmk -pvc       # rebuilds automatically every time you save
    latexmk -c         # removes auxiliary files

Without latexmk: `pdflatex main` → `bibtex main` → `pdflatex main` → `pdflatex main`.
On Overleaf: upload the zip; it compiles as-is.

## Layout
    main.tex                  root file: title info, chapter order, draft switch
    thesis.sty                packages, margins, spacing, theorem styles, notation macros
    frontmatter/              abstract, acknowledgments, notation table
    chapters/01-…04-*.tex     one file per chapter
    chapters/A-proofs.tex     appendix
    figures/                  put PDFs/PNGs here; \includegraphics{name.pdf}
    references.bib            bibliography

## Conventions
- Labels are prefixed by type and chapter: `thm:pricing:optimal`, `eq:misinfo:...`,
  `fig:pricing:...`, `sec:intro:...`. Refer to them with `\cref{...}`; it writes
  "Theorem 2.3" / "Equation (1.1)" for you.
- Citations: `\citet{key}` gives "Author (Year)", `\citep{key}` gives "(Author, Year)".
- Notation: use the macros in thesis.sty (`\Resa`, `\Part`, `\pstar`, `\T`, `\one`, …).
  To change a symbol everywhere, edit it once there.
- `\TODO{...}` and `\NOTE{...}` show up only while `\drafttrue` is set in main.tex.
  Comment that line out for the final version; it also removes the DRAFT footer.
- To compile one chapter at a time, add `\includeonly{chapters/02-pricing}` above
  `\begin{document}`. Page and equation numbers stay correct.

## Before submitting
- Check your graduate school's formatting guide: margins, line spacing, title-page
  wording, abstract word limit, and where the bibliography and appendices go.
- Switch to `twoside` in main.tex if printing a bound copy.

## Word count
    texcount -inc -total -sum main.tex
