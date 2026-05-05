#import "template/template.typ": *
#import "@preview/modern-nju-thesis:0.3.4": bilingual-bibliography


#show: xdudoc.with()


// 这里包括摘要和目录
#front-matter[
  #abstract(
    ch-keywords: [*Typst* ~~~ *xdutemplate* ~~~~ 西电本科论文模板],
    en-keywords: [Typst ~~~ xdutemplate ],
  )[
    这里是中文摘要。
  ][
    This is English abstract.

    This is English abstract.
  ]
  #thesis-contents()
]

// 这里是正文
#mainbody[
  #include "example_chapter.typ"

]

// 这里是参考文献，致谢和附录
#after-matter[

  = 致谢
  谢谢大家

  #bib("ref.bib")
  // 如果需要使用双语参考文献，可以使用下面的代码  
  // #{
  // 	set text(size: 10.5pt)
  //   bilingual-bibliography(bibliography: bibliography.with("ref.bib"), style: "gb-7714-2015-numeric")
  // }
  

  #appendix[
    = 这是附录A
    #figure(
      rect(width: 5cm, height: 5cm),
      caption: [测试],
      placement: none
    )
    $
      f + g
    $<eqq>
    可以看到，附录的表和@eqq 的编号都没有问题。

  ]


]
