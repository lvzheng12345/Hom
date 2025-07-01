import { common } from "@kit.AbilityKit";
import { PreferenceUtil } from '../../entryability/preUtil';

@Entry
@Component
export struct Page72 {
  @State message: string = '';
  @State savedData: string = '';

  // 使用工具类
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


      // 输入框
      TextInput({ placeholder: '请输入要保存的数据' })
        .width('80%')
        .height(40)
        .onChange((value: string) => {
          this.message = value;
        })
        .margin({ bottom: 20 })

      // 操作按钮
      Row() {
        Button('保存数据')
          .backgroundColor('#4CAF50')
          .onClick(() => {
            this.saveData();
          })
          .margin({ right: 10 })

        Button('读取数据')
          .backgroundColor('#2196F3')
          .onClick(() => {
            this.loadData();
          })
          .margin({ right: 10 })
      }
      .margin({ bottom: 20 })


      // 显示保存的数据
      Text(`保存的数据: ${this.savedData}`)
        .fontSize(16)
        .fontColor('#666')
        .padding(20)
        .backgroundColor('#f5f5f5')
        .borderRadius(8)
        .width('80%')

      // 操作结果提示
      Text(`当前输入: ${this.message}`)
        .fontSize(14)
        .fontColor('#999')
        .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
  }

  // 使用工具类保存数据
  async saveData() {
    try {
      await this.prefUtil.put('userMessage', this.message);
      console.log('数据保存成功:', this.message);

      // 保存后立即读取显示
      await this.loadData();
    } catch (error) {
      console.error('保存数据失败:', error);
    }
  }

  // 使用工具类读取数据
  async loadData() {
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