import router from '@ohos.router';

interface MyData {
  username: string
}

@Entry
@Component
struct Day31 {
  @State message: string = 'Hello World';
  @State mmm: MyData = {
    username: ''
  }

  onPageShow(): void {
    this.mmm = router.getParams() as MyData;
    console.log(this.mmm.username)
  }

  build() {
    Column() {
      Text(`欢迎用户: ${this.mmm.username}`)
        .fontSize(20)
        .margin({ top: 50 })

      Text(this.message)
        .fontSize(16)
        .margin({ top: 20 })

      Button('返回', { type: ButtonType.Normal }).width('50%')
        .backgroundColor('#6686939f')
        .borderWidth(2).fontColor(Color.Black)
        .margin({top:'5%'})
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Index',
          })
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)

  }
}