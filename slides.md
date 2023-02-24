---
title: Measurement of \RDX in semileptonic $B$ decays and upgrade of the LHCb Upstream Tracker
author: Yipeng Sun
institute: University of Maryland
date: Mar 1st, 2023

theme: "UMDPepsi"
fonttheme: serif
classoption: "aspectratio=169,dvipsnames"

header-includes: |
    \renewcommand{\vec}[1]{\mathbf{#1}}

    \usepackage{xspace}
    \newcommand{\ifb}{fb$^{-1}$\xspace}

    \usepackage{ragged2e}
    \let\raggedright=\RaggedRight

    \usepackage{booktabs}

    \newcommand{\tightmargin}{
        \setlength{\leftmargini}{4pt}
        \settowidth{\leftmarginii}{\usebeamertemplate{itemize item}}
        \addtolength{\leftmarginii}{\labelsep}
        \settowidth{\leftmarginiii}{\usebeamertemplate{itemize item}}
        \addtolength{\leftmarginiii}{\labelsep}
    }
---

## Outline

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Introduction
    - Event selection
    - Trigger emulation for MC
    - Data/MC correction
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - UT upgrade
    - The LHCb online system

:::
:::

<!-- - fit vars: take advange of these vars to separate sig, norm, and bkgs. -->
<!-- - include math expr for fit variables -->
<!-- - trigger emu: run 1 uncert dominated by MC stat -->

<!-- - misID smear: 50% how does this translates in terms of the alpha parameter? -->


## Introduction

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - **Introduction**
    \color{gray}
    - Event selection
    - Trigger emulation for MC
    - Data/MC correction
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - \color{gray}UT upgrade
    - The LHCb online system

:::
:::


## The standard model and beyond

::: columns
::: {.column width=65%}

- The standard model (SM)
    - A QFT describing **interactions** between **fermions & bosons**
    - Allow **arbitrary identical copies of leptons** (except for interactions w/ Higgs)
      $\rightarrow$ **lepton flavor universality (LFU)**
    - 3 generations of leptons: $e, \mu, \tau$
    - Hugely successful, but doesn't explain every experimental observation
      $\rightarrow$ new physics (NP) beyond the SM

- Precision measurement
    - Measure observables precisely
    - Obtain **precise theoretical predictions**
    - Deviations from SM predictions $\rightarrow$ hints to NP

:::
::: {.column width=35%}

![](./slides-figures/the_sm_particles.png)

:::
:::


## Measuring \RDX

\tightmargin

::: columns
::: {.column width=50%}

- $\RDX \equiv \frac{\BFDTau}{\BFDMu}$
    - Advantageous over measuring BF:
      cancellation of **th. and ex. uncert.**
    - **Precise predictions (1--2%)**:
        - $\RD = 0.298 \pm 0.004$
        - $\RDst = 0.254 \pm 0.005$
    - First anomaly reported in 2012 (BaBar)
    - LHCb run 1 measurement in 2022

:::
::: {.column width=50%}

- This analysis: LHCb run 2 (2016--2018) data
    - 2016 only for now, but easy to expand
    - **1.7x intg. lumi.** (3.1 \ifb $\rightarrow$ 5.4 \ifb)
    - **1.8x prod. xsec.** (7 TeV $\rightarrow$ 13 TeV)
    - **More efficient triggers**
    - **1.26x sig-like events for 2016 alone**
      (1,734,133 $\rightarrow$ 2,178,793)

:::
:::

::: columns
::: {.column width=50%}
\vspace{1em}
![](./chapter/figs-intro/hflav_2022_preliminary.pdf){ width=90% }
:::
::: {.column width=50%}
\centering
![](./slides-figures/illustration_b_sl_decay.png){ width=75% }
:::
:::


## The LHCb detector

::: columns
::: {.column width=45%}
\vspace{0.5em}
![](./chapter/figs-detector/lhcb_detector_view.pdf){ width=115% }
:::
::: {.column width=55%}
![](./slides-figures/lhcb_tracking_pid_mechanism.pdf)
:::
:::

::: columns
::: {.column width=70%}

\tightmargin
\vspace{0.5em}

- LHCb: **forward-only spectrometer** covering $1.9 < \eta < 4.9$
    - $B$ meson produced from **gluon fusion** $\rightarrow$ $B$ highly boosted
    - 4% solid angle coverage, capture ~20% of $\bbbar$
- Important for this analysis: **tracking & particle identification (PID)**
    - RICH allow separation of \kaon, \pion, $p$

:::
::: {.column width=30%}
\vspace{-4em}
![](./chapter/figs-detector/14_rad_acc_scheme_right.pdf){ width=120% }
:::
:::


## Event selection

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Introduction
    - **Event selection**
    \color{gray}
    - Trigger emulation for MC
    - Data/MC correction
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - \color{gray}UT upgrade
    - The LHCb online system

:::
:::


## Signal and normalization {.fragile}

::: columns
::: {.column width=65%}

- $\Bzb \rightarrow \Dstarp (\rightarrow \Dz (\rightarrow \textcolor{red}{\Km \pip})\textcolor{red}{\pip}) \taum (\rightarrow \textcolor{red}{\mun} \neumb \neut) \neutb)$
- $\Bzb \rightarrow \Dstarp (\rightarrow \Dz (\rightarrow \textcolor{red}{\Km \pip})\textcolor{red}{\pip}) \textcolor{red}{\mun} \neumb$
- $\Bm \rightarrow \Dz (\rightarrow \textcolor{red}{\Km \pip}) \taum (\rightarrow \textcolor{red}{\mun} \neumb \neut) \neutb)$
- $\Bm \rightarrow \Dz (\rightarrow \textcolor{red}{\Km \pip}) \textcolor{red}{\mun} \neumb$

