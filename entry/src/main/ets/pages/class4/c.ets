@Entry
@Component
struct C {
  @State  c: string='Black';
  @State  r:number=98;
  @State  a:string='#ffffff'
  @State  w:string='15%';
  @State  h:string='15%';
  build() {

    Row(){
      Image($r('app.media.zz')).height('20%').width('10%').margin({bottom:'40%',top:'5%',left:'2%'})
        .onClick(()=>{
          if (this.a=='#ffffff') {
            this.a='#ffc8700b'
          }else if (this.a=='#ffc8700b'){
            this.a='#ffffff'
          }
        })

      Column(){
        Text('商品标题').margin({right:'60%',top:'5%'}).fontSize(20)
        Row(){
          Image($r('app.media.background')).width('10%').height('15%').backgroundColor(Color.Black)
          Image($r('app.media.background')).width('10%').height('15%').backgroundColor(Color.Black).margin({left:1})
          Image($r('app.media.background')).width('10%').height('15%').backgroundColor(Color.White).margin({left:1})
          Text('好评：xxxxx').margin({left:3})
          Text('热度：'+this.r).margin({left:2})
        }.margin({top:'5%'})

        Row(){
          Text('最新的评价').borderRadius(0).textAlign(TextAlign.Center).padding({left:'5%'})
        }.width('90%').height('20%').margin({top:'5%'})
        .borderRadius(0).borderWidth(2).borderColor(this.c)
        .onClick(()=>{
          if (this.c=='red') {
            this.c='Black'
          }else if (this.c=='Black'){
            this.c='red'
          }
        })


        Row(){
          Button({ type: ButtonType.Normal }).width('10%').height('13%').backgroundColor(Color.Black)
            .margin({left:'50%'})
          Button('好',{ type: ButtonType.Normal }).width(this.w).height(this.h).backgroundColor(Color.White).fontColor(Color.Black)
            .borderWidth(1).margin({left:'5%'})
            .onTouch((Event)=>{
              if (Event.type=TouchType.Down) {
                setTimeout(()=>{500})
                this.w='18%'
                this.h='18%'
              }
              else if (Event.type=TouchType.Up){
                setTimeout(()=>{500})
                this.w='15%'
                this.h='15%'
              }

            })
            .onClick(()=>{
              this.r=this.r+1

            })

        }.margin({top:'5%'})

      }.height('100%').width('90%')

    }
    .backgroundColor(this.a)
    .width('95%').height('25%')
    .borderWidth(2).margin({left:'3%'})


  }
}


//商品组件
@Component
struct sp {
  @State message: string = '';
  @State  c:number=1
  build() {

  Row(){
  Image($r('app.media.zz')).height('20%').width('10%')
  Column(){

    Text('商品标题')

  }

  }
  .backgroundColor(Color.White).width('100%').height('30%')

  }
}
