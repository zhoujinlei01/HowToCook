export class DishType {
  name?: string
  engName?: string
  img?: Resource
  dishList?: Dish[]

  constructor(name: string, engName: string, img: Resource, dishList: Dish[]) {
    this.name = name
    this.engName = engName
    this.img = img
    this.dishList = dishList
  }
}

export class Dish {
  name?: string
  canBeViewed: boolean = false

  constructor(name: string, canBeViewed: boolean) {
    this.name = name
    this.canBeViewed = canBeViewed
  }
}
