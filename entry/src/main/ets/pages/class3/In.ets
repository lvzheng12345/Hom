import { Prompt } from '@kit.ArkUI';
import router from '@ohos.router';
interface MyData {
  username: string
}

@Entry
@Component
struct In {
  @State message: string = '';
  @State selectedGender: string = '';
  @State c:number=0;
  @State xx:string='';
  @State y:number=0;
  @State b:number=0;
  @State readingChecked: boolean = false;
  @State musicChecked: boolean = false;
  @State sportsChecked: boolean = false;
  @State travelChecked: boolean = false;
  @State mmm: MyData = {
    username: ''
  }

  //生命周期方法接收路由参数
  aboutToAppear() {
    const params = router.getParams() as Record<string, string>
    if (params && params.username) {
      this.mmm = {
        username: params.username
      }
    }
  }

  build() {
    //底部栏
    Column(){
      Tabs({barPosition:BarPosition.End}){
        TabContent(){
          Scroll() {
            Column() {
              //顶部栏
              Row(){
                Row(){
                  Image($r('app.media.zz'))}.width('10%').height('5%').margin({left:'6%'})
                Row(){
                Text('问一问').textAlign(TextAlign.Center)}.margin({left:'8%'})
                Row(){
                  Text('推荐').textAlign(TextAlign.Center)}.margin({left:'5%'})
                Row(){
                  Text('去旅游').textAlign(TextAlign.Center)}.margin({left:'5%'})
                Row(){
                 Image($r('app.media.sc'))}.width('10%').height('5%').margin({left:'16%'})
              }.width('100%')
              // 搜索栏区域
              Row() {
                Text('南昌→北京')
                  .fontSize(16)
                  .fontColor('#333333')
                  .layoutWeight(1)
                  .textAlign(TextAlign.Start)
                  .padding({ left: 15 })

                Text('搜索').margin({right:'5%'})
                  .fontSize(14)
                  .fontColor('#FFFFFF')
                  .backgroundColor('#4169E1')
                  .padding({ left: 20, right: 25, top: 8, bottom: 8 })
                  .borderRadius(5)
              }
              .borderWidth(1)
              .borderColor('#ff7b3bd6')
              .width('95%')
              .height(50)
              .backgroundColor('#FFFFFF')
              .borderRadius(15)
              .margin({ left: 15, right: 15, top: 10, bottom: 15 })

              // 快捷功能区域
              Row() {
                Text('酒店')
                  .fontSize(12)
                  .fontColor('#666666')
                  .padding({ left: 15, right: 15, top: 5, bottom: 5 })
                  .backgroundColor('#F5F5F5')
                  .borderRadius(15)

                Text('✈南昌→上海')
                  .fontSize(12)
                  .fontColor('#666666')
                  .padding({ left: 15, right: 15, top: 5, bottom: 5 })
                  .backgroundColor('#F5F5F5')
                  .borderRadius(15)
                  .margin({ left: 10 })

                Text('北京的酒店')
                  .fontSize(12)
                  .fontColor('#666666')
                  .padding({ left: 15, right: 15, top: 5, bottom: 5 })
                  .backgroundColor('#F5F5F5')
                  .borderRadius(15)
                  .margin({ left: 10 })
              }
              .width('100%')
              .padding({ left: 15, right: 15 })
              .margin({ bottom: 20 })

              // 服务图标网格
              Column() {
                Row() {
                  Column() {
                    Image($r('app.media.car'))
                      .width(20)
                      .height(20)
                    Text('酒店')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.background'))
                      .width(20)
                      .height(20)
                    Text('机票')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.car'))
                      .width(20)
                      .height(20)
                    Text('火车票')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.zf'))
                      .width(20)
                      .height(20)
                    Text('租车')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.sz'))
                      .width(20)
                      .height(20)
                    Text('旅游')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)
                }
                .width('100%')
                .padding({ top: 20, bottom: 20 })

                Row() {
                  Column() {
                    Image($r('app.media.wx'))
                      .width(20)
                      .height(20)
                    Text('民宿')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.car'))
                      .width(20)
                      .height(20)
                    Text('接送机')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.QQ'))
                      .width(20)
                      .height(20)
                    Text('汽车票')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.sc'))
                      .width(20)
                      .height(20)
                    Text('门票')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.zz'))
                      .width(20)
                      .height(20)
                    Text('酒店套餐')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)
                }
                .width('100%')
                .padding({ bottom: 20 })

                Row() {
                  Column() {
                    Image($r('app.media.kb'))
                      .width(20)
                      .height(20)
                    Text('保险服务')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.xc'))
                      .width(20)
                      .height(20)
                    Text('借钱/分期')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.zf'))
                      .width(20)
                      .height(20)
                    Text('出境游/签证')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.sz'))
                      .width(20)
                      .height(20)
                    Text('里程签到')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Image($r('app.media.wx'))
                      .width(20)
                      .height(20)
                    Text('签证')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 8 })
                  }
                  .layoutWeight(1)
                  .justifyContent(FlexAlign.Center)
                }
                .width('100%')
                .padding({ bottom: 20 })
              }
              .height('35%')
              .backgroundColor('#ffffff')
              .margin({ left: 15, right: 15 })
              .borderRadius(12)
              .borderWidth(1)
              .padding(15)

              // 优惠券区域
              Column() {
                Row() {
                  Text('App新人专属权益')
                    .fontSize(14)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#FF6B35')

                  Text('领取更多权益→AI邀请码抽奖')
                    .fontSize(12)
                    .fontColor('#666666')
                    .layoutWeight(1)
                    .textAlign(TextAlign.End)
                }
                .width('100%')
                .margin({ bottom: 5 })

                Row() {
                  Column() {
                    Text('国内机票券')
                      .fontSize(12)
                      .fontColor('#333333')
                    Text('¥15')
                      .fontSize(24)
                      .fontColor('#FF4444')
                      .fontWeight(FontWeight.Bold)
                    Text('满16减15')
                      .fontSize(10)
                      .fontColor('#ffef3737')
                    Text('领取')
                      .fontSize(12)
                      .fontColor('#FFFFFF')
                      .width('90%').height('20%')
                      .backgroundColor('#FF6B35')
                      .textAlign(TextAlign.Center)
                      .borderRadius(15)
                      .margin({ top: 10 })
                  }
                  .layoutWeight(1)
                  .padding(15)
                  .backgroundColor('#FFF5F0')
                  .borderRadius(8)
                  .height('16%')

                  Column() {
                    Text('火车票券')
                      .fontSize(12)
                      .fontColor('#333333')
                    Text('¥5')
                      .fontSize(24)
                      .fontColor('#FF4444')
                      .fontWeight(FontWeight.Bold)
                    Text('满6减5')
                      .fontSize(10)
                      .fontColor('#ffef3737')
                    Text('领取')
                      .fontSize(12)
                      .fontColor('#FFFFFF')
                      .width('90%').height('20%')
                      .backgroundColor('#FF6B35')
                      .textAlign(TextAlign.Center)
                      .borderRadius(15)
                      .margin({ top: 10 })
                  }
                  .layoutWeight(1)
                  .padding(15)
                  .backgroundColor('#FFF5F0')
                  .borderRadius(8)
                  .margin({ left: 10 })
                  .height('16%')

                  Column() {
                    Text('旅游度假')
                      .fontSize(12)
                      .fontColor('#333333')
                    Text('封顶¥550')
                      .fontSize(18)
                      .fontColor('#FF4444')
                      .fontWeight(FontWeight.Bold)
                    Text('')
                      .fontSize(10)
                      .fontColor('#999999')
                    Text('领取')
                      .fontSize(12)
                      .fontColor('#FFFFFF')
                      .backgroundColor('#FF6B35')
                      .width('90%').height('20%')
                      .textAlign(TextAlign.Center)
                      .borderRadius(15)
                      .margin({ top: 10 })
                  }
                  .layoutWeight(1)
                  .padding(15)
                  .backgroundColor('#FFF5F0')
                  .borderRadius(8)
                  .margin({ left: 10 })
                  .height('16%')

                }
                .width('100%')
                .margin({ bottom: 5 })

                // 产品推荐卡片
                Row() {
                  Column() {
                    Image($r('app.media.car'))
                      .width(60)
                      .height(40)
                      .backgroundColor('#4A90E2')
                      .borderRadius(8)
                    Text('国内酒店新...')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 5 })
                    Row() {
                      Text('¥0.1')
                        .fontSize(16)
                        .fontColor('#FF4444')
                        .fontWeight(FontWeight.Bold)
                      Text('起')
                        .fontSize(10)
                        .fontColor('#999999')
                      Text('抢')
                        .fontSize(12)
                        .fontColor('#FFFFFF')
                        .backgroundColor('#FF6B35')
                        .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                        .borderRadius(10)
                        .margin({ left: 5 })
                    }
                    .margin({ top: 5 })
                  }
                  .layoutWeight(1)
                  .padding(10)
                  .backgroundColor('#E6F3FF')
                  .borderRadius(8)

                  Column() {
                    Image($r('app.media.foreground'))
                      .width(60)
                      .height(40)
                      .backgroundColor('#5CB3CC')
                      .borderRadius(8)
                    Text('国内机票新...')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 5 })
                    Row() {
                      Text('¥0.1')
                        .fontSize(16)
                        .fontColor('#FF4444')
                        .fontWeight(FontWeight.Bold)
                      Text('起')
                        .fontSize(10)
                        .fontColor('#999999')
                      Text('抢')
                        .fontSize(12)
                        .fontColor('#FFFFFF')
                        .backgroundColor('#FF6B35')
                        .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                        .borderRadius(10)
                        .margin({ left: 5 })
                    }
                    .margin({ top: 5 })
                  }
                  .layoutWeight(1)
                  .padding(10)
                  .backgroundColor('#E6F8FA')
                  .borderRadius(8)
                  .margin({ left: 10 })

                  Column() {
                    Image($r('app.media.car'))
                      .width(60)
                      .height(40)
                      .backgroundColor('#90C695')
                      .borderRadius(8)
                    Text('火车票新...')
                      .fontSize(12)
                      .fontColor('#333333')
                      .margin({ top: 5 })
                    Row() {
                      Text('¥0.1')
                        .fontSize(16)
                        .fontColor('#FF4444')
                        .fontWeight(FontWeight.Bold)
                      Text('起')
                        .fontSize(10)
                        .fontColor('#999999')
                      Text('抢')
                        .fontSize(12)
                        .fontColor('#FFFFFF')
                        .backgroundColor('#FF6B35')
                        .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                        .borderRadius(10)
                        .margin({ left: 5 })
                    }
                    .margin({ top: 5 })
                  }
                  .layoutWeight(1)
                  .padding(10)
                  .backgroundColor('#F0F8F0')
                  .borderRadius(8)
                  .margin({ left: 10 })
                }
                .width('100%')
              }

