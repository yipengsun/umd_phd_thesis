GENPATH	:=	./build


yipengsun-umd_phd_thesis.pdf:
	@latexmk
	@cp build/thesis.pdf yipengsun-umd_phd_thesis.pdf


.PHONY: clean
clean:
	@rm -rf ./build/thesis.*
