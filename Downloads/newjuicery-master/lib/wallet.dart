import 'package:flutter/material.dart';
import 'package:juicerryanandhu/drawer.dart';

class Walletpage extends StatefulWidget {
  const Walletpage({super.key});

  @override
  State<Walletpage> createState() => _WalletpageState();
}

class _WalletpageState extends State<Walletpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wallet"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow,Colors.black]
            )
          ),
        ),
        
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_basket))
        ],
    ),
    drawer: Drawerwidget(),
    body: Column(
      children: [
        Container(
          width:double.infinity,
          height: 250,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text("₹2328",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                  Text("Wallet balance"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: OutlinedButton(onPressed: (){},
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
                    ),
                     child: Text("Recharge Wallet",style: TextStyle(color: Colors.black),)),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Text("Transfer wallet amount"),
                   )
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Align(alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("MY TRANSACTIONS",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  SizedBox(height: 330,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                      return ListTile(
                        title: Text("₹2500",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        subtitle:Text("17 july 2017 2:30 pm",style: TextStyle(color: Colors.brown),) ,
                      );
                    },),
                  ),


                ],
              ),
            ),
          ),
        ),
      ],
    )
    
    );
  }
}