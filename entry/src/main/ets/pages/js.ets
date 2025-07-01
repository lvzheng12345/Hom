import { Prompt } from '@kit.ArkUI';

@Entry
@Component
struct Js {
  @State c:number=0;
  @State x:number=0;
  @State y:number=0;
  @State a:number=0;
  @State b: string[]=['12','background','foreground'];
  build() {
    Column(){
      Row(){
        Text('简易计算器').fontSize(30).width('100%')
          .textAlign(TextAlign.Center)
      }.width('100%')

      Row(){
      TextInput({placeholder:'请输入第一个数字'}).width('100%').height('10%')
        .onChange(value=>this.x=Number(value))
      }
      Row(){
        TextInput({placeholder:'请输入第二个数字'}).width('100%').height('10%')
          .onChange(value=>this.y=Number(value))
      }

      Row() {

        Row() {

        Button('+').onClick(() => {
          this.c = this.x + this.y
        }).width('20%')
      }

        Row() {

          Button('-').onClick(() => {
            this.c = this.x - this.y
          }).width('20%')

        }
        Row() {

          Button('*').onClick(() => {
            this.c = this.x * this.y
          }
          ).width('20%')
        }
        Row() {

          Button('/').onClick(() => {
            if (this.y==0) {
            Prompt.showToast({message:'除数不能为0'})
            }else {
            this.c = this.x / this.y}
          }).width('20%')
        }
        Row() {

          Button('%').onClick(() => {
            if (this.y==0) {
              Prompt.showToast({message:'除数不能为0'})
            }else {
              this.c = this.x % this.y}
          }
          ).width('20%')
        }

      }.width('100%').height('10%')


      Row() {
        Row() {
          Text('结果:').fontSize(30).textAlign(TextAlign.Center)
        }
        Row() {
        Text(''+this.c).fontSize(30).fontColor("#fff30b0b")
      }
      }.width('100%').height('10%').margin({left:'60%'})

      Row(){
        Image($r('app.media.'+this.b[this.a])).width('60%').height('80%').margin({left:'20%'})
          .backgroundColor('#ff070707')
          .objectFit(ImageFit.Auto)
          .border({width:5,color:'#ff4a4c4a'})
          .borderRadius(30)
      }.width('100%').height('30%').backgroundColor('#ff99db95')


      Row(){
        Row(){
          Button('<').onClick(()=>{
            if (this.a==0) {
              Prompt.showToast({message:'第一张'})
            }else {
              this.a = this.a-1}
          })

        }

        Row(){
          Button('>')
            .onClick(()=>{
              if (this.a==2) {
                Prompt.showToast({message:'最后一张'})
              }else {
                this.a = this.a+1}
            })
        }

        Row(){

          TextInput({placeholder:'请输入数字'}).width('60%').height('10%')
            .onChange(value=>{
              if (Number(value)<=-1 || Number(value)>=3){
                Prompt.showToast({message:'请输入有效序号'})
              }else {
              this.a=Number(value)}})

        }

      }.width('100%').margin({bottom:'20%'})

    }

  }
}