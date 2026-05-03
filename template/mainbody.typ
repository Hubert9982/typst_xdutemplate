#import "utils.typ": *
#import "@preview/numbly:0.1.0": numbly


#let mainbody(doc) = {
	// 标题设置

	set page(
		header:  header-fun(numberformat: "1"),
		footer: []
	)


	set heading(numbering: numbly(
		"第{1:一}章",
		"{1}.{2}",
		"{1}.{2}.{3}",
		"{4}."
	))

	show heading.where(level: 4): set text(weight: "regular")

  show math.equation: set text(font: ("New Computer Modern Math", "SimHei"))
	set math.equation(numbering: it=>{
    set text(font: ("Times New Roman","SimSun"))
		"式(" + str(counter(heading).get().first() )+ "-" + str(it) +")"
	})

	set figure(numbering: it=>{
		str(counter(heading).get().first()) + "." + str(it)
	})

	counter(page).update(1)
	doc
	pagebreak()
}