import { router } from '@kit.ArkUI'

/**
 * 顶部导航栏
 */
@Component
export struct NavigationBar {
  title?: string
  showBack: boolean = true
  showTitle: boolean = true

  build() {
    Row() {
      if (this.showBack) {
        Image($r('app.media.back')).width(22)
          .onClick(() => {
            router.back()
          })
      }
      Blank()
      if (this.showTitle) {
        Text(this.title)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .fontSize(18)
      }
      Blank()
      if (this.showBack) {
        Text().width(22)
      }
    }

    .backgroundColor(Color.White)
    .width('100%')
    .padding({
      left: '2%',
      right: '2%',
      top: '3%',
      bottom: '3%'
    })
  }
}