:::
::: {.column width=35%}

\vspace{6pt}
\RDst, sig

\RDst, norm

\RD, sig

\RD, norm

:::
:::

\centering
![](./slides-figures/sig_decay_parton_level.pdf){ width=80% }

::: columns
::: {.column width=90%}
- Final visible particles (marked in \textcolor{red}{red}): \textcolor{red}{$D^{(*)}\mu$}
:::
::: {.column width=10%}
:::
:::

\begin{tikzpicture}[relative to page]
    \node[anchor=north west,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:-0.86, 0.18) {
            \small $\RDX \equiv \frac{\BFDTau}{\BFDMu} = \frac{\text{sig}}{\text{norm}}$
        };
\end{tikzpicture}


## Selection of \Dz\muon and \Dstarp\muon

::: columns
::: {.column width=50%}

### \Dz\muon (\Dz channel)

- \Dz ($\Km\pip$ pair)
    - High $p_T$
    - Invariant mass around \Dz ref. mass
    - Displaced from $pp$ vertex

- \muon
    - PID: add. \UBDT to further reject misID while keeping eff. flat in $p_T$

### \Dstarp\muon (\Dstar channel)

- \Dstarp ($\Dz\pi^+_\text{slow}$ pair)
    - Same as \Dz, plus add. low-\pt $\pi^+_\text{slow}$ forming a vertex w/ \Dz

:::
::: {.column width=50%}

\resizebox{0.8\textwidth}{!}{
\begin{tikzpicture}[
    particle/.style={draw, ->, >=stealth, thick},
    vertex/.style={draw, circle, minimum size=9pt, fill=white, inner sep=0pt},
    final ptl/.style={inner sep=1pt},
]
    \node (a0) at (0, 0) {};

    \coordinate[right=2.5em of a0] (a1);
    \coordinate[above=2em of a1] (b1);

    \node[left=2em of b1, gray, final ptl] (d1) {\tiny $\overline\nu_\tau$};
    \coordinate[above right=1.5em and 1.5em of b1] (d2);
    \coordinate[below right=0.5em and 2.5em of b1] (d3);

    \node[above left=0.5em and 1em of d2, gray, final ptl] (e1) {\tiny $\overline\nu_\mu$};
    \node[above right=0.7em and 0.4em of d2, gray, final ptl] (e2) {\tiny $\nu_\tau$};
    \node[above right=0.1em and 2.3em of d2, red, final ptl] (e3) {\tiny $\mu^-$};

    \node[above right=0.4em and 1.4em of d3, red, final ptl] (f1) {\tiny $K^-$};
    \node[below right=1.2em and 0.6em of d3, red, final ptl] (f2) {\tiny $\pi^+$};

    \node[below right=1.5em and 0.8em of b1, orange, final ptl] (g1) {\tiny $\pi^+_\text{slow}$};

    \draw[particle, dashed] (a0) -- (b1);

    \draw[particle, gray] (b1) -- (d1);
    \draw[particle, dashed] (b1) -- (d2);
    \draw[particle, dashed] (b1) -- (d3);

    \draw[particle, gray] (d2) -- (e1);
    \draw[particle, gray] (d2) -- (e2);
    \draw[particle, red] (d2) -- (e3);

    \draw[particle, red] (d3) -- (f1);
    \draw[particle, red] (d3) -- (f2);

    \draw[particle, orange] (b1) -- (g1);

    \node[vertex] (x0) at (a0) {\tiny $pp$};
    \node[vertex] (x1) at (b1) {\tiny $B$};
    \node[vertex] (x2) at (d3) {\tiny \Dz};
    \node[vertex, gray, fill=white] (x3) at (d2) {\tiny $\tau$};
\end{tikzpicture}
}

