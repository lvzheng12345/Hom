@Entry
@Component
struct Longin {
  @State isAgreed: boolean = false;

  build() {
    Column() {
      // 顶部关闭按钮

      Column() {
        // 中间内容区域
        Column() {
          // Logo
          Row(){
            Image($r('app.media.zz'))
              .borderRadius(120)
          }.width('20%').height('10%').margin({top:'15%'})

          // 电话号码
          Text('131****0905')
            .fontSize(20)
            .fontColor('#333333')
            .fontWeight(FontWeight.Medium)
            .margin({ bottom: 8 })

          // 认证服务提示
          Text('中国联通提供认证服务')
            .fontSize(14)
            .fontColor('#999999')
            .margin({ bottom: 40 })

          // 一键登录按钮
          Button('本机号一键登录')
            .width('80%')
            .height(48)
            .backgroundColor('#FF4444')
            .borderRadius(24)
            .fontSize(16)
            .fontColor(Color.White)
            .margin({ bottom: 40 })
            .onClick(() => {
              console.log('一键登录');
            })

          // 其他手机号登录标题
          Text('其他手机号登录')
            .fontSize(16)
            .fontColor('#333333')
            .fontWeight(FontWeight.Medium)
            .margin({ bottom: 20 })

          // 协议勾选区域
          Column() {
            Row() {
              // 勾选框
              Stack() {
                Circle({ width: 20, height: 20 })
                  .stroke('#CCCCCC')
                  .fill(this.isAgreed ? '#FF4444' : Color.White)

                if (this.isAgreed) {
                  Text('✓')
                    .fontSize(12)
                    .fontColor(Color.White)
                }
              }
              .onClick(() => {
                this.isAgreed = !this.isAgreed;
              })
              .margin({ right: 8 })

              Text('阅读并同意以下协议')
                .fontSize(14)
                .fontColor('#666666')
            }
            .alignItems(VerticalAlign.Center)
            .margin({ bottom: 12 })

            // 协议链接
            Column({ space: 8 }) {
              Row() {
                Text('《转转用户服务协议》')
                  .fontSize(14)
                  .fontColor('#0066CC')
                  .onClick(() => {
                    console.log('打开用户服务协议');
                  })

                Text('《转转隐私政策》')
                  .fontSize(14)
                  .fontColor('#0066CC')
                  .onClick(() => {
                    console.log('打开隐私政策');
                  })
              }
              .alignItems(VerticalAlign.Center)

              Row() {
                Text('《与第三方共享个人信息清单》')
                  .fontSize(14)
                  .fontColor('#0066CC')
                  .onClick(() => {
                    console.log('打开信息清单');
                  })
              }

              Row() {
                Text('《中国联通认证服务协议》')
                  .fontSize(14)
                  .fontColor('#0066CC')
                  .onClick(() => {
                    console.log('打开联通协议');
                  })
              }
            }
            .alignItems(HorizontalAlign.Start)
          }
          .margin({ bottom: 40 })
          .padding({ left: 20, right: 20 })

          // 其他登录方式标题
          Text('其他登录方式')
            .fontSize(16)
            .fontColor('#333333')
            .fontWeight(FontWeight.Medium)
            .margin({ bottom: 20 ,top:'20%'})
          // 第三方登录按钮
            Row() {
              Image($r('app.media.wx'))

            }.width('20%').height('10%')


          Row() {
            // 底部品牌标语
            Text('腾讯投资-更专业的闲置二手交易平台')
              .fontSize(12)
              .fontColor('#999999')
              .textAlign(TextAlign.Center)
              .margin({ bottom: 30 })
          }.margin({top:8})
        }

      }
      .height('100%')
      .width('100%')
    }
  }
}