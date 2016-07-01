# Linux 4.4.0内核源码分析——TCP实现 #

## Overview ##
TCP协议是目前网络协议栈中最重要的内容之一。出于个人兴趣，我们希望能够了解
关于TCP实现的相关知识。然而，目前网络上已存在的相关分析文章较为零散，难以
形成完整的体系，且多数文章所分析的内核版本较老。

因此，我们希望通过该项目对Linux内核的TCP实现进行相对系统的分析，并且希望我们
所做的工作能够帮助到那些真正需要的人。

## 目录结构 ##
```text
tcp.pdf					每次commit生成的最新版本的分析文档。
tcp.tex					TCP分析文档主文件
chapters/				每一章节的内容
    prepare.tex				准备知识（RFC等）
    network_data_structure.tex		网络子系统相关核心数据结构
    tcp_output.tex			TCP输出
    tcp_input.tex			TCP接收
    client_connect.tex			主动连接(Client)
    server_connect.tex			被动连接(Server)
    congestion_control.tex		TCP拥塞控制实现
    congestion_control_engine.tex	TCP拥塞控制引擎（及CUBIC模块分析）
    active_close.tex			主动关闭
    passive_close.tex			被动关闭
    non-core-related-code.tex		非核心代码分析
    appendix.tex			附录（GCC、操作系统、体系结构等相关知识）
images/					文档图片目录
fonts/					Adobe字体
rfc*.pdf				涉及到的RFC文档
TODO					TODO List
Makefile				构建脚本
```

## 依赖 ##

本文采用LaTeX编写，生成文档需要相关的编译环境：

+ Adobe字体

本文采用了CTEX环境，其中，中文字体方面采用了Adobe字体。为了便于大家编译，
字体已经放在了fonts目录下，请自行安装。

+ TeX Live 2015或以上版本

本文在Ubuntu16.04发行版所配套的TeX Live 2015上编译通过，可以正确生成PDF。
**需要确保xelatex在搜索路径(path)中**

+ pygments

本文的代码高亮采用了minted宏包，该宏包依赖pygments进行代码高亮，因此，编译
该文档依赖pygements。


## 如何生成文档 ##

本项目提供了Makefile用于生成文档

```shell
make clean && make
```

## Get Involoved ##
随着对于Linux的TCP实现分析的深入，我们渐渐发现想要凭借我们微薄的力量完成这一
工作并不容易。我们希望有更多的人能够和我们一道，逐步完善对Linux内核TCP的分析。
让本项目所产生的分析文档能够惠及更多的人。

