import { router } from '@kit.ArkUI'

@Entry
@Component
struct X2 {


  build() {
Tabs({ barPosition: BarPosition.End }){
  TabContent(){


  }.tabBar('1')
  TabContent(){


  }.tabBar('2')
  TabContent(){
Button('跳转').onClick(()=>{
  router.pushUrl({
    url:'pages/class6/Pagesy'
  })

})

  }.tabBar('3')
}
  }
}