@Entry
@Component
export struct Page73 {
  @State message: string = 'Hello World'  // 添加默认值

  build() {
    RelativeContainer() {

      Row(){
        Image($r('app.media.background')).width('30%').height('15%').borderWidth(1)
          .borderRadius(10).id('tx')
          .alignRules({
            left:{anchor:'__container__',align:HorizontalAlign.Start},
            top:{anchor:'__container__',align:VerticalAlign.Top}
          }).offset({
          x:10,
          y:30
        })

        Text('uyhhfwufhh').height('15%').width('60%')
          .alignRules({
            left:{anchor:'tx',align:HorizontalAlign.End},
            top:{anchor:'tx',align:VerticalAlign.Top}
          }).borderWidth(1)

      }.id('hh')

    Image($r('app.media.background')).width('30%').height('15%').borderWidth(1)
      .borderRadius(10).id('tx')
      .alignRules({
        left:{anchor:'__container__',align:HorizontalAlign.Start},
        top:{anchor:'__container__',align:VerticalAlign.Top}
      })

      Text('uyhhfwufhh').height('15%').width('60%')
        .alignRules({
          left:{anchor:'tx',align:HorizontalAlign.End},
          top:{anchor:'tx',align:VerticalAlign.Top}
        }).borderWidth(1)


      Text('uyhhfwufhh').height('5%').width('90%')
        .id('t1')
        .alignRules({
          left:{anchor:'tx',align:HorizontalAlign.Start},
          top:{anchor:'tx',align:VerticalAlign.Bottom}
        }).borderWidth(1).margin({top:10}).backgroundColor(Color.White)


      Text('uyhhfwufhh').height('5%').width('90%')
        .id('t2')
        .alignRules({
          left:{anchor:'t1',align:HorizontalAlign.Start},
          top:{anchor:'t1',align:VerticalAlign.Bottom}
        }).borderWidth(1).margin({top:10}).backgroundColor(Color.White)


      Text('uyhhfwufhh').height('5%').width('90%')
        .id('t3')
        .alignRules({
          left:{anchor:'t2',align:HorizontalAlign.Start},
          top:{anchor:'t2',align:VerticalAlign.Bottom}
        }).borderWidth(1).margin({top:10}).backgroundColor(Color.White)


      Text('uyhhfwufhh').height('5%').width('90%')
        .id('t4')
        .alignRules({
          left:{anchor:'t3',align:HorizontalAlign.Start},
          top:{anchor:'t3',align:VerticalAlign.Bottom}
        }).borderWidth(1).margin({top:10}).backgroundColor(Color.White)

      Text('uyhhfwufhh').height('5%').width('90%')
        .id('t5')
        .alignRules({
          left:{anchor:'t4',align:HorizontalAlign.Start},
          top:{anchor:'t4',align:VerticalAlign.Bottom}
        }).borderWidth(1).margin({top:10}).backgroundColor(Color.White)

      Text('uyhhfwufhh').height('5%').width('90%')
        .id('t6')
        .alignRules({
          left:{anchor:'t5',align:HorizontalAlign.Start},
          top:{anchor:'t5',align:VerticalAlign.Bottom}
        }).borderWidth(1).margin({top:10}).backgroundColor(Color.White)



    }
    .height('100%')
    .width('100%')
    .backgroundColor('#f5f5f5')
  }
}