import { HomeComponent } from '../components/Home'

@Entry
@Component
struct Index {
  @State selectIndex: number = 0

  @Builder
  TarBarBuilder(index: number, text: string, selectIcon: Resource, unselectIcon: Resource) {
    Column() {
      Image(this.selectIndex == index ? selectIcon : unselectIcon)
        .width(30)
      Text(text)
        .fontSize(14)
        .fontColor(this.selectIndex == index ? Color.Black : Color.Gray)
    }
  }


  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        HomeComponent()
      }.tabBar(this.TarBarBuilder(0, "首页", $r('app.media.home_select'), $r('app.media.home_unselect')))

      TabContent() {
        Text("我的内容")
      }.tabBar(this.TarBarBuilder(1, "我的", $r('app.media.mine_select'), $r('app.media.mine_unselect')))

    }
    .onChange((index: number) => {
      this.selectIndex = index
    })
    .scrollable(false)
  }
}