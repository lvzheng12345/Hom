import { router } from '@kit.ArkUI'

@Entry
@Component
struct F {
  build() {

    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        Column() {
          // 顶部绿色区域 - 步数显示
          Column() {
            // 圆形进度区域
            Row() {
              Image($rawfile('UI练习1--图+图标/项目图标/Team5.png')).width('10%').margin({left:'5%'})
              Image($rawfile('UI练习1--图+图标/项目图标/Team4.png')).width('10%').margin({left:'70%'})
          }.width('100%').height('15%')
            Column() {
              Text('17237')
                .fontSize(32)
                .fontWeight(FontWeight.Bold)
                .fontColor('#fff')
              Text('今日步数')
                .fontSize(14)
                .fontColor('#fff')
                .margin({ top: 5 })
              Text('目标步数：5000')
                .fontSize(12)
                .fontColor('#fff')
                .margin({ top: 5 })
            }
            .width(200)
            .height(200)
            .borderRadius(100)
            .backgroundColor('rgba(255,255,255,0.2)')
            .justifyContent(FlexAlign.Center)
            .alignItems(HorizontalAlign.Center)
          }
          .width('100%')
          .height('40%')
          .backgroundColor('#4CAF50')
          .justifyContent(FlexAlign.Center)
          .alignItems(HorizontalAlign.Center)

          // 统计数据区域
          Row() {
            Column() {
              Image($rawfile('UI练习1--图+图标/项目图标/Team1.png')).width(30).height(30)
              Text('10.32')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .margin({ top: 5 })
              Text('距离')
                .fontSize(12)
                .fontColor('#666')
            }
            .width('33%')
            .alignItems(HorizontalAlign.Center)

            Column() {
              Image($rawfile('UI练习1--图+图标/项目图标/Team2.png')).width(30).height(30)
              Text('311')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .margin({ top: 5 })
              Text('消耗')
                .fontSize(12)
                .fontColor('#666')
            }
            .width('33%')
            .alignItems(HorizontalAlign.Center)

            Column() {
              Image($rawfile('UI练习1--图+图标/项目图标/Team3.png')).width(30).height(30)
              Text('已完成')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .margin({ top: 5 })
              Text('目标')
                .fontSize(12)
                .fontColor('#666')
            }
            .width('33%')
            .alignItems(HorizontalAlign.Center)
          }
          .width('90%')
          .height('20%')
          .backgroundColor('#fff')
          .margin({top:'3%'})
          .justifyContent(FlexAlign.SpaceEvenly)
          .alignItems(VerticalAlign.Center)

          // 健康指标详情
          Column() {
        Row(){
            Text('我的健康详情\nvbnnbbbv')
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
              .margin({ bottom: 10 })

            Text('97分 >')
              .fontSize(14)
              .fontColor('#ff0c0c0c')
              .margin({left:'45%'})
          }

          }
          .width('90%')
          .backgroundColor('#fff')
          .padding(15)
          .borderRadius(8)
          .alignItems(HorizontalAlign.Start)
          .margin({ top: 10 })

          // 心率区域
          Column() {
            Row() {
              Image($rawfile('UI练习1--图+图标/项目图标/Team2.png')).width(20).height(20)
              Text('心率')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
                .margin({ left: 10 })

              Text('最低值：000BPM')
                .fontSize(12)
                .fontColor('#55504f51')
                .fontWeight(FontWeight.Bold)
                .margin({ left: 10 })

              Text('最高值：000BPM')
                .fontSize(12)
                .fontColor('#55504f51')
                .fontWeight(FontWeight.Bold)
                .margin({ left: 10 })


            }
            .width('100%')
            .height('30%')
            .margin({ top: '5%' })
            .alignItems(VerticalAlign.Center)

            Row()
            {
            Text('0 BPM')
              .fontSize(20)
              .fontColor('#666')
              .margin({ top: '5%' })
              Text('_________________________')
                .fontSize(12)
                .fontColor('#55504f51')
                .fontWeight(FontWeight.Bold)
                .margin({ left: '10%' })
          }
          }
          .width('90%')
          .height('20%')
          .backgroundColor('#fff')
          .padding(15)
          .borderRadius(8)
          .alignItems(HorizontalAlign.Start)
          .margin({ top: 10 })

          // 占位区域
          Column() {}
          .flexGrow(1)

        }
        .width('100%')
        .height('100%')
        .backgroundColor('#f5f5f5')
      }
      .tabBar('首页')

