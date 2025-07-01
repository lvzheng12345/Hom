import Prompt from '@system.prompt';

@Entry
@Component
struct Page5 {
  @State message: string = 'Hello World';
  @State m: string = '点击';
  @State p: string = '点击';
  @State s:number=10;
  @State fs:number=40;
  @State c:number=865387;


  build() {
    Column() {
      Row() {
        Button(this.m + this.message)
          .width('25%')
          .height('10%')
          .margin({ left: '35%' })
          .type(ButtonType.Circle)
          .onClick(() => {
            if (this.message = 'Hello World') {
              this.m = '多好多好'
            }
            if (this.m = '点击') {
              this.message = '啊'
              this.p = '傻逼'
            }
          })
        Row() {
          Text(''+this.s).fontColor(this.c).fontSize(this.fs)
          Button(this.m)
            .onClick(()=>{
              if (this.s>0) {
                this.s=this.s-1
                this.fs=this.fs-1
                this.c= Math.floor(Math.random() * 1000000)
                this.c=Math.floor(Math.random())
              }else {
                Prompt.showToast({message:'结束'})
              }

            })
        }.width('50%').height('20%')
      }

      Row(){

      }
    }
  }
}