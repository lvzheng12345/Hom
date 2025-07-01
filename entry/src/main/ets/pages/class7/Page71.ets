import { Page72 } from './Page72';
import { Page73 } from './Page73';
import { Page74 } from './Page74';
import { Page75 } from './Page75';

@Entry
@Component
struct Page71 {
  @State message: string = 'Hello World';
onPageShow(): void {
  console.log('fff')
}

  aboutToAppear(): void {
    console.log('kkk')
  }

  build() {
    Tabs({barPosition:BarPosition.End}){

      TabContent(){
        Page72()
      }.tabBar('首页')

      TabContent(){
        Page73()
      }.tabBar(this.ta('app.media.background','发现'))


      TabContent(){
        Page74()
      }.tabBar('收藏')

      TabContent(){
        Page75()
      }.tabBar('我的')

    }

  }

  @Builder  ta( im:string,text:string ){
Column(){
  Image($r(im)).width('20%').height('40%').borderWidth(1).borderRadius(10)
  Text(text).fontColor(Color.Blue)
}

}


}