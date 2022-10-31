GENPATH	:=	./build

.PHONY: rdx-run2-ana.pdf clean

rdx-run2-ana.pdf:
	@latexmk
	@cp build/thesis.pdf yipengsun-umd_phd_thesis.pdf

clean:
	@rm -rf ./build/main.*
