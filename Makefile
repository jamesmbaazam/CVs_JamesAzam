# Build every CV version from the master file CV_JamesAzam.tex.
#
#   make                 build all versions
#   make <version>       build one version, e.g. make epidemiologist
#   make clean           remove LaTeX build files
#
# PDFs are written to pdf/; LaTeX build files go to build/.

MASTER   := CV_JamesAzam.tex
VERSIONS := detailed academic academic_twopager epidemiologist epidemiologist_twopager datascientist datascientist_twopager
BUILD    := build
OUT      := pdf

LATEXMK  := latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(BUILD)

.PHONY: all clean $(VERSIONS)

all: $(VERSIONS)

$(VERSIONS): %: $(OUT)/CV_%_JamesAzam.pdf

$(OUT)/CV_%_JamesAzam.pdf: $(MASTER) | $(OUT)
	$(LATEXMK) -jobname=CV_$*_JamesAzam -pretex='\def\cvtarget{$*}' -usepretex $(MASTER)
	cp $(BUILD)/CV_$*_JamesAzam.pdf $@

$(OUT):
	mkdir -p $@

clean:
	rm -rf $(BUILD)
