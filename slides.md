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
    - Motivation
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

![](./slides-figures/hflav_2022_preliminary.pdf)

:::
:::


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
::: {.column width=65%}
- Final states: $D^{(*)}\mu$
:::
::: {.column width=35%}
:::
:::


## Selection of $D^{(*)}\mu$


## The LHCb detector


## Feed down


## Background contributions


## The isolation BDT


## Signal and control skims (sub-samples)


## Fit strategy


# Emulation of detector responses on MC

## L0 triggers


## HLT1 triggers


## HLT2 triggers


## PID


# Correction and validation of the MC

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

## Overview


# Conclusions

## Conclusions


# Overview of the LHCb upgrade


# Upgrade of the Upstream tracker
