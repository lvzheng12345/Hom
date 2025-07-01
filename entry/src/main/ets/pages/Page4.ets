@Entry
@Component
struct Page4 {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Row(){
        Text('星期二')
          .textAlign(TextAlign.Center)
          .width('80%')
          .margin({left:'10%'})
          .fontSize(30)
          .borderWidth({
            top:2,
            left:2,
            right:2,
            bottom:2
          })
      }
//下面
      Row() {
        Row() {
          //左
          Row() {
            Column() {
              Row() {
                Text('你决定就好')
              }

              Row() {
                Text('你决定就好')
              }

              Row() {
                Text('你决定就好')
              }

            }

          }

        }
        .width('40%')
        .height('80%')
        .borderWidth({
          top: 2,
          left: 2,
          right: 2,
          bottom: 2
        })

        //右边
        Column() {
          Row() {
            Text('你决定就好')
          }.borderWidth({
            top: 2,
            left: 2,
            right: 2,
            bottom: 2
          })
          .margin({top:'15%',bottom:'20%',left:'10%'})

          Row() {
            Text('你决定就好')
          }.borderWidth({
            top: 2,
            left: 2,
            right: 2,
            bottom: 2
          }) .margin({top:'15%',bottom:'20%',left:'10%'})

          Row() {
            Text('你决定就好')
          }.borderWidth({
            top: 2,
            left: 2,
            right: 2,
            bottom: 2
          }) .margin({top:'15%',bottom:'20%',left:'10%'})

        }
      }
      .margin({ left: 0,top:'15%' })
    }
  }
}