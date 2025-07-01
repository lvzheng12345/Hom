@Entry
@Component
struct Page3 {
  @State productTitle: string = '柠檬酸辣无骨鸡爪罐装网红零食卤味即食小吃脱骨凤爪 脱骨鸡爪柠...';
  @State currentPrice: string = '¥ 1?';
  @State recommendPrice: string = '¥24.40';
  @State couponAmount: string = '¥30';
  @State deliveryLocation: string = '江西省抚州市崇仁县白陂乡';
  @State shopName: string = '欧丰零食专营店';
  @State insurancePrice: string = '¥1.00';

  build() {
    Column() {

      Row() {
        Column() {
          Stack() {

            Image($r('app.media.12'))
              .width('100%')
              .height(420)
              .margin({top:90})
              .borderRadius(8)
              .backgroundColor('#ffdb3131')

            Text('登录查看更多图片 >')
              .fontSize(12)
              .fontColor('#666')
              .position({ x: 10, y: '95%' })
              .translate({ y: '-100%' })
          }
          .width('100%')
          .height(320)
        }
        .width('15%')
        .padding({ right: 10 })

        // 右侧商品信息区域
        Column() {
          // 商品标题
          Text(this.productTitle)
            .fontSize(18)
            .fontColor('#333')
            .lineHeight(22)
            .margin({ bottom: 10 })
            .maxLines(2)
            .width(300)
            .textOverflow({ overflow: TextOverflow.Ellipsis })

          // 价格区域
          Row() {
            Text('京东价')
              .fontSize(14)
              .fontColor('#999')
              .margin({ right: 10 })

            Text(this.currentPrice)
              .fontSize(24)
              .fontColor('#ff4e00')
              .fontWeight(FontWeight.Bold)
              .margin({ right: 10 })

            Text('登录查看更多优惠 >')
              .fontSize(12)
              .fontColor('#ff4e00')
              .backgroundColor('#fff2f2')
              .padding({ left: 8, right: 8, top: 4, bottom: 4 })
              .borderRadius(4)
          }
          .alignItems(VerticalAlign.Center)
          .backgroundColor('#f9f9f9')
          .padding({ top: 10, bottom: 10 })
          .margin({ bottom: 10 })
          .width('100%')

          // 优惠区域
          Row() {
            // 惠标签
            Row() {
              Text('惠')
                .fontSize(12)
                .fontColor(Color.White)
                .backgroundColor('#ff4e00')
                .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                .borderRadius(4)
                .margin({ right: 8 })
              
              Text(`同款推荐: ${this.recommendPrice}`)
                .fontSize(14)
                .fontColor('#333')
            }
            .alignItems(VerticalAlign.Center)

            // 券标签
            Row() {
              Text('券')
                .fontSize(12)
                .fontColor(Color.White)
                .backgroundColor('#ff7a45')
                .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                .borderRadius(4)
                .margin({ right: 8 })
              
              Text(`${this.couponAmount} 限时好券`)
                .fontSize(14)
                .fontColor('#333')
                .margin({ right: 5 })
              
              Text('领券')
                .fontSize(12)
                .fontColor(Color.White)
                .backgroundColor('#ff7a45')
                .padding({ left: 8, right: 8, top: 2, bottom: 2 })
                .borderRadius(15)
            }
            .backgroundColor('#ffe54242')
            .alignItems(VerticalAlign.Center)
          }
          .width(300)
          .padding({ top: 8, bottom: 8 })
          .margin({ bottom: 10 })

          // 促销信息区域
          Column() {
            Row() {
              Text('周周真五折，满200-20')
                .fontSize(12)
                .fontColor('#ff4e00')
              
              Text('春日换新，新品5折')
                .fontSize(12)
                .fontColor('#ff4e00')
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .width('100%')
            .margin({ bottom: 5 })

            Row() {
              Text('促 买家电，国家补贴8折')
                .fontSize(12)
                .fontColor('#ff4e00')
              
              Text('京东百亿农产品补贴')
                .fontSize(12)
                .fontColor('#ff4e00')
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .width('100%')
          }
          .margin({ bottom: 10 })

          // 配送信息
          Row() {
            Text(`配送至 ${this.deliveryLocation}`)
              .fontSize(12)
              .fontColor('#666')
            
            Row() {
              Text('有货')
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 5 })
              
              Text('支持')
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 5 })
              
              Text('闪电退款')
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 5 })
              
              Text('|')
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 5 })
              
              Text('极速审核')
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 5 })
              
              Text('|')
                .fontSize(12)
                .fontColor('#999')
                .margin({ right: 5 })
              
              Text('包邮')
                .fontSize(12)
                .fontColor('#999')
            }
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .backgroundColor('#f9f9f9')
          .padding({ top: 10, bottom: 10 })
          .margin({ bottom: 10 })
          .width('100%')

          // 店铺信息
          Text(`由 ${this.shopName} 发货，并提供售后服务 预计后天发货`)
            .fontSize(12)
            .fontColor('#999')
            .margin({ bottom: 10 })

          // 保险服务
          Row() {
            Text('增值服务')
              .fontSize(12)
              .fontColor('#666')
              .margin({ right: 10 })
            
            Row() {
              Text(`1年变质换新 ${this.insurancePrice}`)
                .fontSize(12)
                .fontColor('#ff4e00')
                .margin({ right: 5 })
              
              Text('▼')
                .fontSize(12)
                .fontColor('#ff4e00')
            }
            .backgroundColor('#fff2f2')
            .padding({ left: 10, right: 10, top: 5, bottom: 5 })
            .borderRadius(4)
          }
          .alignItems(VerticalAlign.Center)
          .margin({ bottom: 10 })

          // 提示区域
          Row() {
            Text('提醒：当前商品无优惠，点此领取同款商品优惠券')
              .fontSize(12)
              .fontColor('#ff4e00')
            
            Text('领取')
              .fontSize(12)
              .fontColor(Color.White)
              .backgroundColor('#ff4e00')
              .padding({ left: 8, right: 8, top: 2, bottom: 2 })
              .borderRadius(4)
              .onClick(() => {
                console.info('领取优惠券');
              })
          }
          .backgroundColor('#fff7f7')
          .padding(8)
          .borderRadius(4)
          .margin({ bottom: 20 })
          .width('300')

          // 按钮组
          Row() {
            Button('加入购物车')
              .fontSize(16)
              .fontColor(Color.White)
              .backgroundColor('#ff4e00')
              .borderRadius(4)
              .width('65%')
              .height(40)
              .margin({ right: 10 })
              .onClick(() => {
                console.info('加入购物车');
              })

            Button('立即购买')
              .fontSize(16)
              .fontColor(Color.White)
              .backgroundColor('#c00')
              .borderRadius(4)
              .width('65%')
              .height(40)
              .onClick(() => {
                console.info('立即购买');
              })
          }
          .justifyContent(FlexAlign.Start)
          .margin({ bottom: 15 })

          // 温馨提示
          Text('温馨提示 · 支持7天无理由退货')
            .fontSize(12)
            .fontColor('#999')
            .textAlign(TextAlign.Center)
            .width('100%')
        }
        .width('55%')
        .alignItems(HorizontalAlign.Start)
        .justifyContent(FlexAlign.Start)
      }
      .width('100%')
      .padding(10)
      .alignItems(VerticalAlign.Top)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff')
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Center)
  }
}