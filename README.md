# CVs_JamesAzam

LaTeX source for James Azam's CV.

| Folder | Description |
|---|---|
| `CV_detailed_JamesAzam/` | Full, detailed CV |

The academic CV and two-page CV have been removed. They will be generated from a single master file along with role-targeted versions (see [#1](https://github.com/jamesmbaazam/CVs_JamesAzam/issues/1)). Their last versions are in the git history at commit `b878b3c`.

## Building

Compile the CV from its folder:

```sh
cd CV_detailed_JamesAzam
latexmk -pdf CV_detailed_JamesAzam.tex
```

LaTeX build files are not tracked in git.
