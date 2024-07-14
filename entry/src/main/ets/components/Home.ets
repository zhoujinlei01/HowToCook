import { Dish, DishType } from '../bean/Type'
import { TYPE_DATA } from '../data/data'
import { promptAction, router } from '@kit.ArkUI'
import { BaseContentComponent } from './Base'


@Preview
@Component
export struct HomeComponent {
  build() {
    BaseContentComponent() {
      Scroll() {
        List({ space: 12 }) {
          ForEach(TYPE_DATA, (item: DishType) => {
            ListItem() {
              TypeComponent({
                type: item
              })
            }
          })
        }
        .margin({
          top: '10',
          bottom: '10'
        })
      }
      .scrollBar(BarState.Off)
    }
  }
}

@Component
struct TypeComponent {
  @State isShow: boolean = false
  type?: DishType

  build() {
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
        ColumnSplit() {
          ForEach(this.type?.dishList, (item: Dish) => {
            TypeItemComponent({ dish: item })
          })
        }
        .margin({
          top: '2%'
        })
      }
    }
    .backgroundColor(Color.White)
    .padding({
      left: '5%',
      right: '5%',
      top: '5%',
      bottom: this.isShow ? '2%' : '5%'
    })
    .borderRadius(5)
  }
}

@Component
struct TypeItemComponent {
  dish?: Dish

  build() {
    Row() {
      Text(this.dish?.name)
        .fontWeight(FontWeight.Bold)
      Blank()
      Image($r('app.media.skip'))
        .width(20)
    }
    .width('100%')
    .padding({
      top: '3%',
      bottom: '3%'
    })
    .onClick(() => this.clickDish())
  }

  clickDish() {
    if (this.dish?.canBeViewed) {
      // 跳转菜品详情页面
      router.pushUrl({
        url: "pages/DishDetailPage",
        params: {
          dish: this.dish
        }
      }, router.RouterMode.Standard)
    } else {
      promptAction.showToast({
        message: this.dish?.name + " 无法被查看"
      })
    }
  }
}
