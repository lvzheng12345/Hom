import { router } from "@kit.ArkUI"

interface MyData {
  a: string
  b: string
}

@Entry
@Component
struct Dd1 {
  @State mmm: MyData = {
    a: '',
    b: ''
  }
  aboutToAppear() {
    // 获取路由传递的参数
    const params = router.getParams() as Record<string, string>
    if (params) {
      this.mmm = {
        a: params['a'] || '',
        b: params['b'] || ''
      }
    }
  }


  build() {
    Tabs({ barPosition: BarPosition.End }) {
      // 消息页面
      TabContent() {
        Column() {
          // 顶部标题栏
          Row() {
            Row() {
              Text(this.mmm.a)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor('#fff')
            }
            .width(60)
            .height(60)
            .backgroundColor('#007AFF')
            .borderRadius(8)
            .justifyContent(FlexAlign.Center)
            .alignItems(VerticalAlign.Center)

            Text('南昌大学软•••')
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
              .flexGrow(1)
              .margin({ left: 10 })

            Row() {
              Text('🔍')
                .fontSize(20)
              Text('📞')
                .fontSize(20)
                .margin({ left: 15 })
              Text('+')
                .fontSize(24)
                .margin({ left: 15 })
            }
          }
          .width('100%')
          .height(60)
          .padding({ left: 15, right: 15 })
          .backgroundColor('#fff')
          .justifyContent(FlexAlign.SpaceBetween)
          .alignItems(VerticalAlign.Center)

          // 搜索框
          Row() {
            Text('🔍 搜索')
              .fontSize(16)
              .fontColor('#999')
          }
          .width('95%')
          .height(40)
          .backgroundColor('#f0f0f0')
          .borderRadius(20)
          .margin({ top: 10, bottom: 10 })
          .justifyContent(FlexAlign.Start)
          .alignItems(VerticalAlign.Center)
          .padding({ left: 15 })

          // 功能标签栏
          Row() {
            Text('日历').fontSize(14).fontColor('#666')
            Text('待办').fontSize(14).fontColor('#666')
            Text('DING').fontSize(14).fontColor('#666')
            Row() {
              Text('文档')
                .fontSize(14)
                .fontColor('#666')
              Text('1')
                .fontSize(12)
                .fontColor('#fff')
                .backgroundColor('#ff4444')
                .borderRadius(8)
                .width(16)
                .height(16)
                .textAlign(TextAlign.Center)
                .margin({ left: 5 })
            }
            Text('更多 ▼').fontSize(14).fontColor('#666')
          }
          .width('100%')
          .height(40)
          .justifyContent(FlexAlign.SpaceEvenly)
          .alignItems(VerticalAlign.Center)

          // 消息列表
          Scroll() {
            Column() {
              // 全部标签
              Row() {
                Text('全部')
                  .fontSize(14)
                  .fontColor('#007AFF')
                  .backgroundColor('#e6f3ff')
                  .padding({ left: 12, right: 12, top: 6, bottom: 6 })
                  .borderRadius(15)
                Text('南昌大学软件•••').fontSize(14).fontColor('#666')
                Text('未读').fontSize(14).fontColor('#666')
                Text('@我').fontSize(14).fontColor('#666')
                Text('≡').fontSize(16).fontColor('#666')
              }
              .width('100%')
              .height(40)
              .justifyContent(FlexAlign.SpaceEvenly)
              .alignItems(VerticalAlign.Center)

              // 消息项
              MessageItem({ avatar: 'app.media.background', title: '软工2201-2205、软工2211、•••', content: '詹豆：各位同学帮忙投format，🔗', time: '昨天' })
              MessageItem({ avatar: 'app.media.background', title: '钉钉云盘', content: '詹豆在"软工2201-2205、软工2211、卓越"上•••', time: '昨天' })
              MessageItem({ avatar: 'app.media.background', title: '南昌实训—软通2班', content: '王江的直播：6666 已结束。回放已保存•••', time: '6月27日' })
              MessageItem({ avatar: 'app.media.background', title: '软件工程2202班', content: '欢迎田军迪加入本部门的群聊', time: '6月25日', hasTag: true })
              MessageItem({ avatar: 'app.media.background', title: '直播助手', content: '你有新的群直播回放"666"', time: '6月24日' })
              MessageItem({ avatar: 'app.media.background', title: 'AI助理', content: '你好，我是你的AI助理。我汇集了钉钉各项•••', time: '6月23日' })
              MessageItem({ avatar: 'app.media.background', title: '张红玲', content: 'Hi，我通过你的好友请求了😊', time: '6月23日' })
              MessageItem({ avatar: 'app.media.background', title: '钉钉应用中心', content: '2025钉钉AI生态创新大会震撼启幕🔥', time: '3月20日' })
            }
          }
          .flexGrow(1)

        }
        .width('100%')
        .height('100%')
        .backgroundColor('#f5f5f5')
      }
      .tabBar(this.createTabItem('💬', '消息', true))

      // 通讯录页面
      TabContent() {
        Column() {
          // 顶部标题
          Row() {
            Text('南昌大学软件学院•••')
              .fontSize(18)
              .fontWeight(FontWeight.Bold)
            Text('👤')
              .fontSize(20)
          }
          .width('100%')
          .height(60)
          .justifyContent(FlexAlign.SpaceBetween)
          .alignItems(VerticalAlign.Center)
          .padding({ left: 15, right: 15 })
          .backgroundColor('#fff')

          Scroll() {
            Column() {
              // 功能区块
              Column() {
                ContactItem({ icon: '👤', title: '我的好友', hasArrow: true })
                ContactItem({ icon: '🔗', title: '好友推荐', hasArrow: true })
                ContactItem({ icon: '👁️', title: '同事动态', hasArrow: true })
              }
              .backgroundColor('#fff')
              .borderRadius(8)
              .margin({ top: 10, bottom: 10 })

              // 企业内部分
              Text('企业内')
                .fontSize(14)
                .fontColor('#666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 15, bottom: 10 })

              Column() {
                Row() {
                  Row() {
                    Text('👥')
                      .fontSize(20)
                  }
                  .width(40)
                  .height(40)
                  .backgroundColor('#007AFF')
                  .borderRadius(8)
                  .justifyContent(FlexAlign.Center)

                  Column() {
                    Text('南昌大学软件学院本科生')
                      .fontSize(16)
                      .fontWeight(FontWeight.Bold)
                    Text('🔒 未认证  标准版')
                      .fontSize(12)
                      .fontColor('#666')
                      .margin({ top: 2 })
                  }
                  .alignItems(HorizontalAlign.Start)
                  .margin({ left: 10 })
                  .flexGrow(1)

                  Text('邀请')
                    .fontSize(14)
                    .fontColor('#007AFF')
                    .border({ width: 1, color: '#007AFF' })
                    .borderRadius(4)
                    .padding({ left: 8, right: 8, top: 4, bottom: 4 })
                }
                .width('100%')
                .padding(15)

                Text('组织架构')
                  .fontSize(16)
                  .fontColor('#333')
                  .alignSelf(ItemAlign.Start)
                  .margin({ left: 15, top: 10, bottom: 5 })

                Text('2022级学生-詹•••件工程2202班')
                  .fontSize(14)
                  .fontColor('#666')
                  .alignSelf(ItemAlign.Start)
                  .margin({ left: 15, bottom: 5 })

                Text('AI助理')
                  .fontSize(14)
                  .fontColor('#666')
                  .alignSelf(ItemAlign.Start)
                  .margin({ left: 15, bottom: 15 })
              }
              .backgroundColor('#fff')
              .borderRadius(8)

              // 企业间
              Text('企业间')
                .fontSize(14)
                .fontColor('#666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 15, top: 20, bottom: 10 })

              ContactItem({ icon: '📊', title: '上下游', hasArrow: true })

              Text('企业服务')
                .fontSize(14)
                .fontColor('#666')
                .alignSelf(ItemAlign.Start)
                .margin({ left: 15, top: 20, bottom: 10 })
            }
            .padding({ left: 10, right: 10 })
          }
          .flexGrow(1)
        }
        .width('100%')
        .height('100%')
        .backgroundColor('#f5f5f5')
      }
      .tabBar(this.createTabItem('📂', '通讯录', false))

      // 我的页面
      TabContent() {
        Column() {
          // 个人信息区
          Row() {
            Row() {
              Text(this.mmm.a)
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor('#fff')
            }
            .width(80)
            .height(80)
            .backgroundColor('#007AFF')
            .borderRadius(8)
            .justifyContent(FlexAlign.Center)

            Column() {
              Text('随便')
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
              Text('南昌大学软件学院本科生 >')
                .fontSize(14)
                .fontColor('#666')
                .margin({ top: 5 })
              Text('🔒 未认证  标准版')
                .fontSize(12)
                .fontColor('#666')
                .margin({ top: 5 })
            }
            .alignItems(HorizontalAlign.Start)
            .margin({ left: 15 })
            .flexGrow(1)

            Row() {
              Text('📱')
                .fontSize(20)
              Text('✏️')
                .fontSize(20)
                .margin({ left: 10 })
            }
          }
          .width('100%')
          .padding(20)
          .backgroundColor('#fff')

          // 状态和名片
          Row() {
            Text('+ 状态...')
              .fontSize(16)
              .fontColor('#666')
            Text('📇 名片')
              .fontSize(16)
              .fontColor('#666')
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .padding({ left: 20, right: 20, top: 10, bottom: 10 })
          .backgroundColor('#fff')

          // 资料完成度提示
          Row() {
            Column() {
              Text('资料完成度 20%')
                .fontSize(16)
                .fontWeight(FontWeight.Bold)
              Text('添加工作经历，发现更多人脉机遇')
                .fontSize(14)
                .fontColor('#666')
                .margin({ top: 5 })
            }
            .alignItems(HorizontalAlign.Start)
            .flexGrow(1)

            Text('去完善')
              .fontSize(14)
              .fontColor('#007AFF')

            Text('✕')
              .fontSize(16)
              .fontColor('#666')
              .margin({ left: 10 })
          }
          .width('100%')
          .padding(15)
          .backgroundColor('#e6f3ff')
          .margin({ top: 10 })

          Scroll() {
            Column() {
              ProfileItem({ icon: '🎁', title: '权益', detail: '16积分待领取', hasArrow: true })
              ProfileItem({ icon: '📱', title: '钉钉个人版', hasArrow: true })
              ProfileItem({ icon: '👁️', title: '动态', hasArrow: true })
              ProfileItem({ icon: '💰', title: '钱包', hasArrow: true })
              ProfileItem({ icon: '📁', title: '收藏', hasArrow: true })
            }
            .margin({ top: 20 })
          }
          .flexGrow(1)
        }
        .width('100%')
        .height('100%')
        .backgroundColor('#f5f5f5')
      }
      .tabBar(this.createTabItem('👤', '我的', false))
    }
  }


  @Builder createTabItem(icon: string, text: string, hasNotification: boolean) {
    Column() {
      Row() {
        Text(icon).fontSize(24)
        if (hasNotification) {
          Text('1')
            .fontSize(10)
            .fontColor('#fff')
            .backgroundColor('#ff4444')
            .borderRadius(6)
            .width(12)
            .height(12)
            .textAlign(TextAlign.Center)
            .position({ x: 15, y: -5 })
        }
      }
      Text(text).fontSize(12).margin({ top: 2 })
    }
  }

}

@Component
export  struct MessageItem {
  @Prop avatar: string
  @Prop title: string
  @Prop content: string
  @Prop time: string
  @Prop hasTag?: boolean

  build() {
    Row() {
      Image($r(this.avatar))
        .width(50)
        .height(50)
        .borderRadius(8)

      Column() {
        Row() {
          Text(this.title)
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
            .maxLines(1)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          if (this.hasTag) {
            Text('内部').fontSize(10).fontColor('#007AFF').border({ width: 1, color: '#007AFF' }).borderRadius(2).padding({ left: 4, right: 4 })
            Text('部门').fontSize(10).fontColor('#007AFF').border({ width: 1, color: '#007AFF' }).borderRadius(2).padding({ left: 4, right: 4 }).margin({ left: 5 })
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Text(this.content)
          .fontSize(14)
          .fontColor('#666')
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .margin({ top: 5 })
      }
      .alignItems(HorizontalAlign.Start)
      .margin({ left: 10 })
      .flexGrow(1)

      Text(this.time)
        .fontSize(12)
        .fontColor('#999')
    }
    .width('100%')
    .padding({ left: 15, right: 15, top: 10, bottom: 10 })
    .backgroundColor('#fff')
    .alignItems(VerticalAlign.Top)
  }
}

@Component
struct ContactItem {
  @Prop icon: string
  @Prop title: string
  @Prop hasArrow?: boolean

  build() {
    Row() {
      Text(this.icon)
        .fontSize(20)
        .width(40)
        .height(40)
        .textAlign(TextAlign.Center)
        .backgroundColor('#f0f0f0')
        .borderRadius(8)

      Text(this.title)
        .fontSize(16)
        .margin({ left: 15 })
        .flexGrow(1)

      if (this.hasArrow) {
        Text('>')
          .fontSize(16)
          .fontColor('#ccc')
      }
    }
    .width('100%')
    .height(60)
    .padding({ left: 15, right: 15 })
    .backgroundColor('#fff')
    .alignItems(VerticalAlign.Center)
  }
}

@Component
struct ProfileItem {
  @Prop icon: string
  @Prop title: string
  @Prop detail?: string
  @Prop hasArrow?: boolean

  build() {
    Row() {
      Text(this.icon)
        .fontSize(20)
        .width(40)
        .height(40)
        .textAlign(TextAlign.Center)
        .backgroundColor('#f0f0f0')
        .borderRadius(8)

      Text(this.title)
        .fontSize(16)
        .margin({ left: 15 })
        .flexGrow(1)

      if (this.detail) {
        Text(this.detail)
          .fontSize(14)
          .fontColor('#666')
      }

      if (this.hasArrow) {
        Text('>')
          .fontSize(16)
          .fontColor('#ccc')
          .margin({ left: 10 })
      }
    }
    .width('100%')
    .height(60)
    .padding({ left: 15, right: 15 })
    .backgroundColor('#fff')
    .alignItems(VerticalAlign.Center)
    .margin({ bottom: 1 })
  }
}