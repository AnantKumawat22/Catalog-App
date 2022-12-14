class Item{
  final String id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [Item(
  id: "Iphone12",
  name: "iphone 12 pro",
  desc: "Apple iphone 12th generation.",
  price: 100000,
  color: "#33505a",
  image: ""
)];