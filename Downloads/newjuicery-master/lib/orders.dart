import 'package:flutter/material.dart';

class Orderspage extends StatefulWidget {
  const Orderspage({super.key});

  @override
  State<Orderspage> createState() => _OrderspageState();
}

class _OrderspageState extends State<Orderspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Order"),
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
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return SizedBox(height: 170,
            child: Card(
              elevation: 20,
                    child: Row(
                        children: [
                          Container(
                            height: 200,
                            width:105,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Image.asset("assets/images/pom trans.jpeg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                          
                                Text("Raw pomegranate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("size"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: [
                                      OutlinedButton(onPressed: (){},
                                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                                       child: Text("200 ml",style: TextStyle(color: Colors.black),)),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child:OutlinedButton(onPressed: (){}, 
                                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                                        child: Text("Subscibe",style: TextStyle(color: Colors.black),))
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Order ID"),
                                        Text("123ABC5",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Date"),
                                          Text("25 june 2017",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Status"),
                                          Text("Scheluduled",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),)
                                        ],
                                      ),
                                    )
                                  ],
                                )

                               
                               
                              ],
                            ),
                    )]
                          ),
            ),
          );
        },),
    );
  }
}