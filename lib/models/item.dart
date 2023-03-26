class CatalogModel {
  static final items = [
    Item.fromJson({
      "id": 1,
      "name": "Iphone 14",
      "desc": "apple iphone",
      "price": 72000,
      "image":
          "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/610pghkO81L._SX522_.jpg"
    }),
    Item.fromJson({
      "id": 2,
      "name": "Samsung Galaxy S23",
      "desc": "samsung phone",
      "price": 65000,
      "image":
          "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/61RZDb2mQxL._SL1500_.jpg"
    }),
    Item.fromJson({
      "id": 3,
      "name": "Google Pixel 7 Pro",
      "desc": "google phone",
      "price": 60000,
      "image":
          "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/712JkPUUlRL._SL1500_.jpg"
    })
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.image);

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        json['id'], json['name'], json['desc'], json['price'], json['image']);
  }
}
