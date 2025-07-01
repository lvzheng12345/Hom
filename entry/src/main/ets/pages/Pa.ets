@Entry
@Component
struct Pa {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Row(){
        Text('新闻稿')
          .height('20%')
          .fontSize(50)
          .textAlign(TextAlign.Center)
      }
      Row(){
        Text('12342345').fontColor('#ffffff')
          .width('90%').height('5%')
          .backgroundColor('#000000')
          .letterSpacing(5)
          .textAlign(TextAlign.Center)
      }
      Row(){
        Text('‘事实’').decoration({type:TextDecorationType.Overline,color:Color.Red})
        Text('共划分为三部分和报价发你看我放不')
      }.width('100%').height('30%')
      Row(){
        Text('固体火箭和')
        Text('‘报道’')
          .decoration({type:TextDecorationType.Underline})
      }.width('100%').height('30%')
      Row(){
        Button(this.message)
          .onClick(()=>{
            this.message='11'
          })
      }

    }
    .height('100%')
    .width('100%')
    .backgroundColor('#ffd9d9db')

  }
}