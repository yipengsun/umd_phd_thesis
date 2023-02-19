{
  description = "UMD PhD thesis.";

  inputs = {
    nixpkgs-pointer.url = "github:yipengsun/nixpkgs-pointer";
    nixpkgs.follows = "nixpkgs-pointer/nixpkgs";
    flake-utils.follows = "nixpkgs-pointer/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShell = pkgs.mkShell {
          name = "umd_phd_thesis";
          buildInputs = (with pkgs; [
            # LaTeX
            (texlive.combine {
              inherit (texlive)
                scheme-basic
                # Utilities
                latexmk
                bibtex
                biber
                # Explicit dependencies
                booktabs
                amsmath
                mathtools
                cleveref
                enumitem
                pgf
                cm-super # T1 font
                listings
                lstaddons
                parnotes
                makecell
                placeins
                setspace
                titlesec
                supertabular
                natbib
                babel
                babel-english
                float
                tocloft
                tabls
                biblatex
                appendix
                tikz-feynman
                beamer
                pdflscape
                # Implicit dependencies
                mciteplus
                cite
                footmisc
                caption
                todonotes
                totpages
                ifmtarg
                hyperxmp
                was # upgreek
                lineno
                microtype
                pgfopts
                etoolbox
                translator
                selnolig
                everysel
                xkeyval
                unicode-math
                lualatex-math
                luatexbase
                ;
            })

            pandoc
          ]);

          shellHook = ''
            export PATH=$(pwd)/scripts:$PATH
            export TEXINPUTS=$(pwd)/include:$(pwd)/external//:$(pwd)/themes//:$(pwd)/pkgs//:
          '';
        };
      });
}
