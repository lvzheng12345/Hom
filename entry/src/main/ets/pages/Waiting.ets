@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = '123';
        })
    }
    .height('100%')
    .width('100%')
    .backgroundImage('http://sns-webpic-qc.xhscdn.com/202507021524/c2bb773ebada79f006055ad0377abb76/1040g00831hm0ips5ju305n91chb47csb9gmmkp0!nd_dft_wlteh_jpg_3')
    .backgroundImageSize(ImageSize.Cover)
    .backgroundImagePosition(Alignment.Center)
  }
}