\vspace{0.5em}

\resizebox{0.8\textwidth}{!}{
\begin{tikzpicture}[
    particle/.style={draw, ->, >=stealth, thick},
    vertex/.style={draw, circle, minimum size=9pt, fill=white, inner sep=0pt},
    final ptl/.style={inner sep=1pt},
]
    \node (a0) at (0, 0) {};

    \coordinate[right=2.5em of a0] (a1);
    \coordinate[above=2em of a1] (b1);

    \node[left=2em of b1, gray, final ptl] (d1) {\tiny $\overline\nu_\mu$};
    \node[above right=1.5em and 1.5em of b1, final ptl, red] (d2) {\tiny $\mu^-$};
    \coordinate[below right=0.5em and 2.5em of b1] (d3);

    \node[above right=0.4em and 1.4em of d3, red, final ptl] (f1) {\tiny $K^-$};
    \node[below right=1.2em and 0.6em of d3, red, final ptl] (f2) {\tiny $\pi^+$};

    \node[below right=1.5em and 0.8em of b1, orange, final ptl] (g1) {\tiny $\pi^+_\text{slow}$};

    \draw[particle, dashed] (a0) -- (b1);

    \draw[particle, gray] (b1) -- (d1);
    \draw[particle, red] (b1) -- (d2);
    \draw[particle, dashed] (b1) -- (d3);

    \draw[particle, red] (d3) -- (f1);
    \draw[particle, red] (d3) -- (f2);

    \draw[particle, orange] (b1) -- (g1);

    \node[vertex] (x0) at (a0) {\tiny $pp$};
    \node[vertex] (x1) at (b1) {\tiny $B$};
    \node[vertex] (x2) at (d3) {\tiny \Dz};
\end{tikzpicture}
}

:::
:::

\begin{tikzpicture}[relative to page]
    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=3em, align=center
        ]
        at (page cs:0.75, 0.4) {
            \footnotesize sig
        };

    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=3em, align=center
        ]
        at (page cs:0.75, -0.3) {
            \footnotesize norm
        };

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:0.49, -0.72) {
            \footnotesize \muon from sig decays are softer than \muon from norm
        };
\end{tikzpicture}


## \UBDT

::: columns
::: {.column width=50%}

\centering
![](./section/figs-selection-tech/eff_Brunel_PT_up_pidcalib_ubdt_eff.pdf){ width=90% }

:::
::: {.column width=50%}

\centering
![](./section/figs-selection-tech/rej_v_eff_unbiased_Brunel_PT.pdf){ width=90% }

:::
:::

- More efficient at rejecting \pion (**main source of misID**)
- Efficiency flat in \pt: **sig & norm have similar selection eff.**
  $\rightarrow$ **no bias** in selection
