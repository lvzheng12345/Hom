@Entry
@Component
struct Introduction {
  @State message: string[] =['11','22','33','44','55'];

  build() {
    Column(){
      Swiper(){
        ForEach(this.message,(item:string)=>{
          Text(item).backgroundColor(Color.Blue)
        })

      }
      .width('100%').height('100%')


    }.width('100%').height('100%')
  }
}