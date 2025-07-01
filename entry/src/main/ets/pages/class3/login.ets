import Prompt from '@system.prompt';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct login {
  @State message: string = 'Hello World';
  @State selectedGender: string = '';
  @State c:number=0;
  @State x:string='';
  @State y:number=0;
  @State b:number=0;
  @State readingChecked: boolean = false;
  @State musicChecked: boolean = false;
  @State sportsChecked: boolean = false;
  @State travelChecked: boolean = false;

  build() {

    //单选框
    Row() {
      Column(){
        Text('注册').width('100%').fontSize(30).textAlign(TextAlign.Center).margin('15%')
        Row(){
          TextInput({placeholder:'用户名'}).width('90%').height('10%').borderRadius(0)
            .onChange(value=>this.x=value).borderWidth(1).borderColor(Color.Black)
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
              .enabled(this.x !== '')  // 添加启用条件
              .onChange((isChecked: boolean) => {
                if (isChecked) {
                  this.selectedGender = 'male'
                }
              })
            Text('男').fontSize(14).margin({left: 5, right: 20})
              .fontColor(this.x === '' ? Color.Gray : Color.Black)  // 禁用时变灰

            Radio({ value: 'female', group: 'gender' })
              .checked(this.selectedGender === 'female')
              .enabled(this.x !== '')  // 添加启用条件
              .onChange((isChecked: boolean) => {
                if (isChecked) {
                  this.selectedGender = 'female'
                }
              })
            Text('女').fontSize(14).margin({left: 5})
              .fontColor(this.x =='' ? Color.Gray : Color.Black)  // 禁用时变灰
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
                url:'pages/class3/In',
                params: {
                  username: this.x,
                }
              }).catch((error: Error) => {
                console.error('跳转失败:', error.message)
              })
            }
          }
          )

      }

    }

  }

}