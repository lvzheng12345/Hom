import { AxiosResponse } from '@ohos/axios';
import { Prompt, router } from '@kit.ArkUI';
import { HttpUtils, LoginData } from '../../entryability/HttpUtils';

@Entry
@Component
struct Register {
  @State username: string = '';
  @State password: string = '';
  @State isLoading: boolean = false;

  // 注册方法
  private async login() {
    if (!this.username || !this.password) {
      Prompt.showToast({ message: '请输入用户名和密码' });
      return;
    }
    this.isLoading = true;

    const registerData: LoginData = {
      username: this.username,
      password: this.password
    };

    try {
      const response: AxiosResponse = await HttpUtils.register(registerData);

      console.log('注册响应:', JSON.stringify(response.data));

      if (response.status === 200) {
        Prompt.showToast({ message: '注册成功' });
        router.replaceUrl({
          url:'pages/dzy/Welcome'
        });
        console.log('用户信息:', JSON.stringify(response.data));
      }
    } catch (error) {
      console.error('注册失败:', error);
      Prompt.showToast({ message: '注册失败，请检查用户名和密码' });
    } finally {
      this.isLoading = false;
    }
  }


  build() {
    Column() {
      // 标题
      Text('用户注册')
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 40 })
        .fontColor('#333333')

      // 用户名输入框
      Column() {
        Text('用户名')
          .fontSize(16)
          .fontColor('#666666')
          .alignSelf(ItemAlign.Start)
          .margin({ bottom: 8 })

        TextInput({ placeholder: '请输入用户名' })
          .width('100%')
          .height(50)
          .borderRadius(8)
          .backgroundColor('#F5F5F5')
          .fontSize(16)
          .onChange((value: string) => {
            this.username = value;
          })
      }
      .width('100%')
      .margin({ bottom: 20 })

      // 密码输入框
      Column() {
        Text('密码')
          .fontSize(16)
          .fontColor('#666666')
          .alignSelf(ItemAlign.Start)
          .margin({ bottom: 8 })

        TextInput({ placeholder: '请输入密码' })
          .width('100%')
          .height(50)
          .borderRadius(8)
          .backgroundColor('#F5F5F5')
          .fontSize(16)
          .type(InputType.Password)
          .onChange((value: string) => {
            this.password = value;
          })
      }
      .width('100%')
      .margin({ bottom: 30 })

      // 登录按钮
      Button(this.isLoading ? '注册中...' : '注册')
        .width('100%')
        .height(50)
        .fontSize(18)
        .fontColor('#FFFFFF')
        .backgroundColor(this.isLoading ? '#CCCCCC' : '#007AFF')
        .borderRadius(8)
        .enabled(!this.isLoading)
        .onClick(() => {
          this.login();
        })

      // 其他操作
      Row() {
        Text('已有账号')
          .fontSize(14)
          .fontColor('#007AFF')
          .onClick(() => {
            router.pushUrl({
              url:'pages/dzy/log'
            });
          })
      }
      .width('100%')
      .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .padding({ left: 30, right: 30, top: 100 })
    .backgroundColor('#FFFFFF')
    .justifyContent(FlexAlign.Start)
  }
}