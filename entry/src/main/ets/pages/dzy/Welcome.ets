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
     Image('https://ts1.tc.mm.bing.net/th/id/OIP-C.mH9YLFEL5YdVxJM82mjVJQHaEo?w=174&h=106&c=8&rs=1&qlt=90&o=6&cb=ircwebpc1&dpr=1.4&pid=3.1&rm=2')

   }.width('100%').height('100%')



  }
}