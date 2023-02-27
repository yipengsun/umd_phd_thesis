---
title: Measurement of \RDX in semileptonic $B$ decays and upgrade of the LHCb Upstream Tracker
author: Yipeng Sun
institute: University of Maryland
date: Mar 1st, 2023

theme: "UMDPepsi"
fonttheme: serif
classoption: "aspectratio=169,dvipsnames"
---


## Outline

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Introduction
    - Event selection
    - Trigger emulation for MC
    - Data/MC corrections
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - UT upgrade
    - The LHCb online system

:::
:::

<!-- http://flavor.physics.umd.edu/manuelf/talks/21-05-05_manuelf_LFU_JHU_UMD_seminar_nobackup.pdf -->
<!-- - misID smear: 50% how does this translates in terms of the alpha parameter? -->
<!-- flat misID -> easier to model -->
<!-- change isolation BDT D** track color to blue, mark magenta explicitly -->

<!-- MC sim: 1B (65M on disk) for run 1, 7.3B (1679 M on disk) for run 2 -->

<!-- fit arrow -> how the various bkgs are determined -->
<!-- triggers emu -> acknowledge that emu was not perfect -->
<!-- split FF theory recap into a intro slide and a brief review of FF models -->


## Introduction

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - **Introduction**
    \color{gray}
    - Event selection
    - Trigger emulation for MC
    - Data/MC corrections
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

- The standard model (SM) is a **hugely successful** theory
    - A QFT describing **interactions** between **fermions & bosons**
    - Allow **arbitrary identical copies of leptons** (except for interactions w/ Higgs)
      $\rightarrow$ **lepton flavor universality (LFU)**
    - **3 generations of leptons**: $e, \mu, \tau$

- The SM doesn't explain every experimental observation
    - Demand new physics (NP) beyond the SM

- Testing the SM w/ **precision measurement**
    - Measure observables precisely
    - Obtain **precise theoretical predictions**
    - Deviations from SM predictions $\rightarrow$ hints to NP

:::
::: {.column width=35%}

![](./slides-figures/the_sm_particles.png)

:::
:::


## Testing LFU with \RDX


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


## The Large Hadron Collider (LHC)


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
    - Data/MC corrections
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


## Key kinematic variables: \mmSq, \el, \qSq

\vspace{-2em}
\small

- Take advantage of \mmSq, \el, \qSq to separate sig, norm, and bkgs
    - $\mmSq \equiv (p_B - p_{D^{(*)}} - p_l)^2$
    - $\el$: lepton energy in $B$ rest frame
    - $q^2 \equiv (p_B - p_{D^{(*)}})^2$
- Not known exactly in hadron colliders ($pp$ and $B$ momenta unknown)
    - Can be approximated with rest frame approximation (RFA)

