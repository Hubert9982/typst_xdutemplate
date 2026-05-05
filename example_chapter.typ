= 这里是第一章 <CH1>

这里是第一章。

== 这是第一小节 <CHH1>
=== 这是第一小小节
这里有一个公式：
$
  f=1
$<cc>

@cc 是一个公式。

这里还有一个公式，并且该公式后一段不缩进。
$
  g=2
$
#h(-2em)段后内容。

这里有个图和一个表，并且放置在原处

#figure(
  rect(width: 5cm, height: 5cm),
  caption: [ddd],
  placement: none
)

#figure(
  table([1], [2]),
  caption: [dd],
  placement: none
)<dd>

@dd 是一个不浮动的表
#figure(
  rect(width: 5cm, height: 5cm),
  caption: [ddd],
)<abc>

@abc 是一个浮动的图

#figure(
  {
    // 调整表的字体大小
    // set text(size: 0.75em)
    table(
      columns: (auto, auto, auto, auto),
      align: center,
      stroke: none,
      // 顶线，默认 1 磅（pt），如格式有需要请修改
      table.hline(stroke: 1pt),
      // 主表头
      [算法], table.cell(colspan: 3)[耗时 (ms)],
      // 子表头
      [], [平均], [最好], [最差],
      // 栏目线，默认 0.5 磅（pt），如格式有需要请修改
      table.hline(stroke: 0.5pt),

      // 数据行
      [冒泡排序], [125.3], [0.02], [242.8],
      [快速排序], [0.85], [0.31], [1.95],
      [归并排序], [0.92], [0.92], [0.92],
      [堆排序],   [1.08], [0.67], [1.42],
      // 底线，默认 1 磅（pt），如格式有需要请修改
      table.hline(stroke: 1pt),
    )
  },
  caption: [不同排序算法在各种情况下的耗时对比],
  placement: none,
) <mmm>

@mmm 这是一个供参考的三线表写法

==== 这是四级标题

- 列表第一点
- 列表第二点

+ 有序列表1
+ 有序列表2

这里有两个引用文献：

文献1 @李斌2012极化码原理及应用

文献2 @2001The
