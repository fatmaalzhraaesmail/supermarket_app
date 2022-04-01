

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket_app/data.dart';
import 'package:supermarket_app/settings.dart';
class MyHomePage extends StatefulWidget {
//  final List OrderListProduct=Order.orderList;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
       elevation: 0.0,
//       leading: GestureDetector(
//         child: Icon(Icons.menu,color: Colors.black,size: 30),
//       ),
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(height: 4,),
            Text('Delivering to',style: TextStyle(color: Colors.grey[800],fontSize: 18,fontWeight: FontWeight.w800,)),
            Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//                SizedBox(height: 4,),
              Text('El Gaish شارع شكرى القوتلى',style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.w600),),

                Icon(Icons.keyboard_arrow_down,color: Colors.orange,size: 30,),
            ],)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              child: Icon(Icons.search,color: Colors.black,size: 30,),
            ),
          )
        ],
      ),
//      backgroundColor: Color.fromARGB(226, 227, 251, 1),
      body: Container(

//        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Wrap(
                  children: translator.locals().map((i) {
                    return OutlinedButton(
                      onPressed: () {
                        translator.setNewLanguage(
                          context,
                          newLanguage: i.languageCode,
                          remember: true,
                          restart: true,
                        );
                      },
                      child: Text(i.languageCode),
                    );
                  }).toList(),
                ),
                topPriority(),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('What would you like to order,',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('Fatma,',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      SizedBox(height: 15,),
                      Container(
                        height: 200,
//                        width: 400,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: orderList.length,

                            itemBuilder: (context,index)=>orderProducts(context,orderList[index])),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Groceries and more',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        height: 250,
//                        width: 400,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: GroceriesList.length,

                            itemBuilder: (context,index)=>grociesAndMore(context,GroceriesList[index])),
                      ),

                    ],
                  ),
                ),
