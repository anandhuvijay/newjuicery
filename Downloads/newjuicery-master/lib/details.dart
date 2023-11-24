import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  String? index;
   Detailspage({super.key,this.index});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details"),
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
      body: ListView(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: Image.asset("assets/images/fruits.jpeg",fit: BoxFit.cover,),
          ),
        Container(
          width: double.infinity,
          height: 250,
          child: Column(
            children: [
                Text("Raw pomegranate",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text("size"),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(onPressed: (){}, child: Text("200 ml",style: TextStyle(color: Colors.black),)),
                         Padding(
                         padding: const EdgeInsets.only(left: 20),
                           child:OutlinedButton(onPressed: (){}, child: Text("500 ml",style: TextStyle(color: Colors.black),))
                           )
                         ],
                    ),
                     Row(mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                          Text("1"),
                          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                          Text("1 x ₹79")
                        ]
                     ),
                     Container(
                              child: Center(child: Text("ADD TO CART",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),)),
                              height: 30,
                              width: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [Colors.yellow,Colors.black]),
                                        
                                borderRadius: BorderRadius.circular(20),
                                        
                                        
                               ),
                                    
                               ),
                                    Container(
                              child: Center(child: Text("SUBSCRIBE",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),)),
                                      height: 30,
                                      width: 300,
                                  decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                                    
                       borderRadius: BorderRadius.circular(20),                                  ),
                              
             ),

            ],
          ),
        ),
        Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        Padding(
          padding: const EdgeInsets.only(top: 5,left: 10),
          child: Text("Drinking juices or smoothies is a great way to improve your health. It’s easy to add and combine healthy fruit and vegetables that can help support your immune system when you’re healthy or sick. Juice up your day with juices made with all-natural ingredients, fruits, and vegetables for a healthier way of life. "
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text("Nutrition fact",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                           Text("   200ml:"),
                    
                    ],
                  ),
             
                 
                  Padding(
                    padding: const EdgeInsets.only(right: 45),
                    child: Text("87g"),
                  )
                ],
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                      Text("   Calories:"),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text("80"),
                  )
                ],
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                      Text("   Fat:"),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("0.5g,  1%"),
                  )
                ],
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                      Text("   Cholestrol:"),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 38),
                    child: Text("0mg"),
                  )
                ],
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                      Text("   Sodium:"),
                    ],
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Text("0mg"),
                  )
                ],
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                      Text("   Carbohydrate:"),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Text("18g,  6%"),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fibare:"),
                    
                    Padding(
                      padding: const EdgeInsets.only(right: 53),
                      child: Text("2g"),
                    )
                  ],
                ),
              ),
                  Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sugars:"),
                   
                    Padding(
                      padding: const EdgeInsets.only(right: 53),
                      child: Text("2g"),
                    )
                  ],
                ),
              ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.radio_button_unchecked,size: 18,color: Colors.red,),
                      Text("   Protein:"),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(right: 53),
                    child: Text("3g"),
                  )
                ],
              ),
                 Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vitamin A:"),
                   
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text("2%"),
                    )
                  ],
                ),
              ),
                 Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Calcium:"),
                   
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text("0%"),
                    )
                  ],
                ),
              ),
                 Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Vitamin C:"),
                   
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: Text("10%"),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
        ],
      ),

    );
  }
}