- Remaining misID effect (non-\muon misID'ed as \muon) modeled w/ a data ctrl sample (later)


## Feed down from \Dstarp\muon and \Dstarz\muon

\small

::: columns
::: {.column width=60%}

### \Dstarp\muon: $\Bzb \rightarrow \Dstarp (\rightarrow \Dz\pip) l^- \neulb$

- Not all slow \pip from \Dstarp decays are reco'ed
    - **Some** \Dstarp\muon feed down into \Dz\muon

::: {.block}
### \Dstarz\muon: $\Bm \rightarrow \Dstarz (\rightarrow \Dz\piz) l^- \neulb$
- Neutral slow $\piz$ **entirely missed**
    - **All** \Dstarz\muon feed down into \Dz\muon
    - **~2.5x BF** compared to $B \rightarrow \Dz$
:::

:::
::: {.column width=40%}

- $p = 8$ GeV for a typical $\pi_\text{slow}$
- Fail to reco. ~35% of the time

\centering
![](./slides-figures/slow_pi_reco_eff.pdf){ width=100% }

:::
:::

\vspace{0.5em}
::: columns
::: {.column width=90%}

- Feed down makes \RD and $\RDst$ **correlated**
    - **Simultaneous fit** needed
    - **Improve precision** for \RDst
      due to large \Dstarz\muon feed down sample
<!-- - To avoid double-counting, veto \Dstarp\muon in \Dz\muon -->

:::
::: {.column width=10%}

:::
:::


## Background contributions

\tightmargin
::: columns
::: {.column width=50%}

- **Partially reco'ed bkgs** (final states w/ \DXmu + more)
    - 4 $1P$ \Dstst
        - $B \rightarrow \Dstst (\rightarrow D^{0|*|**} (\rightarrow D^{0|*}\pi) \pi) l\neul$
    - Highly excited \Dstst (\Dstst heavy, $\Dstst_H$):
        - $B \rightarrow \Dstst_H (\rightarrow D^{0|*} \pi\pi) \mu\neum$
    - \DststS
        - $B_s \rightarrow (D'_{s1}|D_{s2}) (\rightarrow D^{(*)}K) l\neul$
    - Double-charm backgrounds ($DDX$)
        - $B \rightarrow D^{(*)} D_q X$
        - $D_q \rightarrow \tauon\neut$ when $q = s$
        - $D_q \rightarrow K \mu\neum$ when $q = u \text{ or } d$


:::
::: {.column width=50%}

- **Mis-reconstructions**
    - MisID
        - "\muon" in the \DXmu pair is **not** a \muon
    - Combinatorial bkgs
        - Random combinations of \Dz\muon, \Dstarp\muon, or \Dz\pion
          **not** from the same $B$

\vspace{3em}

\centering
![](./chapter/figs-analysis-overview/d_meson_predicted_masses.pdf)

:::
:::

\begin{tikzpicture}[relative to page]
    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=12em, align=center,
        ]
        at (page cs:-0.5, -0.54) {
            \footnotesize\bfseries Modeled w/ MC, w/ shape corrections from ctrl samples
        };
    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:0.5, 0.09) {
            \footnotesize\bfseries Modeled w/ data ctrl samples
        };

    \node[inner sep=0pt] (nw) at (page cs:0.02,-0.1) {};
    \node (se) at (page cs:0.92,-0.95) {};

    \node (pt) at (page cs:-0.2,0.7) {};

    \draw[PepsiBlueLt,ultra thick] (nw) rectangle (se);
    \draw[PepsiBlueLt,->,>=stealth,ultra thick] (nw) -- (pt);
\end{tikzpicture}


## The isolation BDT

\vspace{4em}

::: columns
::: {.column width=33%}

\resizebox{\textwidth}{!}{
\begin{tikzpicture}[
    particle/.style={draw, ->, >=stealth, thick},
    vertex/.style={draw, circle, minimum size=9pt, fill=white, inner sep=0pt},
    final ptl/.style={inner sep=1pt},
]
    \node (a0) at (0, 0) {};

    \coordinate[right=2.5em of a0] (a1);
    \coordinate[above=2em of a1] (b1);

    \node[left=2em of b1, gray, final ptl] (d1) {\tiny $\overline\nu_\mu$};
    \node[above right=1.5em and 1.5em of b1, final ptl, red] (d2) {\tiny $\mu^-$};
    \coordinate[below right=0.5em and 2.5em of b1] (d3);

    \node[above right=0.4em and 1.4em of d3, red, final ptl] (f1) {\tiny $K^-$};
    \node[below right=1.2em and 0.6em of d3, red, final ptl] (f2) {\tiny $\pi^+$};

    \node[below right=1.5em and 0.8em of b1, orange, final ptl] (g1) {\tiny $\pi^+_\text{slow}$};
    \node[above left=1.8em and 2.2em of b1, magenta, final ptl] (g2) {\tiny $\pi^\pm$};

    \draw[particle, dashed] (a0) -- (b1);

    \draw[particle, gray] (b1) -- (d1);
    \draw[particle, red] (b1) -- (d2);
    \draw[particle, dashed] (b1) -- (d3);

    \draw[particle, red] (d3) -- (f1);
    \draw[particle, red] (d3) -- (f2);

    \draw[particle, orange] (b1) -- (g1);
    \draw[particle, magenta, dashed] (b1) -- (g2);

    \node[vertex] (x0) at (a0) {\tiny $pp$};
    \node[vertex] (x1) at (b1) {\tiny $B/\Dstst$};
    \node[vertex] (x2) at (d3) {\tiny \Dz};
\end{tikzpicture}
}