\vspace{-1em}
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
        at (page cs:0.02, 0.52) {These are fit variables!};

    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1
        ]
        at (page cs:-0.52, 0.04) {\footnotesize \mmSq};

    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1
        ]
        at (page cs:0.18, 0.04) {\footnotesize \el};

    \node[anchor=north west,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1
        ]
        at (page cs:0.41, 0.04) {\footnotesize \qSq};

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=30em
        ]
        at (page cs:00, -0.70) {
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


## Rest frame approximation


## Trigger emulation for MC

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Introduction
    - Event selection
    - **Trigger emulation for MC**
    \color{gray}
    - Data/MC corrections
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - \color{gray}UT upgrade
    - The LHCb online system

:::
:::


## Tracker-only MC

::: columns
::: {.column width=50%}

\tightmargin
- Leading sys. uncert. in run 1: **MC stats**
- Run 2: ~4x more data $\rightarrow$ need even more MC
    - Computationally **impractical to simulate all detector responses**
    - **~85% computation time** spent on RICH and calorimeters
      $\rightarrow$ **~8x faster** turning them off
    - Requested ~7.3B MC (run 1: ~1B), w/ **~1,679M on disk** (run 1: ~65M)
        - Huge problem logistically
- Use **Tracker-only (TO) MC** $\rightarrow$ **only tracking system turned on**
    - Triggers rely on calorimeters $\rightarrow$ **emulate trigger offline**

:::
::: {.column width=50%}
![](./slides-figures/run1_rdx_sys_uncerts_flatten.pdf)
:::
:::


## Emulate L0

::: columns
::: {.column width=50%}

### L0Hadron TOS

\footnotesize

- Trained a BDT (\xgboost) to predict the trigger probabilistically

![](./chapter/figs-mc-emulation/emulate-l0hadron-tos/b0_L0Hadron_TOS_xgb4_valid_d0_pt.pdf)

:::
::: {.column width=50%}

### L0Global TIS

\footnotesize

- Measured in data ($B \rightarrow \jpsi K$) b.c. L0Global TIS portable across reco modes,
  applied as a weight

![](./chapter/figs-mc-emulation/emulate-l0global-tis/l0_global_tis_eff_log_pt_dir.pdf)
:::
:::


## Emulate HLT

::: columns
::: {.column width=50%}

### `Hlt1TrackMVA`

\footnotesize
- Relevant vars exist in MC. Good agreement after correcting for online/offline
  differences

![](./chapter/figs-mc-emulation/emulate-hlt1/b0_Hlt1TrackMVA_TOS_q2.pdf)

:::
::: {.column width=50%}

### `Hlt1TwoTrackMVA`

\footnotesize
- Similar to `Hlt1TrackMVA`. Constant diff. after online/offline corrections (non-material)

![](./chapter/figs-mc-emulation/emulate-hlt1/b0_Hlt1TwoTrackMVA_TOS_q2.pdf)

:::
:::


## Data/MC corrections

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Introduction
    - Event selection
    - Trigger emulation for MC
    - **Data/MC corrections**
    \color{gray}
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - \color{gray}UT upgrade
    - The LHCb online system

:::
:::

## Procedure overview

\tightmargin\small
#. Apply known corrections (**initial reweighting**)
    - **\textcolor{PepsiBlueLt}{Tracking efficiency}**
    - **\textcolor{PepsiRed}{$B$ kinematic and multiplicity}**
#. **Update MC FF models** for \Dz, \Dstar, \Dstst
#. Perform a fit to estimate yields of sig, norm, & bkgs
#. Correct add. kinematic & geometric vars in low-\mmSq region (**final reweighting**)
    - Enriched in **norm decays** ($B \rightarrow D^{(*)}\mu\neum$)
    - Diff. in that region due to **modelling of detector effects**
\vspace{11em}


\begin{tikzpicture}[relative to page]
    % Tracking
    \node (trkNW) at (page cs:-0.96,-0.05) {};
    \node (trkSE) at (page cs:-0.02,-0.95) {};

    \draw[PepsiBlueLt,ultra thick] (trkNW) rectangle (trkSE);
    \node[anchor=north west,fill=PepsiBlueLt,text=white,inner sep=3pt] (trkTitle) at (trkNW) {
        \scriptsize\bfseries Tracking efficiency
    };
    \node[anchor=north,inner sep=0pt] at (page cs:-0.49,-0.19) {
        \includegraphics[width=0.42\textwidth]{./chapter/figs-mc-correction/reweighting-tracking/tracking_eff_2016.pdf}
    };

    % B prod kinematics
    \node (prodNW) at (page cs:0.02,-0.05) {};
    \node (prodSE) at (page cs:0.96,-0.95) {};

    \draw[PepsiRed,ultra thick] (prodNW) rectangle (prodSE);
    \node[anchor=north west,fill=PepsiRed,text=white,inner sep=3pt] (trkTitle) at (prodNW) {
        \scriptsize\bfseries $B$ kinematics and multiplicity
    };
    \node[anchor=north,inner sep=0pt] at (page cs:0.24,-0.53) {
        \includegraphics[width=0.17\textwidth]{./chapter/figs-mc-correction/reweighting-JpsiK/reweight-JpsiK/b_pt.pdf}
    };
    \node[anchor=north,inner sep=0pt] at (page cs:0.74,-0.53) {
        \includegraphics[width=0.17\textwidth]{./chapter/figs-mc-correction/reweighting-JpsiK/reweight-JpsiK/b_eta.pdf}
    };

    \node[anchor=north,inner sep=0pt] at (page cs:0.24,-0.155) {
        \includegraphics[width=0.17\textwidth]{./chapter/figs-mc-correction/reweighting-JpsiK/reweight-JpsiK/ntracks.pdf}
    };
    \node[anchor=north,inner sep=0pt] at (page cs:0.74,-0.155) {
        \includegraphics[width=0.17\textwidth]{./chapter/figs-mc-correction/reweighting-JpsiK/reweight-JpsiK/b_ownpv_ndof.pdf}
    };

    % Remarks
    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:-0.49, -0.49) {
        \tiny $\epsilon(\text{tracking, data}) / \epsilon(\text{tracking, MC})$
        };

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiRed,rounded corners,
          fill=PepsiRed,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.31, -0.29) {\tiny nTracks};

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiRed,rounded corners,
          fill=PepsiRed,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.78, -0.29) {\tiny PV NDOF};

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiRed,rounded corners,
          fill=PepsiRed,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.28, -0.66) {\tiny $B$ \pt};

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiRed,rounded corners,
          fill=PepsiRed,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.82, -0.66) {\tiny $B$ $\eta$};