              .borderWidth(1)
              .backgroundColor('#FFFFFF')
              .margin({top:5, left: 15, right: 15, bottom: 20 })
              .borderRadius(12)
              .padding(15)

              // VIP推广区域
              Row() {
                Text('飞猪超级VIP')
                  .fontSize(16)
                  .fontColor('#FFFFFF')
                  .fontWeight(FontWeight.Bold)
                  .margin({ left: 20 })

                Text('全球旅行会员返场！限时抢购')
                  .fontSize(14)
                  .fontColor('#FFFFFF')
                  .layoutWeight(1)
                  .textAlign(TextAlign.Center)

                Text('>')
                  .fontSize(18)
                  .fontColor('#FFFFFF')
                  .margin({ right: 20 })
              }
              .width('100%')
              .height(50)
              .backgroundColor('#E91E63')
              .margin({ left: 15, right: 15, bottom: 20 })
              .borderRadius(5)
            }
            .width('100%')
          }
        }.tabBar('首页')
        TabContent(){
          //单选框
          Row() {
            Column(){
              Text('注册').width('100%').fontSize(30).textAlign(TextAlign.Center)
              Row(){
                TextInput({placeholder:'用户名'}).width('90%').height('10%').borderRadius(0)
                  .onChange(value=>this.xx=value).borderWidth(1).borderColor(Color.Black)
              }
              Row(){
                TextInput({placeholder:'密码'}).width('90%').height('10%').margin({top:'5%'}).borderRadius(0)
                  .onChange(value=>this.y=Number(value)).borderWidth(1).borderColor(Color.Black)
              }
              Row(){
                TextInput({placeholder:'确定密码'}).width('90%').height('10%').margin({top:'5%'}).borderRadius(0)
                  .onChange(value=>this.c=Number(value)).borderWidth(1).borderColor(Color.Black)
              }
              //单选框
              Row(){
                Text('性别：').fontSize(16).margin({right: 10})

                Row(){
                  Radio({ value: 'male', group: 'gender' })
                    .checked(this.selectedGender === 'male')
                    .enabled(this.xx !== '')  // 添加启用条件
                    .onChange((isChecked: boolean) => {
                      if (isChecked) {
                        this.selectedGender = 'male'
                      }
                    })
                  Text('男').fontSize(14).margin({left: 5, right: 20})
                    .fontColor(this.xx === '' ? Color.Gray : Color.Black)  // 禁用时变灰

                  Radio({ value: 'female', group: 'gender' })
                    .checked(this.selectedGender === 'female')
                    .enabled(this.xx !== '')  // 添加启用条件
                    .onChange((isChecked: boolean) => {
                      if (isChecked) {
                        this.selectedGender = 'female'
                      }
                    })
                  Text('女').fontSize(14).margin({left: 5})
                    .fontColor(this.xx =='' ? Color.Gray : Color.Black)  // 禁用时变灰
                }
              }.margin({left:'10%',top:'5%'}).alignItems(VerticalAlign.Center)


              //复选框,爱好
              Row(){
                Text('爱好：').fontSize(16).margin({right: 10}).margin({top:6})

                Row(){
                  Checkbox({name: 'reading'})
                    .select(this.readingChecked)
                    .onChange((value: boolean) => {
                      this.readingChecked = value
                      this.b=this.b+1
                    })
                  Text('阅读').fontSize(14).margin({left: 5, right: 15})

                  Checkbox({name: 'music'})
                    .select(this.musicChecked)
                    .onChange((value: boolean) => {
                      this.musicChecked = value
                      this.b=this.b+1
                    })
                  Text('音乐').fontSize(14).margin({left: 5})
                  Checkbox({name: 'sports'})
                    .select(this.sportsChecked)
                    .onChange((value: boolean) => {
                      this.sportsChecked = value
                      this.b=this.b+1
                    })
                  Text('运动').fontSize(14).margin({left: 5, right: 15})

                  Checkbox({name: 'travel'})
                    .select(this.travelChecked)
                    .onChange((value: boolean) => {
                      this.travelChecked = value
                      this.b=this.b+1
                    })
                  Text('旅行').fontSize(14).margin({left: 5})
                }.justifyContent(FlexAlign.Start)


              }.width('100%').height('5%').margin({left:'10%',top:'5%'}).alignItems(VerticalAlign.Top)


              Button('注册', { type: ButtonType.Normal }).width('50%').backgroundColor('#6686939f').borderWidth(2).fontColor(Color.Black)
                .onClick(()=>{
                  console.log('b:',this.b)
                  if (this.y!== this.c) {
                    Prompt.showToast({message:'两次输入的密码不一致'})
                  }
                  else if (this.selectedGender==''){
                    Prompt.showToast({message:'请选择性别'})
                  }
                  else if (this.b==0){
                    Prompt.showToast({message:'请至少选择一个爱好'})
                  }
                  else {
                    Prompt.showToast({message:'成功登录'})
                    router.pushUrl({
                      // url: 'pages/day31', // 跳转到主页
                      url:'pages/class4/a',
                      params: {
                        username: this.xx,
                      }
                    }).catch((error: Error) => {
                      console.error('跳转失败:', error.message)
                    })
                  }
                }
                )

            }

          }
        }.tabBar('2')
        TabContent(){
          Column() {
            // 用户信息区域
            Row() {
              Image($r('app.media.wx'))
                .width(60)
                .height(60)
                .borderRadius(8)
                .margin({ right: 15 })

              Column() {
                Text(this.mmm.username)
                  .fontSize(18)
                  .fontWeight(FontWeight.Bold)
                  .alignSelf(ItemAlign.Start)
                Text('微信号: wxid_123456')
                  .fontSize(14)
                  .fontColor('#999999')
                  .margin({ top: 5 })
                  .alignSelf(ItemAlign.Start)
              }
              .alignItems(HorizontalAlign.Start)
              .layoutWeight(1)

              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding(20)
            .backgroundColor('#FFFFFF')
            .margin({ bottom: 10 })

            // 功能列表区域
            Column() {
              // 支付功能行
              Row() {
                Image($r('app.media.zf'))
                  .width(24)
                  .height(24)
                  .margin({ right: 15 })
                Text('支付')
                  .fontSize(16)
                  .layoutWeight(1)
                Text('>')
                  .fontSize(20)
                  .fontColor('#999999')
              }
              .width('100%')
              .padding({ left: 20, right: 20, top: 15, bottom: 15 })
              .onClick(() => {
                this.message = '点击了支付';
                Prompt.showToast({message:this.message})
              }
              )

              Divider().height(1).color('#F5F5F5').margin({ left: 20 })

              // 收藏功能行
              Row() {
                Image($r('app.media.xc'))
                  .width(24)
                  .height(24)
                  .margin({ right: 15 })
                Text('收藏')
                  .fontSize(16)
                  .layoutWeight(1)
                Text('>')
                  .fontSize(20)
                  .fontColor('#999999')
              }
              .width('100%')
              .padding({ left: 20, right: 20, top: 15, bottom: 15 })

              Divider().height(1).color('#F5F5F5').margin({ left: 20 })

              // 相册功能行
              Row() {
                Image($r('app.media.xc'))
                  .width(24)
                  .height(24)
                  .margin({ right: 15 })
                Text('相册')
                  .fontSize(16)
                  .layoutWeight(1)
                Text('>')
                  .fontSize(20)
                  .fontColor('#999999')
              }
              .width('100%')
              .padding({ left: 20, right: 20, top: 15, bottom: 15 })

              Divider().height(1).color('#F5F5F5').margin({ left: 20 })

              // 卡包功能行
              Row() {
                Image($r('app.media.kb'))
                  .width(24)
                  .height(24)
                  .margin({ right: 15 })
                Text('卡包')
                  .fontSize(16)
                  .layoutWeight(1)
                Text('>')
                  .fontSize(20)
                  .fontColor('#999999')
              }
              .width('100%')
              .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            }
            .backgroundColor('#FFFFFF')
            .margin({ bottom: 10 })

            // 设置区域
            Row() {
              Image($r('app.media.sz'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('设置')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding(20)
            .backgroundColor('#FFFFFF')

            //退出
            Row() {
              Image($r('app.media.sz'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('退出')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .onClick(()=>{
              router.pushUrl({
                url:'pages/class3/login',
              })
            })
            .width('100%')
            .padding(20)
            .backgroundColor('#FFFFFF')

          }
          .height('100%')
          .width('100%')
          .backgroundColor('#F5F5F5')
          .alignItems(HorizontalAlign.Start)
        }.tabBar('我的')
        TabContent(){
          Column() {

            // 朋友圈
            Row() {
              Image($r('app.media.wx'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('朋友圈')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了朋友圈'})
            })

            // 分割线
            Column().height(8).backgroundColor('#F5F5F5')

            // 视频号
            Row() {
              Image($r('app.media.sph'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('视频号')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了扫一扫'})
            })

            Divider().height(1).color('#F5F5F5').margin({ left: 20 })

            // 直播
            Row() {
              Image($r('app.media.zb'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('直播')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了摇一摇'})
            })

            // 分割线
            Column().height(8).backgroundColor('#F5F5F5')            // 扫一扫
            Row() {
              Image($r('app.media.sys1'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('扫一扫')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了扫一扫'})
            })

            Divider().height(1).color('#F5F5F5').margin({ left: 20 })

            // 摇一摇
            Row() {
              Image($r('app.media.yyy'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('摇一摇')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了摇一摇'})
            })

            // 分割线
            Column().height(8).backgroundColor('#F5F5F5')

            // 看一看
            Row() {
              Image($r('app.media.kyk'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('看一看')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了看一看'})
            })

            Divider().height(1).color('#F5F5F5').margin({ left: 20 })

            // 搜一搜
            Row() {
              Image($r('app.media.sys'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('搜一搜')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了搜一搜'})
            })

            // 分割线
            Column().height(8).backgroundColor('#F5F5F5')

            // 附近的人
            Row() {
              Image($r('app.media.QQ'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('附近的人')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了附近的人'})
            })

            // 分割线
            Column().height(8).backgroundColor('#F5F5F5')

            // 购物
            Row() {
              Image($r('app.media.gw'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('购物')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了购物'})
            })

            Divider().height(1).color('#F5F5F5').margin({ left: 20 })

            // 游戏
            Row() {
              Image($r('app.media.yx'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('游戏')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了游戏'})
            })

            // 分割线
            Column().height(8).backgroundColor('#F5F5F5')

            // 小程序
            Row() {
              Image($r('app.media.xcx'))
                .width(24)
                .height(24)
                .margin({ right: 15 })
              Text('小程序')
                .fontSize(16)
                .layoutWeight(1)
              Text('>')
                .fontSize(20)
                .fontColor('#999999')
            }
            .width('100%')
            .padding({ left: 20, right: 20, top: 15, bottom: 15 })
            .backgroundColor('#FFFFFF')
            .onClick(() => {
              Prompt.showToast({message:'点击了小程序'})
            })

          }
          .height('100%')
          .width('100%')
          .backgroundColor('#F5F5F5')
        }.tabBar('发现')

      }.width('100%').height('100%')
      .barWidth('100%').barHeight('5%')
    }

  }

}




















