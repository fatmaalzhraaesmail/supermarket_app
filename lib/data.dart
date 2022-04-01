class Order{
  String? orderImg;
  String? orderTitle;
  Order({this.orderImg,this.orderTitle});
}
List <Order>orderList=[
  Order(
    orderImg: 'assets/images/f1.jpg',
    orderTitle: 'Food',
  ),
  Order(
    orderImg: 'assets/images/g6.jpg',
    orderTitle: 'Groceries',
  ),
  Order(
    orderImg: 'assets/images/o10.jpg',
    orderTitle: 'Pizzaa',
  ),
  Order(
    orderImg: 'assets/images/c2.jpg',
    orderTitle: 'Deserts',
  ),
];
class Groceries{
  String? GroceriesImage;
  String? Groceriestitle;
  String? GroceriesIcons;
  String? GroceriesState;
  String? GroceriesDelivery;
  String? GroceriesTime;
  Groceries({this.GroceriesDelivery,this.GroceriesIcons,this.GroceriesImage,this.GroceriesState,this.Groceriestitle,this.GroceriesTime});

}
List <Groceries> GroceriesList=[
  Groceries(
    GroceriesImage: 'assets/images/ss1.jpg',//sh
    Groceriestitle: 'Bob Marley',
    GroceriesIcons: 'emoji_emotions_outlined',
    GroceriesState: 'Good',
    GroceriesDelivery: 'Free',
    GroceriesTime: '50 mins'


  ),
  Groceries(
    GroceriesImage: 'assets/images/wcheese.jpg', //gebna adya
    Groceriestitle: '2Go Supermarket',
    GroceriesIcons: 'emoji_emotions_outlined',
    GroceriesState: 'Very Good',
    GroceriesDelivery: '10 p',
      GroceriesTime: '20 p'
  ),
  Groceries(
    GroceriesImage: 'assets/images/cheese4.jpg',  //gbna romy
    Groceriestitle: 'Wust el balad',
    GroceriesIcons: 'emoji_emotions_outlined',
    GroceriesState: 'Good',
    GroceriesDelivery: '5 p',
      GroceriesTime: '40 mins'
  ),
  Groceries(
    GroceriesImage: 'assets/images/pp.jpg', //pepsi
    Groceriestitle: 'Bob Marley',
    GroceriesIcons: 'emoji_emotions_outlined',
    GroceriesState: 'Exellent',
    GroceriesDelivery: '4 p',
      GroceriesTime: '10 mins'
  ),
];
class deserts{
  String? desertsImage;
  String? desertstitle;
  String? desertsIcons;
  String? desertsState;
  String? desertsDelivery;
  String? desertsTime;
   deserts({this.desertsDelivery,this.desertsIcons,this.desertsState,this.desertsTime,this.desertstitle,this.desertsImage});
}
List <deserts> desertsList=[
  deserts(
      desertsImage: 'assets/images/dounts1.jpg',//sh
      desertstitle: 'Donuts',
      desertsIcons: 'emoji_emotions_outlined',
      desertsState: 'Good',
      desertsDelivery: 'Free',
      desertsTime: '50 mins'


  ),
  deserts(
      desertsImage: 'assets/images/hot cho1.jpg', //gebna adya
      desertstitle: 'NOLA',
      desertsIcons: 'emoji_emotions_outlined',
      desertsState: 'Very Good',
      desertsDelivery: '10 p',
      desertsTime: '20 p'
  ),
  deserts(
      desertsImage: 'assets/images/cakes1.jpg',  //gbna romy
      desertstitle: 'Cake Shop',
      desertsIcons: 'emoji_emotions_outlined',
      desertsState: 'Good',
      desertsDelivery: '50p',
      desertsTime: '40 mins'
  ),
  deserts(
      desertsImage: 'assets/images/joy.jpg', //pepsi
      desertstitle: 'Joy cake',
      desertsIcons: 'emoji_emotions_outlined',
      desertsState: 'Exellent',
      desertsDelivery: '40p',
      desertsTime: '10 mins'
  ),
  deserts(
      desertsImage: 'assets/images/ice1.jpg', //pepsi
      desertstitle: 'Ice Cream',
      desertsIcons: 'emoji_emotions_outlined',
      desertsState: 'Exellent',
      desertsDelivery: '40p',
      desertsTime: '15 mins'
  ),
  deserts(
      desertsImage: 'assets/images/cup1.jpg', //pepsi
      desertstitle: 'Cupcake',
      desertsIcons: 'emoji_emotions_outlined',
      desertsState: 'Very Good',
      desertsDelivery: '35p',
      desertsTime: '15 mins'
  ),

];