:::
::: {.column width=33%}

![](./slides-figures/isolation_bdt.pdf)

:::
::: {.column width=33%}

\footnotesize
- BDT training variables:
    - PV \ipChiSq
    - SV \ipChiSq
    - track \pt
    - track opening
    - track \anyChiSq{FD}
    - track $\Delta\anyChiSq{FD}$

:::
:::

- **Further** divide selected \DXmu samples into sub-samples (**skims**)
- Reject **partially reco'ed bkgs** with **\textcolor{magenta}{add. charged track(s)}**
  $\rightarrow$ **\textcolor{PepsiRed}{signal skim}**
- Inverting the selection $\rightarrow$ **\textcolor{PepsiBlueLt}{control skims}** enriched in such bkgs

\begin{tikzpicture}[relative to page]
    \node[anchor=south,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=10em
        ]
        at (page cs:0.0, 0.45) {
            \tiny
            \bfseries{MVA dist. for $B \rightarrow \Dstst \mu\neum$ bkg (hatched) vs. signal (solid)}
        };

    \node[anchor=south west,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=10em
        ]
        at (page cs:-0.9, 0.45) {
            \tiny
            \bfseries{Schematic $B \rightarrow \Dstst \mu\neum$ decay}
        };
\end{tikzpicture}


## Signal and control skims (sub-samples)

<!-- ::: columns -->
<!-- ::: {.column width=50%} -->

<!-- ### Signal -->

<!-- - ISO -->

<!-- ::: -->
<!-- ::: {.column width=50%} -->

<!-- ### Control -->

<!-- - 1OS -->
<!-- - 2OS -->
<!-- - DD -->

<!-- ::: -->
<!-- ::: -->


\begin{tikzpicture}[relative to page]
    % ISO
    \node (isoNW) at (page cs:-0.96,0.75) {};
    \node (isoSE) at (page cs:-0.01,-0.08) {};

    \draw[PepsiRed,ultra thick] (isoNW) rectangle (isoSE);
    \node[anchor=north west,fill=PepsiRed,text=white] (isoTitle) at (isoNW) {\bfseries ISO};
    \node[anchor=north west,below right=1pt and -27pt of isoTitle,text width=6em] (isoText) {
        \footnotesize
        Signal-enriched.
        No charged track likely coming from the same $B$ (isolated)
    };
    \node[anchor=north east,inner sep=0pt] at (page cs:-0.03,0.73) {
        \includegraphics[width=0.33\textwidth]{./section/figs-fit-fit-results/sig-fit/stacked/fit_result-stacked-D0-iso-mmiss2.pdf}
    };

    % 2OS
    \node (2osNW) at (page cs:-0.96,-0.13) {};
    \node (2osSE) at (page cs:-0.01,-0.96) {};

    \draw[PepsiBlueLt,ultra thick] (2osNW) rectangle (2osSE);
    \node[anchor=north west,fill=PepsiBlueLt,text=white] (2osTitle) at (2osNW) {\bfseries 2OS};
    \node[anchor=north west,below right=1pt and -28pt of 2osTitle,text width=6em] (2osText) {
        \footnotesize
        Enriched in $B \rightarrow \Dstst_H \mu\neum$.
        Two anti-isolated \pion.
    };
    \node[anchor=north east,inner sep=0pt] at (page cs:-0.03,-0.15) {
        \includegraphics[width=0.33\textwidth]{./section/figs-fit-fit-results/ctrl-fit/stacked/fit_result-stacked-D0-2os-mmiss2.pdf}
    };

    % 1OS
    \node (1osNW) at (page cs:0.01,0.75) {};
    \node (1osSE) at (page cs:0.96,-0.08) {};

    \draw[PepsiBlueLt,ultra thick] (1osNW) rectangle (1osSE);
    \node[anchor=north west,fill=PepsiBlueLt,text=white] (1osTitle) at (1osNW) {\bfseries 1OS};
    \node[anchor=north west,below right=1pt and -27pt of 1osTitle,text width=6em] (1osText) {
        \footnotesize
        Enriched in $B \rightarrow \Dstst l\neul$.
        One extra \pion (anti-isolated).
    };
    \node[anchor=north east,inner sep=0pt] at (page cs:0.94,0.73) {
        \includegraphics[width=0.33\textwidth]{./section/figs-fit-fit-results/ctrl-fit/stacked/fit_result-stacked-D0-1os-mmiss2.pdf}
    };

    % DD
    \node (ddNW) at (page cs:0.01,-0.13) {};
    \node (ddSE) at (page cs:0.96,-0.96) {};

    \draw[PepsiBlueLt,ultra thick] (ddNW) rectangle (ddSE);
    \node[anchor=north west,fill=PepsiBlueLt,text=white] (ddTitle) at (ddNW) {\bfseries DD};
    \node[anchor=north west,below right=1pt and -24pt of ddTitle,text width=6em] (ddText) {
        \footnotesize
        Enriched in $B \rightarrow D^{(*)} D_q X$.
        One or more anti-isolated tracks, at least one \kaon
    };
    \node[anchor=north east,inner sep=0pt] at (page cs:0.94,-0.15) {
        \includegraphics[width=0.33\textwidth]{./section/figs-fit-fit-results/ctrl-fit/stacked/fit_result-stacked-D0-dd-mmiss2.pdf}
    };