\end{tikzpicture}

<!-- A two-track vertex has one degree of freedom. A three-track vertex has three degrees of freedom.  -->
<!-- This looks like a covariance matrix problem! -->


## Form factor (FF): theoretical recap

\tightmargin

::: columns
::: {.column width=50%}

\footnotesize

- **Matrix element** of $B \rightarrow D l \neul$ processes factorizable:
    $$
    \tiny
    \mathcal{M} \propto f(q^2)
    \sum_{\lambda_W} \eta_{\lambda_W}
    L^{\lambda_l}_{\lambda_W}(q^2, \theta_l)
    H^{\lambda_D}_{\lambda_W}(q^2)
    $$

- **Leptonic currents** analytically calculable
- **Hadronic currents** involves non-perturbative QCD
  $\rightarrow$ can't calculate exactly
    - **Expressed as form factors (FFs)**
      $\rightarrow$ **parameterized & constrained** based on
      dispersion relations (first principle),
      heavy quark effective theory (HQET), etc
    - Numerical values obtained w/ **lattice QCD computation
      & fit to data**

:::
::: {.column width=50%}

\footnotesize

- FF parameterizations
    - ISGW2
        - \tiny Fully predictive (no free parameter)
        - \tiny \textbf{Doesn't describe data well}
    - BGL
        - \tiny Based on dispersion relations
        - \tiny Analytically continue FFs as complex functions $\rightarrow$ expandable
        - \tiny \textbf{Model independent} until truncate series
        - \tiny \textbf{Many free parameters} restricted from lattice QCD + data
    - CLN
        - \tiny Based on BGL, \textbf{apply HQET to reduce num. of params.}
        - \tiny Some parameters too closely constrained
    - BLR
        - \tiny Apply HQET to \Dstst
        - \tiny \textbf{Offer parameters fitted from data}
:::
:::


## Form factor reweighting

- **Change FF parameterization** $\xleftrightarrow{\text{\bfseries equivalent}}$ **reweighting**
    - FF parameterization **determines** differential decay rate
      $d\Gamma / d\PSpt$
    - For each MC event, weight $w$ given by:
      $$
      \scriptsize
      w = \left.
              \frac{d\Gamma_\text{target} / d\PSpt}{d\Gamma_\text{source} / d\PSpt}
          \right|_\text{eval at phase space point}
      $$

::: columns
::: {.column width=33%}
![](./chapter/figs-mc-correction/reweighting-form-factors/norm/D0Mu.pdf)
:::
::: {.column width=33%}
![](./chapter/figs-mc-correction/reweighting-form-factors/norm/DstMu.pdf)
:::
::: {.column width=33%}
![](./chapter/figs-mc-correction/reweighting-form-factors/DststMu/D2ststMu.pdf)
:::
:::

\begin{tikzpicture}[relative to page]
    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:-0.69, -0.46) {
            \tiny $\Bm \rightarrow \Dz\mun\neumb$
        };

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:-0.62, -0.78) {
            \footnotesize $B \rightarrow \Dz$ (CLN $\rightarrow$ BGL)
        };

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.02, -0.26) {
            \tiny $\Bzb \rightarrow \Dstarp\mun\neumb$
        };

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:0.02, -0.78) {
            \footnotesize $B \rightarrow \Dstar$ (CLN $\rightarrow$ BGL)
        };

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.78, -0.26) {
            \tiny $\Bzb \rightarrow D^{*+}_2\mun\neumb$
        };

    \node[anchor=north,
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
        ]
        at (page cs:0.68, -0.78) {
            \footnotesize $B \rightarrow \Dstst$ (ISGW2 $\rightarrow$ BLR)
        };