class FreeDelivery{
  String? FreeImage;
  String? Freetitle;
  String? FreeType;
  String? FreeIcons;
  String? FreeState;
  String? Freeelivery;
  String? FreeTime;
  FreeDelivery({this.FreeImage,this.Freetitle,this.FreeIcons,this.FreeState,this.Freeelivery,this.FreeTime,this.FreeType});
}
List <FreeDelivery> FreeDeliveryList=[
  FreeDelivery(
      FreeImage: 'assets/images/pizza1.jpg',//sh
      Freetitle: 'Pizza hut',
      FreeIcons: 'emoji_emotions_outlined',
      FreeState: 'Good',
      Freeelivery: 'Free',
      FreeTime: '50 mins',
      FreeType:'Restaurant',


  ),
  FreeDelivery(
      FreeImage: 'assets/images/apple earphone.jpg', //gebna adya
      Freetitle: 'Apple id',
      FreeIcons: 'emoji_emotions_outlined',
      FreeState: 'Very Good',
      Freeelivery: 'Free',
      FreeTime: '20 mins',
      FreeType:'Special Store',
  ),
  FreeDelivery(
      FreeImage: 'assets/images/notebook.jpg',  //gbna romy
      Freetitle: 'Dar El Qamar',
      FreeIcons: 'emoji_emotions_outlined',
      FreeState: 'Good',
      Freeelivery: 'Free',
      FreeTime: '40 mins',
    FreeType:'Special Store',
  ),
  FreeDelivery(
      FreeImage: 'assets/images/dounts1.jpg', //pepsi
      Freetitle: 'Joy cake',
      FreeIcons: 'emoji_emotions_outlined',
      FreeState: 'Exellent',
      Freeelivery: 'Free',
      FreeTime: '10 mins',
    FreeType:'Deserts',
  ),
  FreeDelivery(
      FreeImage: 'assets/images/burger1.jpg', //pepsi
      Freetitle: 'Burger',
      FreeIcons: 'emoji_emotions_outlined',
      FreeState: 'Exellent',
      Freeelivery: 'Free',
      FreeTime: '15 mins',
    FreeType:'Restaurant',
  ),
  FreeDelivery(
      FreeImage: 'assets/images/pizza2.jpg', //pepsi
      Freetitle: 'Chiken Kickers',
      FreeIcons: 'emoji_emotions_outlined',
      FreeState: 'Very Good',
      Freeelivery: 'Free',
      FreeTime: '15 mins',
    FreeType:'Restaurant',
  ),

];

class newJoined{
  String? newImage;
  String? newtitle;
  String? newType;
  String? newIcons;
  String? newState;
  String? newdlivery;
  String? newTime;
  newJoined({this.newdlivery,this.newIcons,this.newImage,this.newState,this.newTime,this.newtitle,this.newType});
}
List <newJoined> newJoinedList=[
  newJoined(
    newImage: 'assets/images/phone.jpg',//sh
    newtitle: 'Al Saeed Group',
    newIcons: 'emoji_emotions_outlined',
    newState: 'Very Good',
    newdlivery: 'Free',
    newTime: '50 mins',
    newType:'Special Store',


  ),
  newJoined(
    newImage: 'assets/images/drug1.jpg',
    newtitle: 'Sultan Pharmacy',
    newIcons: 'emoji_emotions_outlined',
    newState: 'Good',
    newdlivery: 'Free',
    newTime: '20 mins',
    newType:'Pharmacy',
  ),
  newJoined(
    newImage: 'assets/images/wcheese.jpg',
    newtitle: '2Go Supermarket',
    newIcons: 'emoji_emotions_outlined',
    newState: 'Very Good',
    newdlivery: '10 p',
    newTime: '40 mins',
    newType:'Grocery',
  ),
  newJoined(
    newImage: 'assets/images/notebook.jpg', //pepsi
    newtitle: 'Dar El Qamar',
    newIcons: 'emoji_emotions_outlined',
    newState: 'Good',
    newdlivery: 'Free',
    newTime: '40 mins',
    newType:'Special Store',
  ),
  newJoined(
    newImage: 'assets/images/burger1.jpg', //pepsi
    newtitle: 'Burger',
    newIcons: 'emoji_emotions_outlined',
    newState: 'Exellent',
    newdlivery: 'Free',
    newTime: '15 mins',
    newType:'Restaurant',
  ),


];