\end{tikzpicture}


## Fit variables

\vspace{-1em}
- Sig, norm, & bkg modes have differing kinematics
    - Manifested in \mmSq, \el, \qSq (fit variables)
    - Fit variables not known exactly in hadron colliders (b.c. $pp$ momenta unknown)
    - Can be approximated with rest frame approximation (RFA)

::: columns
::: {.column width=33%}
![](./section/figs-fit-fit-templates/histo-comp/D0_iso_D0Tau__vs__D0_iso_D0Mu__vs__D0_iso_DstMu__vs__D0_iso_Dst0Mu__m2miss.pdf)
:::
::: {.column width=33%}
![](./section/figs-fit-fit-templates/histo-comp/D0_iso_D0Tau__vs__D0_iso_D0Mu__vs__D0_iso_DstMu__vs__D0_iso_Dst0Mu__el.pdf)
:::
::: {.column width=33%}
![](./section/figs-fit-fit-templates/histo-comp/D0_iso_D0Tau__vs__D0_iso_D0Mu__vs__D0_iso_DstMu__vs__D0_iso_Dst0Mu__q2.pdf)
:::
:::


\begin{tikzpicture}[relative to page]
    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1
        ]
        at (page cs:-0.53, 0.09) {\footnotesize \mmSq};

    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1
        ]
        at (page cs:0.17, 0.09) {\footnotesize \el};

    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1
        ]
        at (page cs:0.41, 0.09) {\footnotesize \qSq};

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=30em
        ]
        at (page cs:00, -0.68) {
            \footnotesize
            $\textcolor{blue}{\Bm \rightarrow \Dz\taum\neutb}$
            vs
            $\textcolor{red}{\Bm \rightarrow \Dz\mun\neumb}$
            vs
            $\textcolor{orange}{\Bzb \rightarrow \Dstarp\mun\neumb}$ feed down
            vs
            $\textcolor{gray}{\Bm \rightarrow \Dstarz\mun\neumb}$ feed down
        };
\end{tikzpicture}


## Fit strategy


# Trigger emulation for MC

## L0 triggers


## HLT1 & HLT2 triggers


# Data/MC correction

## Procedure overview


## Form factor: theoretical recap


## FF: $B \rightarrow \Dz$


## FF: $B \rightarrow \Dstar$


## FF: $B \rightarrow \Dstst$


## Initial reweighting

::: columns
::: {.column width=50%}

### Tracking efficiency correction

:::
::: {.column width=50%}

### $B$ kinematics and multiplicity

:::
:::


## Post-fit cocktail


## Final reweighting


## $B$ vertex resolution correction


# Fit

## Fit overview


## Constraining yields


## Example: yield of $\Bm \rightarrow \Dz \taum\neutb$


## Fit templates: norm and sig


## Fit templates: \Dstst


## Fit templates: $\Dstst_H$


## Fit templates: $\DststS$


## Fit templates: double-charm ($DDX$)


# Systematics


## Conclusions


# UT upgrade


# DCB


# Backup

## The CKM matrix


## \Dstst and $\Dstst_H$ cascade decays
