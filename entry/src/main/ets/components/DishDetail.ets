import { BaseContentComponent } from './Base'
import { LengthMetrics } from '@kit.ArkUI'

@Component
export struct DishDetailContent {
  build() {
    BaseContentComponent() {
      Scroll() {
        Column() {
          Title({
            title: '炒方便面的做法',
            description: '这是在探究了传统煮方便面的改良方向之后，进行的一次最成功的尝试。它能够让方便面的美味程度提升很大程度，简单好做。开始炒吧！'
          })
          Content()
        }
      }
      .scrollBar(BarState.Off)
    }
  }
}

@Component
struct Title {
  title?: string
  description?: string

  build() {
    Column() {
      Text(this.title)
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .padding({ top: '5%' })

      Text(this.description)
        .fontColor(Color.Gray)
        .lineSpacing(LengthMetrics.vp(10))
        .padding({ top: '2%', bottom: '2%' })
    }
    .alignItems(HorizontalAlign.Start)
  }
}

@Component
struct Content {
  @Builder
  TarBarBuilder(title: string) {
    Text(title)
      .padding({
        top: '2%',
        bottom: '2%'
      })
  }

  build() {
    Tabs() {
      TabContent() {
        Text('123')
      }.tabBar('原料和工具')
      .height('20%')

      TabContent() {
        Text('123')
      }.tabBar('计算')

      TabContent() {
        Text('123')
      }.tabBar('操作')

      TabContent() {
        Text('456')
      }.tabBar('附加内容')

    }.backgroundColor(Color.White)
    .scrollable(false)
    .barMode(BarMode.Scrollable)
    .height('100%')

    // .height(this.tabHeight == 0 ? '100%' : this.tabHeight)
  }
}