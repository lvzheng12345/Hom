@Entry
@Component
struct Page6 {
  @State batteryLevel: number = 84;
  @State range: number = 363;
  @State temperature: number = 19;
  @State isCharging: boolean = false;
  @State isLocked: boolean = true;

  build() {
    Column() {
      // 车辆图片和NFC
      this.VehicleImage()
      // 控制按钮
      this.ControlButtons()
      // 空调和地图
      Row() {
        this.AirConditioner()
        this.MapNavigation()
      }
      .width('100%')
      .margin({ bottom: 12 })
      // 功能模块
      this.FunctionModules()
      // 占位扩展
      Blank().layoutWeight(1)
      // 底部导航栏
      this.BottomNavigation()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F7FA')
  }

  @Builder VehicleImage() {
    Column() {
      // 车辆图片
      Row(){
        Text('363KM')

      }
      Column() {
        Image($r('app.media.car'))
          .width('100%')
          .height('100%')
          .backgroundColor('#E0E0E0')
      }
      .width('100%')
      .height('40%')
      .margin({ top: 0, bottom: 0 })
    }
    .width('100%')
  }

  @Builder ControlButtons() {
    Row() {
      this.ControlButton('车门解锁', '🔓')
      this.ControlButton('车门上锁', '🔒')
      this.ControlButton('一键熄火', '⏹')
      this.ControlButton('开启备箱', '⏏')
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceEvenly)
    .padding({ left: 12, right: 12 })
    .margin({ bottom: 12 })
  }

  @Builder ControlButton(text: string, icon: string) {
    Column() {
      // 用圆角背景模拟圆形按钮
      Column() {
        Text(icon)
          .fontSize(28)
          .fontColor('#1976D2')
          .margin({ top: 12, bottom: 12 })
      }
      .width(56)
      .height(56)
      .backgroundColor('#fff')
      .borderRadius(28)
      .margin({ bottom: 4 })
      Text(text)
        .fontSize(12)
        .fontColor('#333')
    }
    .alignItems(HorizontalAlign.Center)
    .onClick(() => {})
  }

  @Builder AirConditioner() {
    Column() {
      Row() {
        Button('-')
          .width(32)
          .height(32)
          .backgroundColor('#F0F0F0')
          .fontColor('#333')
          .fontSize(20)
          .onClick(() => {
            if (this.temperature > 16) this.temperature--
          })
        Text(`${this.temperature}°`)
          .fontSize(22)
          .fontWeight(FontWeight.Bold)
          .fontColor('#222')
          .margin({ left: 10, right: 10 })
        Button('+')
          .width(32)
          .height(32)
          .backgroundColor('#F0F0F0')
          .fontColor('#333')
          .fontSize(20)
          .onClick(() => {
            if (this.temperature < 30) this.temperature++
          })
        Blank()
        Button('❄️')
          .width(32)
          .height(32)
          .backgroundColor('#F0F0F0')
          .fontColor('#1976D2')
          .fontSize(18)
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)
    }
    .width('48%')
    .padding(12)
    .backgroundColor('#fff')
    .borderRadius(12)
    .margin({ left: 12, right: 6 })
  }

  @Builder MapNavigation() {
    Column() {
      // 地图区域
      Row() {
        Image($r('app.media.background'))
      }.width('80%')
      .height(60)
      .backgroundColor('#E8F5E8')
      .borderRadius(8)
      .justifyContent(FlexAlign.Center)
      Row(){
        Text('江西省图书馆')
          .fontSize(13)
          .fontColor('#222')
          .margin({ bottom: 2 })
      }
    }
    .width('48%')
    .padding(12)
    .backgroundColor('#fff')
    .borderRadius(12)
    .margin({ left: 6, right: 12 })
  }

  @Builder FunctionModules() {
    // 田字格布局：两行两列
    Column() {
      Row() {
        Row(){
          this.FunctionModule('充电服务', '⚡', '#4CAF50')
        }.backgroundColor('#ffd2cfcf')
        .width('40%')

        Row(){
          this.FunctionModule('车辆状态', '🚗', '#2196F3')
        }.width('40%').backgroundColor('#ffd2cfcf')

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .margin({ bottom: 8 })
      Row() {

        Row() {
          this.FunctionModule('小组件', '🔧', '#FF9800')
        }.width('40%').backgroundColor('#ffd2cfcf')
        Row() {
        this.FunctionModule('长按快捷操作', '⏩', '#9C27B0')
      }.width('40%').backgroundColor('#ffd2cfcf')
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .width('100%')
    .margin({bottom: 8 })
  }

  @Builder FunctionModule(title: string, icon: string, color: string) {
    Column() {
      // 用圆角背景模拟圆形
      Column() {
        Text(icon)
          .fontSize(20)
          .fontColor('#fff')
          .margin({ top: 8, bottom: 8 })
      }
      .width(40)
      .height(40)
      .backgroundColor(color)
      .borderRadius(20)
      .margin({ bottom: 6 })
      Text(title)
        .fontSize(11)
        .fontColor('#333')
        .textAlign(TextAlign.Center)
    }
    .width(70)
    .alignItems(HorizontalAlign.Center)
  }

  @Builder BottomNavigation() {
    Row() {
      this.NavItem('社区', false)
      this.NavItem('商城', false)
      // 王朝突出
      Column() {
        Column() {
          Text('王朝')
            .fontSize(16)
            .fontColor('#fff')
            .fontWeight(FontWeight.Bold)
            .margin({ top: 18, bottom: 18 })
        }
        .width(60)
        .height(60)
        .backgroundColor('#1976D2')
        .borderRadius(30)
      }
      .margin({ left: 4, right: 4 })
      this.NavItem('服务', false)
      this.NavItem('我的', false)
    }
    .width('100%')
    .height(80)
    .backgroundColor('#fff')
    .justifyContent(FlexAlign.SpaceEvenly)
    .border({ width: { top: 1 }, color: '#E0E0E0' })
  }

  @Builder NavItem(text: string, isSelected: boolean) {
    Column() {
      // 用圆角背景模拟圆形
      Column() {
        // 空内容，仅做圆形背景
      }
      .width(24)
      .height(24)
      .backgroundColor(isSelected ? '#1976D2' : '#CCCCCC')
      .borderRadius(12)
      .margin({ bottom: 4 })
      Text(text)
        .fontSize(12)
        .fontColor(isSelected ? '#1976D2' : '#666666')
    }
    .alignItems(HorizontalAlign.Center)
  }
}