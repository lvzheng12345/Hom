class aa{
  a:string='';
  b:string='';
  constructor(a:string,b:string) {
    this.a=a
    this.b=b
  }
}


@Entry
@Component
struct Pagelist {
  @State message: string = 'Hello World';
private data:string[]=['111','1222','1233444']
  private mydata:aa[]=[
    new aa('111','222'),
    new aa('1551','222'),
    new aa('15551','222'),
    new aa('15851','222')
  ]

  build() {
    RelativeContainer() {
      List() {
      ForEach(this.mydata, (item:aa) => {
        ListItem() {
          Row() {
            Text(item.a).fontSize(60)
            Button(item.b)
          }
        }
      })
    }
    .height('15%')
    .scrollBar(BarState.On)

      }
    .height('100%')
    .width('100%')
  }
}