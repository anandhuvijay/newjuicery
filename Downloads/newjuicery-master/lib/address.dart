import 'package:flutter/material.dart';
import 'package:juicerryanandhu/profile.dart';

class Addresspage extends StatefulWidget {
  const Addresspage({super.key});

  @override
  State<Addresspage> createState() => _AddresspageState();
}

class _AddresspageState extends State<Addresspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profilepage(),));
      
                  }, icon:Icon(Icons.close))
                ],
              ),
            ),
            Text("Address",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Address name",labelStyle: TextStyle(color: Colors.pink),
             
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "First name",labelStyle: TextStyle(color: Colors.pink),
                  
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Last name",labelStyle: TextStyle(color: Colors.pink),
                    
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Mobile",labelStyle: TextStyle(color: Colors.pink),
                    
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "City",labelStyle: TextStyle(color: Colors.pink),
                 
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "House/Flat No",labelStyle: TextStyle(color: Colors.pink),
                   
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Residential Complex",labelStyle: TextStyle(color: Colors.pink),
            
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Area",labelStyle: TextStyle(color: Colors.pink),
                  
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Pincode",labelStyle: TextStyle(color: Colors.pink),
                 
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Street Name",labelStyle: TextStyle(color: Colors.pink),
                  
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
              
                    labelText: "Landmarks",labelStyle: TextStyle(color: Colors.pink),
                   
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red,),
              
                  ),
                  child: Center(child: Text("Update",style: TextStyle(fontSize: 18),)),
                ),
              ),
              Center(child: Text("Cancle",style: TextStyle(fontSize: 18),)),
              SizedBox(
                height: 40,
              )
              
          ]
        ),
      )
    );
  }
}