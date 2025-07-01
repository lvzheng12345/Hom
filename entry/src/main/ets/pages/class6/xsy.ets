import { router } from '@kit.ArkUI'
import { preferences } from '@kit.ArkData';
import { common } from '@kit.AbilityKit';

@Entry
@Component
struct Xsy {
  @State a:string='随便';
  @State b:string='看看';
  private pr:preferences.Preferences |null=null;
  private c:common.UIAbilityContext=getContext(this) as common.UIAbilityContext;

  async aboutToAppear(){
    this.pr=await preferences.getPreferences(this.c,'name')
  }

  async gkk(){
    this.a = await this.pr?.get('use','你好') as string;
  }

  build() {
  Swiper(){
    Text(this.a).onClick(()=>{

      this.gkk();  // 读取数据
    })
    Image($rawfile('UI练习1--图+图标/项目图标/ic_device_watch_fit_filled.png'))
    Image($rawfile('UI练习1--图+图标/项目图标/p15.jpg'))
    Button('跳转')
      .onClick(()=> {
      router.pushUrl({
        url: 'pages/class5/dd1',
        params:{
          a:this.a,
          b:this.b
        }
      })
    })
  }.autoPlay(true)
  .interval(2000)
  .vertical(true)
  .width('100%')
    .height('100%')

  }
}