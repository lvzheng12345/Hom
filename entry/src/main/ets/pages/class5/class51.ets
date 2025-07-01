import { Prompt, SwiperDynamicSyncSceneType } from '@kit.ArkUI';

class f {
  a: string = ''
  b: string = ''
  c:number=0
  d: string = ''
  constructor(a: string, b: string,c:number,d:string) {
    this.a = a;
    this.b = b;
    this.c=c;
    this.d=d;
  }
}


@Entry
@Component
struct Class51 {
  @State message: number = 0;
  @State mess: Visibility = Visibility.Hidden



 @State c: f[] = [
    new f('商品1', '#FF0000',0,'UI练习1--图+图标/项目图标/work1_8.png'),
    new f('商品2', '#00FF00',1,'UI练习1--图+图标/项目图标/work1_8.png'),
    new f('商品3', '#00FF00',2,'UI练习1--图+图标/项目图标/work1_8.png'),
    new f('商品4', '#FF0000',3,'UI练习1--图+图标/项目图标/work1_8.png')
  ]

  @State a: string[] = ['商品1', '商品2', '商品4', '商品3']

  build() {
    Column() {
      Column(){
        Scroll() {
          Column() {
          ForEach(this.c, (item: f, index: number) =>
          sp({ x: item.a ,tip:item.d, onDelete: (): void=> this.deleteItem(index)}))
        }
        }


    }.height('20%').width('80%')

      // 标题栏
      Row() {
        Text('商品标题')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)

        Button('删除')
          .fontColor('#fff')
          .borderRadius(5)
          .onClick(() => {
            if (this.a.length > 0) {
              this.a.pop() // 删除最后一个商品
            }
          })
      }
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(VerticalAlign.Center)
      .backgroundColor('#fff')
      .borderWidth(1)
      .borderColor('#ccc')
      .padding({ left: 15, right: 15 })
      .margin({ top: 20 })

      // 商品列表区域
      Column() {
        Scroll(){
        Column(){
        if (this.a.length === 0) {
          Column() {
            Text('• • • •')
              .fontSize(20)
              .fontColor('#999')
              .margin({ bottom: 10 })
            Text('具体行数由数据源')
              .fontSize(14)
              .fontColor('#666')
            Text('数组决定。')
              .fontSize(14)
              .fontColor('#666')
          }
          .height(150)
          .justifyContent(FlexAlign.Center)
        } else {

          ForEach(this.c, (item: f, index: number) =>
          sp({ x: item.a, tip: item.d, onDelete: (): void => this.deleteItem(index) }))
          // ForEach(this.a, (item: string, index: number) => {
          //   sp({ x: item, onDelete: (): void=> this.deleteItem(index) })
          // }
          // )
        }
      }
      }
      }
      .width('90%')
      .height('60%')
      .backgroundColor('#fff')
      .borderWidth(1)
      .borderColor('#ccc')
      .padding(10)

      // 底部按钮区域
      Row() {
        Button('添加')
          .backgroundColor('#4CAF50')
          .fontColor('#fff')
          .borderRadius(5)
          .onClick(() => {
            this.c.push(new f(`商品${this.c.length + 1}`,'#FF0000',3,'UI练习1--图+图标/项目图标/FP'+this.c.length+'.png'))
          })


        Button('删除')
          .fontColor('#fff')
          .borderRadius(5)
          .onClick(() => {
            if (this.c.length > 0) {
              this.c.pop()
            }
          })
      }
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceEvenly)
      .backgroundColor('#e0e0e0')
      .borderWidth(1)
      .borderColor('#ccc')
      .margin({ top: 10 })

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')
    .padding(20)
  }

  deleteItem(index: number) {
    this.c.splice(index, 1)
  }

}



@Component
struct sp {
  @State tip:string=''
  @State x: string = ''
  @State c: string='#fff'
  onDelete?: () => void
  build() {
    Row() {
      Row() {
        Image($rawfile(this.tip)).width(40).height(40)
          .backgroundColor(Color.Blue)
      }
      .flexGrow(1)
      .height('100%')
      .justifyContent(FlexAlign.Start)
      .alignItems(VerticalAlign.Center)
      .padding({ left: 10 })

      Row(){
        Text(this.x)
          .fontSize(18)
          .fontColor('#333')
          .textAlign(TextAlign.Center)
        Text('\n\n单价：')
          .fontSize(16)
          .fontColor('#333')
      }.height('100%')

      Button('删除')
        .fontColor('#fff')
        .fontSize(12)
        .borderRadius(3)
        .width(60)
        .height(30)
        .onClick(() => {
          if (this.onDelete) {
            this.onDelete()
          }
        })
    } .onClick(()=>{
      if (this.c=='#fff') {
        this.c='#fff51313'
      }else {
        this.c='#fff'
      }

    })
    .width('100%')
    .height('20%')
    .backgroundColor('#ddd')
    .borderWidth(1)
    .borderColor(this.c)
    .borderRadius(5)
    .margin({ bottom: 5 })
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .padding({ right: 10 })
  }
}