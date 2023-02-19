GENPATH	:=	./build

all: yipengsun-umd_phd_thesis.pdf yipengsun-umd_phd_defense_slides.pdf


yipengsun-umd_phd_thesis.pdf:
	@latexmk
	@cp build/thesis.pdf yipengsun-umd_phd_thesis.pdf


yipengsun-umd_phd_defense_slides.pdf: slides.md
	@gen-slides $< $@


.PHONY: clean
clean:
	@rm -rf ./build/thesis.*
