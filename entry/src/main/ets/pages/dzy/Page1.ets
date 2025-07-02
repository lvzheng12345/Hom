import http from '@ohos.net.http';
import { Prompt } from '@kit.ArkUI';
import axios from '@ohos/axios';
import {AxiosResponse} from '@ohos/axios';
@Entry
@Component
struct Page1 {
  @State message: string = 'Hello World';
kurl:string= 'http://127.0.0.1:8085/api/users'
  //'http://101.35.2.25/api/dingzhi/10005359001.php?id=10005710&key=3f7b70ec3cd258870ee0c26406c39fbc&url=https://baijiahao.baidu.com/s?id=1827926431094281488&ck='
  //'https://cn.apihz.cn/api/dingzhi/10005359001.php?id=10005672&key=341014a318853eaa8ab2437743b2ef29&type=1&limit=50&px=1&pubtime=30'
  // 'https://api.example.com/data'
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