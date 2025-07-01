import { router } from '@kit.ArkUI'

@Entry
@Component
struct Sy {

  onPageShow(): void {
    setTimeout(()=>{
      router.pushUrl({
        url:'pages/class4/longin4\''
      })
    },2000)
  }


  build() {
 Column(){
  Image($r('app.media.t5'))
  }.width('100%').height('100%')


  }
}