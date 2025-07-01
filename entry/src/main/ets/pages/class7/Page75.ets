import { PreferenceUtil } from "../../entryability/preUtil";

@Entry
@Component
export struct Page75 {
  @State message: string = ' ';
  @State savedData: string = '无';  // 添加缺失的状态变量

  async aboutToAppear(): Promise<void> {
    const ff = await PreferenceUtil.getInstance().get('userMessage', '暂无数据') as string;
    this.savedData = ff;
  }


  build() {

    Column() {
      // 个人信息区
      Row() {
        Row() {
          Text(this.savedData)
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
          Text(this.savedData)
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

        }
        .margin({ top: 20 })
      }
      .flexGrow(1)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')


  }


}