      TabContent() {

          Column() {
            //1
            Row() {
              Image($rawfile('UI练习1--图+图标/项目图标/ic_device_watch_fit.png')).width('10%').height('30%')
                .margin({left:'10%'})
              Text('Apple Watch s9\n设备版本V21208').margin({ left: '20%' })
            }.height('25%').width('100%').backgroundColor('#ff6bd74e')

            //2
            Row() {
              Row() {
                Row() {
                  Column() {
                    Image($rawfile('UI练习1--图+图标/项目图标/ic_device_watch_fit_filled.png')).width(40).height(40)
                    Text('拍照音量')
                  }
                }.width('30%').justifyContent(FlexAlign.Center)

                Row() {
                  Column() {
                    Image($rawfile('UI练习1--图+图标/项目图标/ic_public_clock_filled.png')).width(40).height(40)
                    Text('触屏时钟')
                  }
                }.width('30%').justifyContent(FlexAlign.Center)

                Row() {
                  Column() {
                    Image($rawfile('UI练习1--图+图标/项目图标/ic_public_car_filled.png')).width(40).height(40)
                    Text('人身辞别')
                  }
                }.width('30%').justifyContent(FlexAlign.Center)

              }.width('100%').justifyContent(FlexAlign.SpaceEvenly)
            }
            .height('15%')
            .width('90%')
            .justifyContent(FlexAlign.SpaceEvenly)
            .backgroundColor('#fff')
            .margin({ top: 10 })
            .borderRadius(5)

            //3
            Column() {
              KJ({ tup: 'UI练习1--图+图标/项目图标/sss.png', wenz: '寻找手环' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/ic_public_camera_filled.png', wenz: '遥控拍照' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/ic_public_navigation_filled.png', wenz: '应用推送' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/ic_public_contacts_group_filled.png', wenz: '常用联系人' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/ic_public_settings_filled.png', wenz: '表盘设计' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/ic_public_reset.png', wenz: '设备重置' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/ic_public_connection_filled.png', wenz: '移除设备' })
            }.width('100%').flexGrow(1)

          }.width('100%').height('100%').backgroundColor('#f5f5f5')


      }.tabBar('设置')

      TabContent() {
        Tabs(){
          TabContent() {
            Column() {
              // 顶部数据显示区域
              Column() {
                Text('0.0')
                  .fontSize(48)
                  .fontWeight(FontWeight.Bold)
                  .fontColor('#333')
                Text('健走步数')
                  .fontSize(16)
                  .fontColor('#666')
                  .margin({ top: 10 })
              }
              .height('30%')
              .width('100%')
              .backgroundImage($rawfile('UI练习1--图+图标/项目图标/hwbg.jpg'))
              .backgroundImageSize(ImageSize.Cover)
              .justifyContent(FlexAlign.Center)
              .alignItems(HorizontalAlign.Center)
              .margin({ top: '5%' })

              // 按钮区域
              Row() {
                // 左侧小圆形按钮
                Button()
                  .width(60)
                  .height(60)
                  .borderRadius(30)
                  .backgroundColor('#fff')
                  .border({ width: 2, color: '#ddd' })
                  .backgroundImage($rawfile('UI练习1--图+图标/项目图标/setting.png'))
                  .backgroundImageSize({height:'40%',width:'40%'})
                  .backgroundImagePosition({ x: 16, y: 16})

                // 右侧大圆形开始按钮
                Button('开始')
                  .width(120)
                  .height(120)
                  .borderRadius(60)
                  .backgroundColor('#4CAF50')
                  .fontColor('#fff')
                  .fontSize(18)
                  .fontWeight(FontWeight.Bold)
              }
              .height('60%')
              .width('90%')
              .borderRadius(10)
              .backgroundImage($rawfile('UI练习1--图+图标/项目图标/duanlian.jpg'))
              .backgroundImageSize(ImageSize.Cover)
              .justifyContent(FlexAlign.SpaceAround)
              .alignItems(VerticalAlign.Center)
              .margin({ top: '5%' })

            }
            .height('100%')
            .width('100%')
            .backgroundColor('#f5f5f5')
          }
          .tabBar('健走')

          TabContent(){}.tabBar('跑步')
          TabContent(){}.tabBar('骑行')
        }.height('100%').width('100%')

        }.tabBar('运动')

