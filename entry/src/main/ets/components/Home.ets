import { Dish, DishType } from '../bean/Type'
import { TYPE_DATA } from '../data/data'
import { promptAction } from '@kit.ArkUI'


@Preview
@Component
export struct HomeComponent {
  build() {
    Scroll() {
      Column() {
        List() {
          ForEach(TYPE_DATA, (item: DishType, index: number) => {
            ListItem() {
              TypeComponent({
                type: item
              })
            }
          })
        }.width('100%')
        .padding({
          top: '2%',
          bottom: '2%'
        })
      }
    }
    .scrollBar(BarState.Off)

  }
}

@Component
struct TypeComponent {
  @State isShow: boolean = false
  type?: DishType

  build() {
    Flex() {
      Column() {
        Row() {
          Text(this.type?.name)
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.isShow ? Color.Gray : Color.Black)
          Blank().width(5)
          Text(this.type?.engName)
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .fontColor(this.isShow ? Color.Gray : Color.Black)
          Blank()
          Image(this.type?.img)
            .width(30)
        }
        .width('100%')
        .onClick(() => {
          console.log(this.type?.name + ' isShow: ' + this.isShow + ' to ' + !this.isShow);
          this.isShow = !this.isShow
        })

        if (this.isShow) {
          ForEach(this.type?.dishList, (item: Dish) => {
            TypeItemComponent({ dish: item })
          })
        }
      }
      .layoutWeight(1)
      .padding({
        left: '5%',
        right: '5%',
        top: '5%',
        bottom: '5%'
      })
      .backgroundColor(Color.White)
      .margin({
        top: '2%',
        left: '3%',
        right: '3%',
        bottom: '2%'
      })
      .borderRadius(5)
    }
  }
}

@Component
struct TypeItemComponent {
  dish?: Dish

  build() {
    Column() {

      Row() {
        Text(this.dish?.name)
          .fontWeight(FontWeight.Bold)
        Blank()
        Image($r('app.media.skip'))
          .width(20)
      }
      .width('100%')
      .padding({
        top: '5%',
        bottom: '3%'
      })
      .onClick(() => {
        if (this.dish?.canBeViewed) {
          // 跳转菜品详情页面
        } else {
          promptAction.showToast({
            message: this.dish?.name + " 无法被查看"
          })
        }
      })

      Divider()
        .width('100%')
        .strokeWidth(1)
    }
  }
}
