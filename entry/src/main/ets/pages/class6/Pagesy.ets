import { router } from '@kit.ArkUI'
import { preferences } from '@kit.ArkData'
import { common } from '@kit.AbilityKit'

interface MyData {
  a: string
  b: string
}

@Entry
@Component
struct Pagesy {
  @State mmm: MyData = {
    a: '哈哈哈',
    b: ''
  }
  @State mmk:string=''
  private pr:preferences.Preferences |null=null;
  private c:common.UIAbilityContext=getContext(this) as common.UIAbilityContext;

  async aboutToAppear(){
    this.pr=await preferences.getPreferences(this.c,'name')
  }

  async skk(){
    await this.pr?.put( 'use','小猪s');//此时数据本身还没有到文件中
    await this.pr?.flush();// 数据持久化--也就是内容写入到myname文件中--本质是io输入输出console.log( '1111111');
  }

  async gkk(){
    this.mmk = await this.pr?.get('use','你好') as string;
    this.mmm.a = this.mmk;
  }


  build() {
  Column(){
    Row(){
      Text('hhjf').fontSize(30)
        .onClick(()=>{
          this.skk();
        })
    }
    Row(){
      Text(this.mmm.a).fontSize(30)
        .onClick(()=>{
          this.gkk();  // 读取数据
        })
    }
  }.width('100%')
    .height('80%')

  }
}