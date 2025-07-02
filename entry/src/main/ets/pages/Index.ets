import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  onPageShow(): void {
    setTimeout(()=>{
      router.pushUrl({
        url:'pages/dzy/Welcome'
      })
    },200)
  }

  build() {

  }
}