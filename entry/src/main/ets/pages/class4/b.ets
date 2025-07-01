import { Prompt } from '@kit.ArkUI';

@Entry
@Component
struct B {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Text('东壁赋')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 30 })
      sj({a:'惟江上之清风，'})
      sj({a:'惟江上之清风，'})
      sj({a:'惟江上之清风，'})
      sj({a:'惟江上之清风，'})
    }.width('100%').height('40%')

  }
}


@Component
struct sj {
  @State isFirstClicked: boolean = false;
  @Prop  a:string=''
  build() {

  Row() {
    Image(this.isFirstClicked ? $r('app.media.xcx') : $r('app.media.yx'))
      .width(30)
      .height(30)
      .margin({ right: 10 })
    Text(this.a)
      .fontSize(20)
      .fontColor(Color.Blue)
      .decoration({
        type: this.isFirstClicked ? TextDecorationType.LineThrough : TextDecorationType.None
      })
  }
.margin({top:'5%'})
  .width('80%')
  .height(50)
  .backgroundColor('#FF9500')
  .borderRadius(25)
  .justifyContent(FlexAlign.Center)
  .onClick(() => {
  this
  .isFirstClicked = !this.isFirstClicked;
  Prompt.showToast({ message: '点击了第一句诗' })
}
)
}
}

export { sj };
