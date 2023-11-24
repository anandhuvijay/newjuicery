import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:juicerryanandhu/payment.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  var date="";
  
  var datecontroller=TextEditingController();
  var datecontroller1=TextEditingController();
  var list=[""];
  var dropdownvalue="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Cart"),
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
        body: 
             ListView(
               children: [
                 Container(
                  height: 400,
                   child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                        return SizedBox(width: double.infinity,
                          child: Card(
                            elevation: 20,
                                  shadowColor: Colors.yellow,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 170,
                                        width: 90,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 7),
                                          child: Image.asset("assets/images/fruitjuice2.jpeg"),
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
                                              padding: const EdgeInsets.only(top: 10,right: 10),
                                              child: Row(
                                                children: [
                                                  OutlinedButton(onPressed: (){}, child: Text("200 ml",style: TextStyle(color: Colors.black),)),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 3),
                                                    child:OutlinedButton(onPressed: (){}, child: Text("start subscribition",style: TextStyle(color: Colors.black),))
                                                  ),
                                                 
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20),
                                              child: Row(
                                                children: [
                                                  IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                                  Text("1"),
                                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                                   Text("1x₹79",style: TextStyle(fontWeight: FontWeight.bold),)

                                                 
                                                ],
                                              ),
                                            )
                                           
                                          ],
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                
                          ),
                        );
                      },),
                 ),
                         Padding(
                           padding: const EdgeInsets.only(left: 5,right: 5),
                           child: Row(
                                children: [
                                 Expanded(
                                   child: TextFormField(
                                     controller: datecontroller,
                                     decoration: InputDecoration(
                                       border: OutlineInputBorder(),
                                       labelText: "Start date",
                                       suffixIcon: IconButton(onPressed: ()async{
                                         final showdate=await
                                         showDatePicker(context: context, 
                                         initialDate:DateTime.now() , 
                                         firstDate: DateTime(2000),
                                          lastDate: DateTime(2030));
                                          if (showdate!=null){
                                           String
                                           formateddate=DateFormat.yMMMMd().format(showdate);
                                           setState(() {
                                             date=formateddate;
                                             datecontroller.text=date;
                                           });
                                          }
                                         
                                       }, icon: Icon(Icons.calendar_month))
                                                       
                                     ),
                                   ),
                                 ),
                                                  Expanded(
                            child: TextFormField(
                              controller: datecontroller1,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "End date",
                                suffixIcon: IconButton(onPressed: ()async{
                                  final showdate=await
                                  showDatePicker(context: context, 
                                  initialDate:DateTime.now() , 
                                  firstDate: DateTime(2000),
                                   lastDate: DateTime(2030));
                                   if (showdate!=null){
                                    String
                                    formateddate=DateFormat.yMMMMd().format(showdate);
                                    setState(() {
                                      date=formateddate;
                                      datecontroller1.text=date;
                                    });
                                   }
                                  
                                }, icon: Icon(Icons.calendar_month))
                                                
                              ),
                            ),
                                                 ),
                                                 
                                                 
                                               ],
                                             ),
                         ),
              
              Row(
                children: [
                  Expanded(
                    child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text("Deleviry slot"),
                          ),
                           DropdownButtonFormField(decoration: InputDecoration(
                        
                      ),
                        items: list.map((e){
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e));
                    
                      }).toList(), onChanged: (String? value){
                        setState(() {
                          dropdownvalue=value!;
                        });
                      }),
                    
                        ],
                        
                  
                    ),
                  ),
                  Expanded(
                    child: Column(
                      
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25,right: 50),
                          child: Text("Total amount"),
                        ),
                        Text("15 itemsx 1 item= ₹79")
                  
                      ],
                    ),
                  )
                ],
              ) ,
              Text("Shipping address"),
              Card(
                child: ListTile(
                  title: Text("Sajin Philip"),
                  subtitle: Text("Address line1"),
                  trailing: Text(
                    "change"
                  ),
                ),
              ),
              Text("Coupon Code"),
              Card(
                child: ListTile(
                  title: Text("ABX2588T"),
                 
                  trailing: Text(
                    "ACTIVE"
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text("Bill Total: "),
                        Text("₹2580",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text("Discount: "),
                        Text("₹580",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text("Grand Total: "),
                        Text("₹2000",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30,top: 20),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Paymentpage(),));
                },
                  child: Container(
                    child: Center(child: Text("PAY NOW")),
                    height: 50,
                             
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Colors.yellow,Colors.black]),
                      
                    ),
                  ),
                ),
              )




               ],
             ),
            
                    
             
           
    
        
        

    );
  }
}

