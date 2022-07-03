# Linux Kernel 4.4.0 Source Code Analysis - TCP Implementation #
![Build Status](https://github.com/fzyz999/Analysis_TCP_in_Linux.svg/actions/workflows/test_build.yaml/badge.svg)

<p>
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is based on <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Attribution-ShareAlike 4.0 International</a> License.
</p>

[Chinese Version](README.md)

## Overview ##
TCP is one of the most important contents in current networking protocol stack. Based on personal interests, we hope to learn more knowledge of the implementation of TCP. However, current analysis blogs or articles on the Internet are fragmented and outdated, and it is hard to form a completed system.

Therefore, we are going to analyze part of source codes of TCP implementation inside Linux kernel 4.4.0, and we genuinely hope that this work could help the people that have interest in it.

## Directory Structure ##
```text
tcp.pdf					Each commit will generate the newest analysis document
tcp.tex					The main file of TCP codes analysis 
chapters/				Content of each chapter
    prepare.tex				Basic knowledge (such as RFC)
    network_data_structure.tex		Core data structure of network sub-system
    tcp_output.tex			TCP output
    tcp_input.tex			TCP input
    client_connect.tex			Active Connection (Client)
    server_connect.tex			Passive Connection (Server)
    congestion_control.tex		TCP Congestion Control
    congestion_control_engine.tex	TCPCongestion Control Engine（include module CUBIC）
    active_close.tex			Active Close
    passive_close.tex			Passive Close
    non-core-related-code.tex		Non-core source code analysis
    appendix.tex			Appendix（Knowledge of GCC, OS, and Architecture）
images/					Images required by this project
fonts/					Adobe fonts
rfc*.pdf				Documetns relevant to RFC
TODO					TODO List
Makefile				Compile script
```

## Dependencies ##

This document is written in LaTeX, here are the required packages:

+ Adobe fonts

This document uses CTEX environment and applies Adobe's fonts for Chinese characters. To facilitate compilation, those fonts are under `fonts` folder; please install them by yourself.

+ TeX Live 2015 version or above

A compilation is passed on Tex Live 2015 environment with Ubuntu16.04 distribution, **please ensure xelatex is inside searching path**.

+ pygments

The highlighted part is using `minted` macro package; this package depends on `pygments` package to highlight source code. Please install `pygments` before compilation.


## How to generate this document ##

This project provides `Makefile` to generate the document.

```shell
make clean && make
```

## Get Involved ##
With our analysis goes into deeper, we found it is hard to finish all of the work with our contribution. We hope more and more people could join us to complete and polish this work together and hope this project could help more people as well.