//                SizedBox(height: 10,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('All day deserts',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        height: 250,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: desertsList.length,

                            itemBuilder: (context,index)=>alldaydeserts(context,desertsList[index])),
                      ),

                    ],
                  ),
                ),
              SizedBox(height: 20,),

                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Free delivery',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        height: 250,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: FreeDeliveryList.length,

                            itemBuilder: (context,index)=>FreeDeliveryComponent(context,FreeDeliveryList[index])),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Nearest to you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Icon(Icons.pin_drop,color: Colors.red,),

                  ],
                ),
                SizedBox(height: 10,),
                NearestToYouComponent(),
                SizedBox(height: 25,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Newly joined',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        height: 250,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: newJoinedList.length,

                            itemBuilder: (context,index)=>newJoinedComponent(context,newJoinedList[index])),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 25,),
                ButtonTheme(
                  minWidth: 400.0,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
//                      side: BorderSide(color: Colors.green)),
                  ),
                  child: RaisedButton(
                    elevation: 5.0,
                    hoverColor: Colors.green,
                    color: Colors.deepOrangeAccent,
                    child: Text(
                      "View all restaurant",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 25,),


              ],
            ),
          ),
        ),

      ),

      drawer: Drawer(

        child: ListView(

          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text('F',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ),
              title: Text('Fatma Esmail',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    ClipOval(

                      child: Container(
                        width: 20,
                          height: 20,
                          child: Image.asset('assets/images/e1.png',fit: BoxFit.cover,)),

                    ),
                    SizedBox(width: 8,),
                    Text('Egypt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                  ],
                ),
              ),
              trailing: GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => settingsScreen(),
                      ),
                    );
                  },
                  child: Icon(Icons.settings)),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,size: 28,),
              title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.list_alt,color: Colors.black,size: 28,),
              title: Text('Your orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.local_offer,color: Colors.black,size: 28,),
              title: Text('Offers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.notifications_outlined,color: Colors.black,size: 28,),
              title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.payment,color: Colors.black,size: 28,),
              title: Text('Talabat Pay',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              trailing: Text('EGP 0.00',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 17),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.help_outlined,color: Colors.black,size: 28,),
              title: Text('Get help',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            ListTile(
              leading: Icon(Icons.error_outline_rounded,color: Colors.black,size: 28,),
              title: Text('About',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
          ],
        ),

      ),


    );
  }
  Widget topPriority(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(226, 227, 251, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your health and safty is our top priority',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),),
                  Icon(Icons.clear_outlined,size: 23,),
                ],
              ),
              Text('Learn more',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17,color: Colors.deepOrangeAccent),),
            ],
          ),
        ),
      ),
    );
  }
  Widget orderProducts(context,Order order){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          Container(
            width: 180,
//            child: Text('${order.orderTitle}'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topLeft: Radius.circular(15),
//                topRight: Radius.circular(20),
                bottomRight: Radius.circular(15),
              ),
//        color: Colors.orange,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('${order.orderImg}'),
              ),

            ),
          ),
          Positioned(
            bottom: 14,
              left: 10,
              child: Text('${order.orderTitle}',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }

  Widget grociesAndMore(context,Groceries groceries){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 340,
                height: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${groceries.GroceriesImage}'),
                  ),
                borderRadius: BorderRadius.circular(10),
              ),

              ),
            ],

          ),
          SizedBox(height: 10,),
          Container(
            width: 340,
            child: Stack(
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text('${groceries.Groceriestitle}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Positioned(
                right: 2,
                child: Row(
                  children: [
                    Icon(Icons.delivery_dining_outlined),
                    Text(' Within ${groceries.GroceriesTime}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                  ],
                ),
                  ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
            child: Text('Grocery',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.grey[600]),),
          ),
          Stack(children: [
            Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                Text(' ${groceries.GroceriesState}  .  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),
                Text('Delivery: ${groceries.GroceriesDelivery}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),

              ],
            )
          ],)
        ],
      ),

    );
  }

  Widget alldaydeserts(context,deserts desert){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 340,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${desert.desertsImage}'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ],

          ),
          SizedBox(height: 10,),
          Container(
            width: 340,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text('${desert.desertstitle}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Positioned(
                  right: 2,
                  child: Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined),
                      Text(' Within ${desert.desertsTime}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                    ],
                  ),
                ),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
            child: Text('Grocery',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.grey[600]),),
          ),
          Stack(children: [
            Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                Text(' ${desert.desertsState}  .  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),
                Text('Delivery: ${desert.desertsDelivery}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),

              ],
            )
          ],)
        ],
      ),

    );
  }

  Widget FreeDeliveryComponent(context,FreeDelivery freeDelivery){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 340,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${freeDelivery.FreeImage}'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ],

          ),
          SizedBox(height: 10,),
          Container(
            width: 340,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text('${freeDelivery.Freetitle}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Positioned(
                  right: 2,
                  child: Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined),
                      Text(' Within ${freeDelivery.FreeTime}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                    ],
                  ),
                ),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
            child: Text('${freeDelivery.FreeType}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.grey[600]),),
          ),
          Stack(children: [
            Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                Text(' ${freeDelivery.FreeState}  .  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),
                Text('Delivery: ${freeDelivery.Freeelivery}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),

              ],
            )
          ],)
        ],
      ),

    );
  }
  Widget NearestToYouComponent(){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 360,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/burger1.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ],

          ),
          SizedBox(height: 10,),
          Container(
            width: 360,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text('Doner Konner',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Positioned(
                  right: 2,
                  child: Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined),
                      Text(' Within 50 mins',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                    ],
                  ),
                ),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
            child: Text('Burger',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.grey[600]),),
          ),
          Stack(children: [
            Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                Text(' Very Good  .  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),
                Text('Delivery: Free',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),

              ],
            ),
          ],),
          SizedBox(height: 5,),
          Row(children: [
            Icon(Icons.local_offer_outlined,color: Colors.red,),
            SizedBox(width: 5,),
            Text('Special offer',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.red),),


          ],)
        ],
      ),

    );
  }

  Widget newJoinedComponent(context,newJoined newlyJoinedd){
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 340,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('${newlyJoinedd.newImage}'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),

              ),
            ],

          ),
          SizedBox(height: 10,),
          Container(
            width: 340,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text('${newlyJoinedd.newtitle}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Positioned(
                  right: 2,
                  child: Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined),
                      Text(' Within ${newlyJoinedd.newTime}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),

                    ],
                  ),
                ),
              ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 2),
            child: Text('${newlyJoinedd.newType}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.grey[600]),),
          ),
          Stack(children: [
            Row(
              children: [
                Icon(Icons.emoji_emotions_outlined),
                Text(' ${newlyJoinedd.newState}  .  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),
                Text('Delivery: ${newlyJoinedd.newdlivery}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.grey[600]),),

              ],
            )
          ],)
        ],
      ),

    );
  }


}
