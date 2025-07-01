import { text } from '@kit.ArkGraphics2D';

@Entry
@Component
struct C5 {
  @State img1:string='app.media.QQ';
  @State img2 : Resource | null = $r('app.media.wx');
@State m1:Visibility=Visibility.Visible;
@State m2:Visibility=Visibility.None;
  @State a:string='#ffd70c0c';

  build() {
    Column(){
      Tabs({barPosition:BarPosition.End}){
        TabContent(){
          Row(){
            Text('首页1').visibility(this.m2)
            Text('首页2').visibility(this.m1)
          }

        }
        .tabBar({
          icon:$r('app.media.QQ'),
          text:'qq'
        })
        .backgroundColor(Color.Red)
        TabContent(){}.tabBar(this.createTabItem('app.media.wx', '消息',true))
        TabContent(){}.tabBar('1').backgroundColor(Color.Red)
        TabContent(){}.tabBar(this.createTabItem(this.img1, '我的',true))
      }
      .onChange((index:number)=>{

        switch (index){
          case 0:
            this.img2=$r('app.media.QQ');
            break
          case 1:
            this.img2=$r('app.media.QQ' );
         break
        }



      })
      // .scrollable(false)
      .barWidth(600)
      .barHeight(50)
      // .barMode(BarMode.Scrollable)
    }.height('100%').width('100%')


  }


  @Builder createTabItem(icon: string, text: string, hasNotification: boolean) {
    Column() {
      Row() {
        Image($r(icon)).width('30%').height('70%')
      }.height('70%')
      Text(text).fontColor(this.a).visibility(this.m2)
      Text(text).visibility(this.m1)
    }.height('100%').width('100%')
    .backgroundColor(Color.Red)

  }


}






@Component
struct ss{
  build() {

  }


  @Builder fd(){


  }

}













