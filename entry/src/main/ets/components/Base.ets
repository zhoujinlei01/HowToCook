@Component
export struct BaseContentComponent {
  @BuilderParam child: () => void

  build() {
    Column() {
      this.child()
    }
    .padding({
      left: '3%',
      right: '3%',
    })
    .backgroundColor('#ffeeeeee')
    .width('100%')
    .height('100%')
  }
}
