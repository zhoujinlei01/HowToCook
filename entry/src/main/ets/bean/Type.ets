export class Type {
  name?: string
  engName?: string
  img?: Resource
  data?: string[]

  constructor(name: string, engName: string, img: Resource, data: string[]) {
    this.name = name
    this.engName = engName
    this.img = img
    this.data = data
  }
}
