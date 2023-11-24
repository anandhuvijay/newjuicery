import 'package:flutter/material.dart';
import 'package:juicerryanandhu/profile.dart';

class Passwordpage extends StatefulWidget {
  const Passwordpage({super.key});

  @override
  State<Passwordpage> createState() => _PasswordpageState();
}

class _PasswordpageState extends State<Passwordpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15),
            child: Text("Change Password",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 5,right: 5),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  
                ),
                labelText: "Old Password",
                hintText: "***********"
              ),
            ),
          ),
             Padding(
               padding: const EdgeInsets.only(top: 20,left: 5,right: 5),
               child: TextField(
                         decoration: InputDecoration(
                border: OutlineInputBorder(
                  
                ),
                labelText: "New Password",
                hintText: "Enter here...."
                         ),
                       ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20,right: 5,left: 5),
               child: TextField(
                         decoration: InputDecoration(
                border: OutlineInputBorder(
                  
                ),
                labelText: "Re-enter Password",
                hintText: "Enter here...."
                         ),
                       ),
             ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Container(
                      child: Center(child: Text("Update",style: TextStyle(fontSize: 18,color: Colors.white),)),
                      height: 50,
                               
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(colors: [Colors.yellow,Colors.black]),
                        
                      ),
                    ),
             ),
             Center(child: Text("Cancle",style: TextStyle(fontSize: 18),))
        ],
      ),
    );
  }
}