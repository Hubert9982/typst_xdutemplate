#import "../config.typ": *


#let hei(body)  = text(font: "SimHei", body)
#let kai(body)  = text(font: "KaiTi", body)

#let headings = state("headings",())


// 获取header的文本 type:string
#let getheadertext(loc,title, thiscontent:none) = {
	if( calc.even(loc.page()) ){
		if( thiscontent != none ){
			return thiscontent
		}
		return title
	}

	let headings_array = headings.final()
	let headerinfo =none
	for page_heading in headings_array{
		if int(loc.page()) < page_heading.pagenum{
			break
		}
		headerinfo =  page_heading
	}
	let header-format = headerinfo.heading.numbering
	if header-format != none{
		numbering(header-format,..headerinfo.heading-counter) + " "
	}
	headerinfo.heading.body
	
}


// 排版header
#let header-fun(numberformat: "1",cnt: counter(page),config: config-dict, thiscontent: none) = {
	let headercontext = text(size: config.header-fontsize,{
		context {
			h(1fr)
			getheadertext(here(),config-dict.title.at(0)+config.title.at(1),thiscontent: thiscontent)
			h(1fr)
		}
	}  )
	let pagenum = context text(size: config.pagenum-fontsize, cnt.display(numberformat))

	context {
		let a = []
		let c = []		
		if(calc.odd( here().page() )){
			c = pagenum
		}
		else {
			a = pagenum
		}
		grid(
			columns: (3em, 1fr, 3em),
			align: (left,center,right),
			stroke: (bottom:0.75pt),
			inset: (bottom:0.5em),
			a, headercontext, c		

		)
	}


}
