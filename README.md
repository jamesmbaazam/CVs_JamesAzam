# James Azam's CV: LaTeX source for academic, epidemiologist and data scientist versions

Every version of the CV is built from one master file, [`CV_JamesAzam.tex`](CV_JamesAzam.tex):

| Version | PDF | Description |
|---|---|---|
| `detailed` | `pdf/CV_detailed_JamesAzam.pdf` | Full, detailed CV |
| `academic` | `pdf/CV_academic_JamesAzam.pdf` | Academic CV |
| `academic_twopager` | `pdf/CV_academic_twopager_JamesAzam.pdf` | Two-page academic CV |
| `epidemiologist` | `pdf/CV_epidemiologist_JamesAzam.pdf` | CV for Senior Epidemiologist roles |
| `epidemiologist_twopager` | `pdf/CV_epidemiologist_twopager_JamesAzam.pdf` | Two-page CV for Senior Epidemiologist roles |
| `datascientist` | `pdf/CV_datascientist_JamesAzam.pdf` | CV for Data Scientist roles |
| `datascientist_twopager` | `pdf/CV_datascientist_twopager_JamesAzam.pdf` | Two-page CV for Data Scientist roles |

The two-page versions have no professional summary.

## Choosing what each version shows

Wrap content in `\cvversion` with the versions it belongs to:

```latex
\cvversion{detailed,academic,epidemiologist}{
  \cventry{...}{...}{...}{...}{...}{...}
}
```

Use `\ifcvversion{<versions>}{<content>}{<other content>}` where versions need different wording. Content outside either macro appears in every version.

## Building

From the repository root:

```sh
make                 # build all versions
make epidemiologist  # build one version
make clean           # remove LaTeX build files
```

PDFs are written to `pdf/`, and LaTeX build files to `build/`, which is not tracked in git.
