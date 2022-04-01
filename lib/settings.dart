

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:supermarket_app/home.dart';
//import 'package:localize_and_translate/localize_and_translate.dart';
class settingsScreen extends StatefulWidget {
  @override
  _settingsScreenState createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  int radiovalue=0;
  bool _swval=false;
  @override
  Widget build(BuildContext context) {
//    localizationsDelegates: translator.delegates,
//    locale: translator.locale,
//    supportedLocales: translator.locals(),

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            child: Icon(Icons.menu,color: Colors.black,)),
        elevation: 0.0,
        title: Text('Settings',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children:  [
              ListTile(

                title: Text('Account info',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
              ),
//              SizedBox(height: 5,),
              ListTile(
                title: Text('Saved addresses',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

              ),
//              SizedBox(height: 5,),
              ListTile(
                title: Text('Change email',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

              ),
//              SizedBox(height: 5,),
              ListTile(
                title: Text('Change password',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),

              ),
//              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300,width: 1),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.white70.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset: Offset(0, 15), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    trailing: Switch(value: _swval,
                        onChanged: (bool value){
                      setState(() {
                        _swval=value;
                      });
                        },
                      activeColor: Colors.orange,
                      inactiveThumbColor: Colors.white,
                    ),

                  ),
                ),
              ),
//              SizedBox(height: 5,),
            GestureDetector(
               onTap: (){
                 showDialog(context: context, builder: (BuildContext context){
                 return AlertDialog(

                     title: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 25),
                       child: Text('Change Language',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                     ),
                     content: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: [

                         BuildLanguageList(0,"العربية"),
                         BuildLanguageList(1,"English"),
//                         GestureDetector(
//
//                             child: BuildLanguageList(0,"Brown","العربية"),
//                           onTap: (){
//                               translator.setNewLanguage(context,
//                                   newLanguage: translator.currentLanguage=='en'?'ar':'en',
//                                 restart: true,
//
//                               );
//                           },
//                         ),
//                         GestureDetector(
//
//                           child: BuildLanguageList(1,"Red","English"),
//                           onTap: (){
//                             translator.setNewLanguage(context,
//                               newLanguage: translator.currentLanguage=='en'?'ar':'en',
//                               restart: true,
//
//                             );
//                           },
//                         ),

//                   Wrap(
//                     children: translator.locals().map((i) {
//                       return OutlinedButton(
//                         onPressed: () {
//                           translator.setNewLanguage(
//                             context,
////                             newLanguage: i.languageCode,
//                           newLanguage: radiovalue==0?'ar':'en',
//                             remember: true,
//                             restart: true,
//                           );
//                         },
//                         child: Text(i.languageCode),
//                       );
//                     }).toList(),
//                   ),

                       ],
                     ),

                   );
                 });

               },




              child: ListTile(
                title: Text('Language',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                subtitle: Text('English',style: TextStyle(color: Colors.orange),),
              ),
            ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  color: Colors.black,
                  thickness: 0.8,
                ),
              ),
//              SizedBox(height: 5,),
              ListTile(
                title: Text('Country',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                subtitle: Text('Egypt',style: TextStyle(color: Colors.orange),),


              ),
//              SizedBox(height: 5,),
              ListTile(
                title: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
            ],
          ),
        ),
      )

    );
  }
  RadioListTile BuildLanguageList(val,txt){
    return RadioListTile(
        value: val,
        groupValue: radiovalue,
      activeColor: Colors.orange,

        controlAffinity: ListTileControlAffinity.trailing,

        onChanged: (value3){
          setState(() {
            radiovalue=value3;

          });
        },

      title: Text(txt),

    );
  }
}