\end{tikzpicture}


## Final reweighting

\begin{tikzpicture}[relative to page]
    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.34, 0.72) {
            \scriptsize Multi-stage final reweighting vars
        };

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=Red,rounded corners,
          fill=Red,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:-0.015, -0.77) {\scalebox{.55}{S1: $\Dz \sqrt{IP \chi^2}/IP)$}};

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=Blue,rounded corners,
          fill=Blue,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.36, -0.77) {\scalebox{.55}{S2: $\Dz\muon \log(FD \chi^2)$}};

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=Green,rounded corners,
          fill=Green,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.745, -0.77) {\scalebox{.55}{S10: $\Dz \log(1-DIRA)$}};

    % picture in the left
    \node[anchor=north west,inner sep=0pt]
        at (page cs:-1.0, 0.79) {
            \includegraphics[width=15em]{./slides-figures/schematic_final_rwt.pdf}
        };
\end{tikzpicture}

\vspace{-2.5em}\tightmargin
::: columns
::: {.column width=35%}

\vspace{10em}\small
- Perform an initial fit to estimate yields
- Reweight low \mmSq region of sig (ISO) fit
    - Enriched in **norm**
- After final reweighting, consider **MC describe data sufficiently well**

:::
::: {.column width=65%}

\vspace{2.1em}
\resizebox{\textwidth}{!}{
    \begin{tabular}{c|l|c|l|c|l}
        \toprule
         {\bf Variable 1}             & {\bf Binning 1}   & {\bf Variable 2}               & {\bf Binning 2}   & {\bf Variable 3}                     & {\bf Binning 3}   \\
        \midrule
         $K$ $\sqrt{IP\, \chi^2} / IP$ & 10, 0 -- 100     & $\pi$ $\sqrt{IP\, \chi^2} / IP$ & 10, 0 -- 100     & \textcolor{Red}{$D^0$ $\sqrt{IP\, \chi^2} / IP$}      & 10, 15 -- 110     \\
         \textcolor{Blue}{$D^0\mu$ $\log(FD\, \chi^2)$}  & 10, 4 -- 12.5     & $D^0$ $\log(IP\, \chi^2)$      & 10, 2 -- 9       & $\mu$ $\log(IP\, \chi^2)$            & 10, 3.6 -- 11     \\
         $K$ $p_T$ [GeV]               & 10, 0 -- 11       & $K$ $\log(IP\, \chi^2)$        & 10, 3.6 -- 10.2  & $K$ $\sqrt{IP\, \chi^2} / IP$        & 10, 5 -- 100      \\
         $\pi$ $p_T$ [GeV]             & 10, 0 -- 12.5     & $\pi$ $\log(IP\, \chi^2)$      & 10, 3.6 -- 10.2  & $\pi$ $\sqrt{IP\, \chi^2} / IP$      & 10, 5 -- 100      \\
         $\mu$ $p_T$ [GeV]             & 10, 0 -- 12       & $\mu$ $\log(IP\, \chi^2)$      & 10, 3.6 -- 10.8  & $\mu$ $\sqrt{IP\, \chi^2} / IP$      & 10, 0 -- 100      \\
         $D^0$ $p_T$ [GeV]             & 10, 2 -- 18.5     & $D^0$ $\log(IP\, \chi^2)$      & 10, 2 -- 9       & $D^0$ $\sqrt{IP\, \chi^2} / IP$      & 10, 18 -- 102     \\
         $D^0$ $p_T$ [GeV]             & 20, 2 -- 18.5     & $D^0$ $\eta$                   & 10, 1.8 -- 5     & --                                   & --                \\
         $K$ $p_T$ [GeV]               & 20, 0 -- 11       & $K$ $\eta$                     & 10, 1.8 -- 5     & --                                   & --                \\
         $\pi$ $p_T$ [GeV]             & 20, 0 -- 12.5     & $\pi$ $\eta$                   & 10, 1.8 -- 5     & --                                   & --                \\
         $\mu$ $p_T$ [GeV]             & 20, 0 -- 12       & $\mu$ $\eta$                   & 10, 1.8 -- 5     & --                                   & --                \\
         \textcolor{Green}{$D^0$ $\log(1 - DIRA)$}        & 20, -14.2 -- -8.4 & --                             & --               & --                                   & --                \\
         slow $\pi$ $p_T$ [GeV]\parnote{
             This is for \Dstar channel only.
         }                            & 6, 0 -- 1.6       & slow $\pi$ $\eta$              & 10, 1.8 -- 4.8    & --                                   & --                \\
         slow $\pi$ $p_T$ [GeV]\parnoteref{parnote:final-rwt-dst}
                                      & 6, 0 -- 1.6       & slow $\pi$ $\log(IP\, \chi^2)$ & 10, -4 -- 7       & slow $\pi$ $\sqrt{IP\, \chi^2} / IP$ & 10, 0 -- 50       \\
        \bottomrule
    \end{tabular}
}

