import { Type } from '../bean/Type'
import { TYPE_DATA } from '../data/data'


@Preview
@Component
export struct HomeComponent {
  build() {
    Scroll() {
      Column() {
        List() {
          ForEach(TYPE_DATA, (item: Type, index: number) => {
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
  type?: Type

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
          ForEach(this.type?.data, (item: string) => {
            TypeItemComponent({ name: item })
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
  name?: string

  build() {
    Column() {

      Row() {
        Text(this.name)
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

      Divider()
        .width('100%')
        .strokeWidth(1)
    }
  }
}
