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

- The standard model (SM)
    - A QFT describing **interactions** between **fermions & gauge bosons**
    - Demand **lepton flavor universality (LFU)**
    - 3 generations of leptons: $e, \mu, \tau$

- Precision measurement
    - Despite its huge success, SM doesn't explain everything
    - Demand new physics (NP) beyond the SM
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
    - high $p_T$
    - invariant mass around \Dz ref. mass
    - displaced from $pp$ vertex

- \Dstarp
    - add. low-\pt (soft/slow) \pion from the \Dz vertex

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


## Background contributions


## The isolation BDT


## Signal and control skims (sub-samples)


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


## Tracking efficiency correction


## $B$ kinematics and multiplicity


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