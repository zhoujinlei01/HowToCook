import { NavigationBar } from '../components/ToolBar';

@Entry
@Component
struct DishDetailPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      NavigationBar({ title: '炒方便面' })
    }
    .backgroundColor('#ffe2e2e2')
    .height('100%')
  }
}