import { router } from '@kit.ArkUI';

@Entry
@Component
struct Longin4 {
  @State m :number=20;
  @State a:string='';
  @State b:string='';
  build() {
    Column(){
      Row(){
        Text('注册').fontSize(24)
        Text('跳过').fontSize(24).margin({left:'60%'})
      }.margin({top:'5%'})
      Row(){
         Text('Fitpro').fontSize(24).textAlign(TextAlign.Center).fontSize(50)
           .fontColor('#ff37e330').width('100%')
      }.width('100%').height('20%')

      TextInput({placeholder:'用户名'}).width('70%').borderWidth(1).borderRadius(5).margin({top:'10%'})

      TextInput({placeholder:'密码'}).width('70%').borderWidth(1).borderRadius(5).margin({top:'10%'})
      Row(){
        Radio({ value: 'Radio1', group: 'radioGroup' }).checked(true)
          .radioStyle({
            checkedBackgroundColor: Color.Pink
          })
        Text('请阅读《用户协议》' + '、《隐私协议》')
      }

      Button('登录').backgroundColor('#ff37e330').width('70%').margin({top:'10%'})
        .onClick(()=>{
          router.pushUrl({
            url:'pages/class4/f',
          })
        })

    }.width('100%').height('100%')
    .backgroundImage($r('app.media.img_2'))
    .backgroundImageSize(ImageSize.Cover)
  }
}