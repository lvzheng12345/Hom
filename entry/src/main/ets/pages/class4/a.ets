import { Prompt, router } from '@kit.ArkUI';

import { sj } from './b';

@Entry
@Component
struct A {
  @State message: string = 'Hello World';
  @State isFirstClicked: boolean = false;
  @State isSecondClicked: boolean = false;
  @State isThirdClicked: boolean = false;
  @State isFourthClicked: boolean = false;

  build() {
    Column() {
      // 标题
      Text('东壁赋')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 20, bottom: 30 })

      // 四个图片按钮
      Column({ space: 15 }) {
        // 第一个按钮
        sj({a:'dhdh'})

        Row() {
          Image(this.isFirstClicked ? $r('app.media.xcx') : $r('app.media.yx'))
            .width(30)
            .height(30)
            .margin({ right: 10 })
          Text('惟江上之清风，')
            .fontSize(20)
            .fontColor(Color.Blue)
            .decoration({
              type: this.isFirstClicked ? TextDecorationType.LineThrough : TextDecorationType.None
            })
        }
        .width('80%')
        .height(50)
        .backgroundColor('#FF9500')
        .borderRadius(25)
        .justifyContent(FlexAlign.Center)
        .onClick(() => {

          this.isFirstClicked = !this.isFirstClicked;
          Prompt.showToast({ message: '点击了第一句诗' })
        })


        // 第二个按钮
        Row() {
          Image(this.isSecondClicked ? $r('app.media.yyy') : $r('app.media.xcx'))
            .width(30)
            .height(30)
            .margin({ right: 10 })
          Text('与山间之明月。')
            .fontSize(20)
            .fontColor(Color.Blue)
            .decoration({
              type: this.isSecondClicked ? TextDecorationType.LineThrough : TextDecorationType.None
            })
        }
        .width('80%')
        .height(50)
        .backgroundColor('#FF9500')
        .borderRadius(25)
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.isSecondClicked = !this.isSecondClicked;
          Prompt.showToast({ message: '点击了第二句诗' })
        })

        // 第三个按钮
        Row() {
          Image(this.isThirdClicked ? $r('app.media.sys1') : $r('app.media.yyy'))
            .width(30)
            .height(30)
            .margin({ right: 10 })
          Text('耳得之而为声。')
            .fontSize(20)
            .fontColor(Color.Blue)
            .decoration({
              type: this.isThirdClicked ? TextDecorationType.LineThrough : TextDecorationType.None
            })
        }
        .width('80%')
        .height(50)
        .backgroundColor('#FF9500')
        .borderRadius(25)
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.isThirdClicked = !this.isThirdClicked;
          Prompt.showToast({ message: '点击了第三句诗' })
        })

        // 第四个按钮
        Row() {
          Image(this.isFourthClicked ? $r('app.media.yx') : $r('app.media.sys1'))
            .width(30)
            .height(30)
            .margin({ right: 10 })
          Text('目遇之而成色。')
            .fontSize(20)
            .fontColor(Color.Blue)
            .decoration({
              type: this.isFourthClicked ? TextDecorationType.LineThrough : TextDecorationType.None
            })
        }
        .width('80%')
        .height(50)
        .backgroundColor('#FF9500')
        .borderRadius(25)
        .justifyContent(FlexAlign.Center)
        .onClick(() => {
          this.isFourthClicked = !this.isFourthClicked;
          Prompt.showToast({ message: '点击了第四句诗' })
        })
      }
      .width('100%')
      .alignItems(HorizontalAlign.Center)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
    .alignItems(HorizontalAlign.Center)
  }
}