\vspace{0.5em}

![](./chapter/figs-mc-correction/reweighting-final/plot_step0-D0_iso-d0_comp.pdf){ width=32% }
![](./chapter/figs-mc-correction/reweighting-final/plot_step1-D0_iso-b_log_fd_chi2.pdf){ width=32% }
![](./chapter/figs-mc-correction/reweighting-final/plot_step10-D0_iso-d0_comp2.pdf){ width=32% }

:::
:::


## Fit

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Introduction
    - Event selection
    - Trigger emulation for MC
    - Data/MC corrections
    - **Fit**
    \color{gray}
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - \color{gray}UT upgrade
    - The LHCb online system

:::
:::


## Overall fit strategy

::: columns
::: {.column width=65%}

\tightmargin
- **Binned maximum likelihood fit**
    - Fit vars: \mmSq, \el, \qSq
    - **Norm, sig, bkgs represented by fit templates**
        - 3D histos, correlation-preserving

- Fit the control skims (1OS, 2OS, DD) **first**
    - 3 control skims per channel $\rightarrow$ **simultaneous fit to 6 datasets**
    - **Derive shape correction params for bkgs**
        - FF variations & data-driven corrections

- Fit the signal skim (ISO)
    - **Simultaneous fit to \Dz & \Dstar ISO skim**
    - **Load bkg shape correction params** as constraints or fully fixed
        - **They can't be determined precisely in sig fit**
        - Compared to **\textcolor{Red}{nominal fit}**,
          **\textcolor{Green}{fit w/ 1 add. $DDX$ param floating}** has smaller pulls
          but drives the signal yield to 0

:::
::: {.column width=30%}

\vspace{1.1em}
![](./chapter/figs-fit/fit_uvsd/fit_result-stacked-Dst-iso-q2.pdf)

![](./chapter/figs-fit/fit_uvsd/fit_result-stacked-Dst-iso-q2-floating_uvsd.pdf)

:::
:::

\begin{tikzpicture}[relative to page]
    \node[anchor=north,
          draw=Red,rounded corners,
          fill=Red,fill opacity=.22,text opacity=1,
          inner sep=2pt
        ]
        at (page cs:0.66, 0.72) {\tiny Nominal fit for \Dstar ISO};

    \node[anchor=north,
          execute at begin node=\setlength{\baselineskip}{6pt},
          draw=Green,rounded corners,
          fill=Green,fill opacity=.22,text opacity=1,
          inner sep=2pt,
          text width=8em, align=center
        ]
        at (page cs:0.66, -0.79) {\tiny \Dstar ISO fit w/ 1 $DDX$ shape param floating};
\end{tikzpicture}


## Templates in the fit

