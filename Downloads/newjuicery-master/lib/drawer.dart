import 'package:flutter/material.dart';

import 'package:juicerryanandhu/notification.dart';
import 'package:juicerryanandhu/orders.dart';
import 'package:juicerryanandhu/profile.dart';
import 'package:juicerryanandhu/wallet.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              accountName: Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Text("Anne joseph",style: TextStyle(fontSize: 27,
                fontWeight: FontWeight.bold,color: Colors.black),),
              ),
               accountEmail: Padding(
                 padding: const EdgeInsets.only(top:1),
                 child: Row(
                   children: [
                     Text("Wallet balance",style: TextStyle(color: Colors.orange),),
                     Text("₹380",style: TextStyle(color: Colors.black),)
                   ],
                 ),
               ),
               currentAccountPictureSize: Size.square(50),
               currentAccountPicture: Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: CircleAvatar(radius: 15,
                  backgroundImage: AssetImage("assets/images/profilephoto.jpeg"),
                 
                 ),
               ),
               )),
               ListTile(
                leading: Icon(Icons.home),
                title: Text("Shop"),
               ),
               ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text("My Order"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Orderspage()));
                },
               ),
                ListTile(
                leading: Icon(Icons.account_balance_wallet_sharp),
                title: Text("My Wallet"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Walletpage(),));
                },
               ),
                ListTile(
                leading: Icon(Icons.person),
                title: Text("My Account"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profilepage(),));
                },
                
               ),
                ListTile(
                leading: Icon(Icons.calendar_month),
                title: Text("My Subsciption"),
               ),
                ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification"),
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>Notificationpage(),));
                },
               ),
                ListTile(
                leading: Icon(Icons.chat_bubble),
                title: Text("FAQ's"),
               ),
        ],
      ),
    );
  }
}