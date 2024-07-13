import { Dish, DishType } from '../bean/Type'

export const TYPE_DATA: DishType[] = [
  new DishType(
    '主食',
    'Staple',
    $r('app.media.startIcon'),
    [new Dish('炒方便面', false)]
  ),
  new DishType(
    '水产',
    'Aquatic Food',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '早餐',
    'Breakfast',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '佐料',
    'Condiment',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '甜品',
    'Dessert',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '饮品',
    'Drink',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '烹饪',
    'Cooking',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '荤菜',
    'Meat',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '速食',
    'Fast Food',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '汤',
    'Soup',
    $r('app.media.startIcon'),
    []
  ),
  new DishType(
    '素菜',
    'Vegetable',
    $r('app.media.startIcon'),
    []
  ),
]