\begin{tikzpicture}[relative to page]
    % main figure
    \node[anchor=north west,inner sep=0pt] at (page cs:-1, 0.80) {
        \includegraphics[width=22em]{./slides-figures/fit_templates_schematic.pdf}};

    % block pulls
    \node (blockPullNW) at (page cs:-1,-0.152) {};
    \node (blockPullSE) at (page cs:1,-1) {};
    \draw[fill=white,white] (blockPullNW) rectangle (blockPullSE);

    % block '5' (the remaining tick label)
    \node (block5NW) at (page cs: -1,-0.1) {};
    \node (block5SE) at (page cs: -0.84,-1) {};
    \draw[fill=white,white] (block5NW) rectangle (block5SE);

    % erase title
    \node[anchor=north,inner sep=0pt,fill=white,white,text width=8em,align=center] at (page cs:-0.39,0.781) {
        \scriptsize \Dz, DD, \el
    };

    \node[anchor=north,inner sep=3pt,rounded corners,
          draw=gray,fill=gray,fill opacity=.22,text opacity=1] at (page cs:-0.4,0.6) {
        \footnotesize \Dz, DD, \el
    };

    \node[anchor=north west] at (page cs: 0.1,0.75) {
        \scriptsize
        \begin{tabular}{l|c|c}
            & \Dz & \Dstar \\
            \midrule
            \colorbox{Ds}{\phantom{XXX}} \DststS & 2 subtypes & 2 subtypes \\
            \colorbox{DD}{\phantom{XXX}} $DDX$ & 4 & 4 \\
            \colorbox{DststH}{\phantom{XXX}} $\Dstst_H$ & 3 & 1 \\
            \colorbox{Dstst}{\phantom{XXX}} \Dstst & 20 & 12 \\
            \colorbox{normSig}{\phantom{XXX}} norm + sig & 6 & 2 \\
            \colorbox{combBkg}{\phantom{XXX}} comb bkg & 1 & 2 \\
            \colorbox{misID}{\phantom{XXX}} misID & 1 & 1 \\
            \midrule
            \colorbox{white}{\phantom{XXX}} Total & 37 & 24 \\
        \end{tabular}
    };
\end{tikzpicture}

\vspace{9em}
::: columns
::: {.column width=33%}
\centering
\vspace{4pt}
![](./section/figs-fit-fit-templates/data-driven-plots/misid/D0_el.pdf)
:::
::: {.column width=33%}
\vspace{3pt}
![](./section/figs-fit-fit-templates/data-driven-plots/b_comb/fit_b_comb_d0_scaled.pdf)
:::
::: {.column width=33%}
\vspace{2pt}
![](./section/figs-fit-fit-templates/data-driven-plots/dst_comb/fit_dst_comb_scaled_comp_iso_log.pdf)
:::
:::

\begin{tikzpicture}[relative to page]
    % misID
    \node (misIDNW) at (page cs:-0.95,-0.19) {};
    \node (misIDSE) at (page cs:-0.32,-0.95) {};
    \draw[misID,ultra thick] (misIDNW) rectangle (misIDSE);

    \node[execute at begin node=\setlength{\baselineskip}{7pt},
          anchor=north,inner sep=1pt,draw=misID,fill=misID,fill opacity=.4,text opacity=1,
          rounded corners,text width=7em] at (page cs:-0.55,-0.23) {
        \tiny misID: iterative unfolding \\
        \colorbox{normSig}{\phantom{XX}} \pion
        \colorbox{Dstst}{\phantom{XX}} ghost
    };

    % comb bkg
    % block plot title
    \node (combNW) at (page cs:-0.29,-0.19) {};
    \node (combSE) at (page cs:0.95,-0.215) {};
    \draw[fill=white,white] (combNW) rectangle (combSE);

    \node (combNW) at (page cs:-0.29,-0.19) {};
    \node (combSE) at (page cs:0.95,-0.95) {};
    \draw[combBkg,ultra thick] (combNW) rectangle (combSE);

    % BComb
    \node[execute at begin node=\setlength{\baselineskip}{7pt},
          anchor=north,inner sep=1pt,draw=combBkg,fill=combBkg,fill opacity=.4,text opacity=1,
          rounded corners,text width=8em] at (page cs:0.07,-0.41) {
        \tiny \DXmu comb: lin. rescale fac. (fit to $m_B$ USB)
    };

    % Dst comb
    \node[execute at begin node=\setlength{\baselineskip}{7pt},
          anchor=north,inner sep=1pt,draw=combBkg,fill=combBkg,fill opacity=.4,text opacity=1,
          rounded corners,text width=6em] at (page cs:0.71,-0.60) {
        \tiny $\Dz\pi$ comb: rescale to fitted yield
    };
\end{tikzpicture}


## Fit model


###  yield of $\Bm \rightarrow \Dz \taum\neutb$


## Shape variations in the fit


## Fit result


## Systematics


## Summary


## UT upgrade

## Motivation of the LHCb upgrade

## UT upgrade

## Backplane & LVR

## DCB

## The LHCb online system

## Overview of the online system

## The UT online system

## Testing DCB


# Backup

## The CKM matrix


## \Dstst and $\Dstst_H$ cascade decays


## $B$ vertex resolution correction


## Weights applied to MC


## \BComb (\DXmu comb)


## \DstComb ($\Dz\pi$ comb)
