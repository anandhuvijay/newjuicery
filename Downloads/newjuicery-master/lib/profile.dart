import 'package:flutter/material.dart';
import 'package:juicerryanandhu/address.dart';
import 'package:juicerryanandhu/password.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: Text("Profile"),
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
        ],),
        body: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: CircleAvatar(radius: 40,
                    backgroundImage: AssetImage("assets/images/profilephoto.jpeg"),),
                ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80,top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: Text("Anne Joseph",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                        ),
                        Text("Wallet balance:328",style: TextStyle(color: Colors.pink),),
                        OutlinedButton(onPressed: (){},
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                               child: Text("Recharge Wallet",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit_square))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email"
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 10,right: 10),
               child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone"
                ),
                         ),
             ),
           SizedBox(height: 50,
             child: InkWell(onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Passwordpage(),));
             },
               child: Padding(
                 padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                 child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 30),
                    child: Text("Change password",style: TextStyle(fontSize: 17),),
                  ),
                 ),
               ),
             ),
           ),
           Container(
           height: 170,
            width: double.infinity,
            child:Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text("Anne Joseph",style: TextStyle(color: Colors.pink),),
                  ),
                  Text("Flat no:5D,11th floor,",style: TextStyle(color: Colors.pink),),
                  Text("Building name,city name",style: TextStyle(color: Colors.pink),),
                  Text("Landmark,Area name,",style: TextStyle(color: Colors.pink),),
                  Text("pin:6912345",style: TextStyle(color: Colors.pink),),
                  Text("Mob:+919712345678",style: TextStyle(color: Colors.pink),)
                ],
              ),
            )

           ),
           Divider(thickness: 3,),
               Container(
           height: 170,
            width: double.infinity,
            child:Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19),),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text("Amal BS",style: TextStyle(color: Colors.pink),),
                  ),
                  Text("Flat no:5D,11th floor,",style: TextStyle(color: Colors.pink),),
                  Text("Building name,city name",style: TextStyle(color: Colors.pink),),
                  Text("Landmark,Area name,",style: TextStyle(color: Colors.pink),),
                  Text("pin:691306",style: TextStyle(color: Colors.pink),),
                  Text("Mob:+918129091675",style: TextStyle(color: Colors.pink),)
                ],
              ),
            )

           ),
           Padding(
             padding: const EdgeInsets.all(20),
             child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Addresspage(),));
              },
               child: Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red,),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Add New Address",style: TextStyle(fontSize: 25),)),
               ),
             ),
           )

          ],
         
        ),
    
  );
  }
}