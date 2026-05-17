#import "utils.typ":*

#let abstract(
	ch-abstract,
	en-abstract,
	ch-keywords:[],
	en-keywords:[]
) = {
	{
		set page(
			header: header-fun(numberformat: "i", thiscontent: [摘要]),
			footer: [],
		)
		heading(level: 1, outlined: false)[摘要]
		ch-abstract
		parbreak()
		h(-2em)
		text(font: ("Times New Roman", "SimHei"))[关键词：#ch-keywords ]
	}
	pagebreak()

	{
		set page(
			header: header-fun(numberformat: "i", thiscontent: [Abstract]),
			footer: [],
		)
		set text(lang: "en")
		heading(level: 1, outlined: false)[Abstract]
		en-abstract
		parbreak()
		h(-2em)
		strong[Key words: #en-keywords]
	}
	pagebreak()
}


#let thesis-contents() ={
		set page(
		header:  header-fun(numberformat:  "i", thiscontent: [目录]),
		footer: []
	)
	outline(indent: auto, depth: 3)
	pagebreak()
}

#let front-matter(doc) = {
	//页面设置

	doc
	pagebreak()

}