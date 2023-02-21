---
title: Measurement of \RDX in semileptonic $B$ decays and upgrade of the LHCb Upstream Tracker
author: Yipeng Sun
institute: University of Maryland
date: Mar 1st, 2023

theme: "UMDPepsi"
fonttheme: serif
classoption: "aspectratio=169,dvipsnames"

header-includes: |
    \usepackage{slides-ext}
    \usepackage{slides-misc}
---

## Outline

::: columns
::: {.column width=50%}

- Preliminary measurement of \RDX
    - Analysis overview
    - Trigger emulation for MC
    - Data/MC correction
    - Fit
    - Systematics (WIP)

:::
::: {.column width=50%}

- Upgrade of the LHCb Upstream Tracker (UT)
    - UT upgrade
    - DCB

:::
:::


# Analysis overview

## Motivation and history of \RDX measurements

::: columns
::: {.column width=50%}

\vspace{1em}
- The standard model (SM)
    - A QFT describing **interactions** between **fermions & gauge bosons**
    - Demand **lepton flavor universality (LFU)**
    - 3 generations of leptons: $e, \mu, \tau$
    - Despite its huge success, SM doesn't explain everything
    - Demand new physics (NP) beyond the SM

- Precision measurement
    - Measure observables precisely
    - Deviations from SM predictions $\rightarrow$ hints to NP

:::
::: {.column width=50%}

- $\RDX \equiv \frac{\BFDTau}{\BFDMu}$
    - Advantageous over measuring BF:
      cancellation of th. and ex. uncert.
    - First anomaly reported in 2012 (BaBar)
    - LHCb run 1 measurement in 2022
    - This analysis: LHCb 2016 data

![](./chapter/figs-intro/hflav_2022_preliminary.pdf)

:::
:::


## The LHCb detector

::: columns
::: {.column width=65%}

![](./chapter/figs-detector/lhcb_detector_view.pdf)

:::
::: {.column width=35%}

![](./chapter/figs-detector/14_rad_acc_scheme_right.pdf)

:::
:::

- LHCb: a **forward-only** spectrometer covering $1.9 < \eta < 4.9$
    - $B$ meson produced from gluon fusion $\rightarrow$ $B$ highly boosted
    - With 4% solid angle coverage, capture ~20% of $\bbbar$ pairs
- Important for this analysis: tracking & PID


## Signal and normalization

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
- Final visible states: $D^{(*)}\mu$
:::
::: {.column width=10%}
:::
:::


## Selection of $D^{(*)}\mu$

::: columns
::: {.column width=50%}

- \Dz ($\Km\pip$ pair)
    - High $p_T$
    - Invariant mass around \Dz ref. mass
    - Displaced from $pp$ vertex

- \Dstarp
    - Add. low-\pt (soft/slow) \pion from the \Dz vertex

- \muon
    - PID: add. \UBDT to further reject misID while keeping eff. flat in $p_T$



:::
::: {.column width=50%}

- \muon in sig. have lower \pt than norm.

TODO:
Figures of sig. and norm. decays in drawings

:::
:::


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

- More efficient at rejecting \pion
- Efficiency flat in \pt: **sig. & norm have similar selection eff.**
- Remaining misID effect (non-\muon misID'ed as \muon) modeled w/ a data ctrl sample (later)


## Feed down

::: columns
::: {.column width=60%}

- Not all slow \pion from \Dstarp decays are reco'ed
    - **Some** \Dstarp\muon feed down into \Dz\muon
- For $\Bm \rightarrow \Dstarz (\rightarrow \Dz \piz) l^- \neulb$,
  neutral slow \pion entirely missed
    - **All** \Dstarz\muon feed down into \Dz\muon
    - **~2.5x BF** compared to $B \rightarrow \Dz$

- Feed down makes \RD and \RDst correlated
    - A simultaneous needed
    - Also improve precision for \RDst
      due to large \Dstarz\muon feed down sample

- To avoid double-counting,
  \Dstarp\muon veto applied in \Dz\muon

:::
::: {.column width=40%}

- $p = 8$ GeV for a typical slow \pion
- It will fail to reco. for about 35% of the time

\centering
![](./slides-figures/slow_pi_reco_eff.pdf){ width=100% }

:::
:::


## Background contributions

::: columns
::: {.column width=50%}

- Partially reco'ed bkgs (i.e. final states containing $D^{(*)}\mu$ and more)
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

- Modeled w/ MC

:::
::: {.column width=50%}

- Mis-reconstructions
    - MisID
        - "\muon" in the $D^{(*)}\mu$ pair is **not** a \muon
    - Combinatorial bkgs
        - Random combinations of \Dz\muon, \Dstarp\muon, or \Dz\pion
          **not** from the same $B$

- Modeled w/ data control samples

\centering
![](./chapter/figs-analysis-overview/d_meson_predicted_masses.pdf)

:::
:::


## The isolation BDT

::: columns
::: {.column width=50%}

TODO: Include \Dstst decay as an indication

:::
::: {.column width=50%}

![](./slides-figures/isolation_bdt.pdf)

:::
:::

- Reject **partially reco'ed bkgs** with add. charged tracks
- Inverting the selection $\rightarrow$ ctrl samples enriched in such bkgs


\begin{tikzpicture}[relative to page]
    \node[anchor=north west,
          execute at begin node=\setlength{\baselineskip}{7pt},
          draw=PepsiBlueLt,rounded corners,
          fill=PepsiBlueLt,fill opacity=.22,text opacity=1,
          text width=5.5em
        ]
        at (page cs:0.65, 0.4) {
            \tiny
            \bfseries{MVA distribution for $B \rightarrow \Dstst \mu\neum$ bkg (hatched) vs. signal (solid)}
        };

\end{tikzpicture}


## Signal and control skims (sub-samples)

::: columns
::: {.column width=50%}

### Signal

- ISO
    - Signal-enriched.
      No charged track likely coming from the same $B$ (isolated)

:::
::: {.column width=50%}

### Control

- 1OS
    - Enriched in $B \rightarrow \Dstst l\neul$.
      One extra \pion (anti-isolated).
- 2OS
    - Enriched in $B \rightarrow \Dstst_H \mu\neum$.
      Two anti-isolated \pion.
- DD
    - Enriched in $B \rightarrow D^{(*)} D_q X$.
      One or more anti-isolated tracks, at least one \kaon

:::
:::


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
