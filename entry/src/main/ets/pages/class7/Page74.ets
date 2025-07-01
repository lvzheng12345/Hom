import { PreferenceUtil } from "../../entryability/preUtil";
import { common } from "@kit.AbilityKit";

@Entry
@Component
export struct Page74 {
  @State savedData: string = '';  // 添加缺失的状态变量

  private prefUtil = PreferenceUtil.getInstance();
  private context: common.UIAbilityContext = getContext(this) as common.UIAbilityContext;

  async aboutToAppear() {
    // 初始化工具类
    await this.prefUtil.init(this.context, 'page72Data');
    // 读取保存的数据
    await this.loadData();
  }

  build() {
    Column() {
      Text('Page74')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 20 })

      Text(`保存的数据: ${this.savedData}`)
        .fontSize(16)
        .padding(20)
        .backgroundColor('#f5f5f5')
        .borderRadius(8)
        .width('80%')

      Button('读取数据')
        .onClick(() => {
          this.loadData();
        })
        .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }

  // loadData 方法应该在 build() 方法外部
  async loadData(): Promise<void> {
    try {
      const message = await this.prefUtil.get('userMessage', '暂无数据') as string;

      this.savedData = `${message}`;
      console.log('数据读取成功:', this.savedData);
    } catch (error) {
      console.error('读取数据失败:', error);
      this.savedData = '读取失败';
    }
  }

}