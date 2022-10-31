{
  description = "ANA for RDX run 2.";

  inputs = {
    root-curated.url = "github:umd-lhcb/root-curated";
    nixpkgs.follows = "root-curated/nixpkgs";
    flake-utils.follows = "root-curated/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, root-curated }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShell = pkgs.mkShell {
          name = "rdx-run2-ana-dev";
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
                ;
            })
          ]);

          shellHook = ''
            export PATH=$(pwd)/scripts:$PATH
            #export TEXINPUTS=$(pwd)/include:$(pwd)/external//:
          '';
        };
      });
}