      TabContent() {
          Column() {
            // 用户信息区域
            Row() {
              Row() {
                Image($rawfile('UI练习1--图+图标/项目图标/touxiang.jpg'))
                  .width('25%')
                  .height('65%')
                  .borderRadius(450)

                Column() {
                Text('小组作业')
                  .fontSize(18)
                  .fontWeight(FontWeight.Bold)

                Text(':123456789')
                  .fontSize(14)
                  .fontColor('#ff0a0a0a')

              }.width('80%').height('30%')


              }
            }
            .width('100%')
            .height('25%')
            .backgroundColor('#4CAF50')
            .justifyContent(FlexAlign.Center)
            .padding(20)

            // 统计数据区域
            Row() {
              Column() {
                Image($rawfile('UI练习1--图+图标/项目图标/img.png')).width('70').height('50%')
                Text('12')
                  .fontSize(24)
                  .fontWeight(FontWeight.Bold)
                Text('Days')
                  .fontSize(12)
                  .fontColor('#666')
              }
              .width('33%')
              .alignItems(HorizontalAlign.Center)

              Column() {
                Image($rawfile('UI练习1--图+图标/项目图标/Fp2.png')).width('70').height('50%')
                Text('0.8')
                  .fontSize(24)
                  .fontWeight(FontWeight.Bold)
                Text('Km')
                  .fontSize(12)
                  .fontColor('#666')
              }
              .width('33%')
              .alignItems(HorizontalAlign.Center)

              Column() {
                Image($rawfile('UI练习1--图+图标/项目图标/Fp3.png')).width('70').height('50%')
                Text('12')
                  .fontSize(24)
                  .fontWeight(FontWeight.Bold)
                Text('Steps')
                  .fontSize(12)
                  .fontColor('#666')
              }
              .width('33%')
              .alignItems(HorizontalAlign.Center)
            }
            .width('100%')
            .height('15%')
            .backgroundColor('#fff')
            .justifyContent(FlexAlign.SpaceEvenly)
            .alignItems(VerticalAlign.Center)

            // 菜单项区域
            Column() {
              KJ({ tup: 'UI练习1--图+图标/项目图标/Fp4.png', wenz: '个人信息' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/Fp4.png', wenz: '关于我们' })
              KJ({ tup: 'UI练习1--图+图标/项目图标/Fp6.png', wenz: '意见反馈' })

            }
            .width('100%')
            .flexGrow(1)
            .alignItems(HorizontalAlign.Center)
            .padding({ top: 20 })

            // 退出登录按钮
            Row() {
              Text('退出登录')
                .fontSize(16)
                .fontColor('#333')
            }.onClick(()=>{
              router.pushUrl({
                url:'pages/class4/longin4'
              })

            }
            )
            .width('90%')
            .height(50)
            .backgroundColor('#fff')
            .justifyContent(FlexAlign.Center)
            .alignItems(VerticalAlign.Center)
            .borderRadius(25)
            .margin({ bottom: 30 })
          }
          .width('100%')
          .height('100%')
          .backgroundColor('#f5f5f5')
        }.tabBar('我的')


      }
    }
  }


@Component
struct KJ {
  @State tup:string='';
  @State wenz:string='';
  build() {

    Row() {
      Image($rawfile(this.tup))
        .width(25)
        .height(25)
        .margin({ right: 15 })
      Text(this.wenz)
        .fontSize(16)
        .flexGrow(1)
      Text('>')
        .fontSize(16)
        .fontColor('#999')
    }
    .width('90%')
    .height(50)
    .padding({ left: 15, right: 15 })
    .alignItems(VerticalAlign.Center)
    .backgroundColor('#fff')
    .margin({ top: 4 })
    .borderRadius(8)
  }
  }