class Item {
  final String image;
  final int price;
  final String location;
    final String name;


  Item({required this.name,required this.image, required this.price,this.location='Flower Shop'});
}

final List<Item> item = [
  Item(name: 'Product 1',image: ('Images/1.webp'), price: 13,location: 'Flower Shop'),
  Item(name: 'Product 2',image: ('Images/2.webp'), price: 12),
  Item(name: 'Product 3',image: ('Images/3.webp'), price: 14),
  Item(name: 'Product 4',image: ('Images/4.webp'), price: 11),
  Item(name: 'Product 5',image: ('Images/5.webp'), price: 13),
  Item(name: 'Product 6',image: ('Images/6.webp'), price: 10),
  Item(name: 'Product 7',image: ('Images/7.webp'), price: 19),
  Item(name: 'Product 8',image: ('Images/8.webp'), price: 12),
 Item(name: 'Product 9',image: ('Images/1.webp'), price: 13,location: 'Flower Shop'),
  Item(name: 'Product 10',image: ('Images/2.webp'), price: 12),
  Item(name: 'Product 11',image: ('Images/3.webp'), price: 14),
  Item(name: 'Product 12',image: ('Images/4.webp'), price: 11),
];
