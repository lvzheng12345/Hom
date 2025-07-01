import { router } from '@kit.ArkUI';

@Entry
@Component
struct Welcome {


  onPageShow(): void {
    setTimeout(()=>{
      router.pushUrl({
        url:'pages/dzy/log'
      })
    },2000)
  }

  build() {
   Column(){
     Image($r('app.media.t5'))

   }.width('100%').height('100%')


  }
}