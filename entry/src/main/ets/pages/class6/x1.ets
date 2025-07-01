import { MessageItem } from '../class5/dd1';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct X1 {
  onPageShow(): void {
    setTimeout(()=>{
      router.pushUrl({
        url:'pages/class6/xsy'
      })
    },3000)
  }

  build() {
Column(){
  Image($rawfile('UI练习1--图+图标/图片5.png'))
}


  }
}