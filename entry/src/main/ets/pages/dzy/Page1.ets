import http from '@ohos.net.http';
import { Prompt } from '@kit.ArkUI';
import axios from '@ohos/axios';
import {AxiosResponse} from '@ohos/axios';
@Entry
@Component
struct Page1 {
  @State message: string = 'Hello World';
kurl:string= 'http://127.0.0.1:8085/api/users'
  aboutToAppear(): void {
    let httpRequest = http.createHttp();
    httpRequest.request(this.kurl, {
      method: http.RequestMethod.GET,
      header: { 'Content-Type': 'application/json' }
    }, (err, data) => {
      if (!err) {
        console.log("Response:" + data.result);
        Prompt.showToast({message:''+data.result})
      }
    });
  }



  build() {
    RelativeContainer() {
      Text(this.message)
        .id('Page1HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center },
        })
        .onClick(() => {
          axios.get(this.kurl).then((response:AxiosResponse) => {
            this.message = JSON.stringify(response.data, null, 2);
            console.log("Axios Response:", response.data);
            for (let i=0;i<4;i++) {
              console.log("Axios Response:", JSON.stringify(response.data[i].id));
            }
            Prompt.showToast({message: '请求成功'+response.data});
          }).catch((err: Error) => {
            console.error("Axios Error:", err);
            this.message = '请求失败: ' + err.message; 
            Prompt.showToast({message: '请求失败'});
          });
        })
    }
    .height('100%')
    .width('100%')
  }
}