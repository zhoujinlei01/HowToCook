import { BaseContentComponent } from '../components/Base';
import { DishDetailContent } from '../components/DishDetail';
import { NavigationBar } from '../components/ToolBar';

@Entry
@Component
struct DishDetailPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      NavigationBar({ title: '炒方便面' })
      DishDetailContent()
    }
  }
}