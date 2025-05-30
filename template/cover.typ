#let sp = h(1fr)

#let cover(config) = {
  set page(margin:(x: 3.45cm, top:2.7cm,bottom: 1cm) )
  {
    set align(right)
    set text(size: 12pt)
    strong(
      grid(
        columns: (2em,6.5em),
        column-gutter: 1.4em,
        row-gutter: 0.5em,
        stroke: (x,y) => (bottom: if x==1 {1pt}),
        align: (center,center),
        inset: (bottom: 1.5pt),
        [班~~级], config.class-number ,
        [学~~号], config.student-number
      )
    )
  }
  v(.8cm)
  set align(center)
  pad(image("name.jpg",width: 55% ),left: 0.2cm)
  v(.8cm)
  text(font: "SimHei",size: 42pt,tracking: 6pt)[本科毕业设计论文]
  v(1.3cm)
  pad(image("logo.png"),left: 1cm)
  v(0cm)
  {
    set text(font: "SimSun",size: 15pt)
    show grid.cell.where(x: 0): it => strong(text(it))
    let title-fromat = it=>text(font:("Times New Roman","SimHei"),size: 16pt,(it))

    let tablebody = (      [题 #sp 目],title-fromat(config.title.at(0)),
      [],title-fromat(config.title.at(1)),
      [学 #sp 院],config.school-name,
      [专 #sp 业],config.major-name,
      [学 #sp 生 #sp 姓 #sp 名],config.student-name,
      [导 #sp 师 #sp 姓 #sp 名],config.teacher-name,
    )

    if(config.teacherInXDU-name.display){
      tablebody = tablebody + ([院内导师姓名],config.teacherInXDU-name.body)
    }


    grid(
      columns: (6em,14.8em),
      align: (bottom,bottom),
      rows: 3.1em,
      column-gutter: 1em,
      inset: (bottom: 1.5pt),
      stroke: (x,y) => (bottom: if x==1 {0.5pt}),

      ..tablebody

    )
  }
  
}