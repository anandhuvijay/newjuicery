

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:juicerryanandhu/api.dart';
import 'package:juicerryanandhu/login.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final nameclr=TextEditingController();
  final emailclr=TextEditingController();
  final mobileclr=TextEditingController();
  final passclr=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              width: 400,
              child: Image.asset("assets/images/juice-high-resolution-logo-black-transparent (1).png",),
            ),
            TextField(
              controller: nameclr,
              decoration: InputDecoration(
               
              
               
                labelText: "NAME",
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 5),
               child: TextField(
                controller: emailclr,
                decoration: InputDecoration(
                 
                  
                  labelText: "EMAIL",
                ),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 5),
               child: TextField(
                controller: mobileclr,
                decoration: InputDecoration(
                  
                  labelText: "MOBILE",
                ),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 5),
               child: TextField(
                controller: passclr,
                decoration: InputDecoration(
                  
                  labelText: "PASSWORD",
                ),
                         ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 5),
               child: TextField(
                decoration: InputDecoration(
                 
                  labelText: "RE-ENTER PASSWORD",
                ),
                         ),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.yellow,const Color.fromARGB(255, 0, 0, 0)])
              ),
            
                child: ElevatedButton(onPressed: (){
                  registeruser();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                      
                
              
                    
                 child: Text("REGISTER NOW")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(fontSize: 17,color: Colors.pink),),
                  InkWell(onTap: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => Loginscreen(),));
                  },
                    child: Text("login here",style: TextStyle(fontSize: 17,color: Colors.pink),))
                ],
              )),
            )
      
          ],
        ),
      ),
    );
  }
  
void registeruser()async{
    final name= nameclr.text;
    final email= emailclr.text;
    final mobile= mobileclr.text;
    final password= passclr.text;
    if (name.isEmpty) {
      showErrorMessage('Name is required');
    } else if (email.isEmpty){
      showErrorMessage('Email is required');
    }else if (mobile.isEmpty){
      showErrorMessage('Mobile number is empty');
    }else if (password.isEmpty){
      showErrorMessage('Password is required');
    }

    else{
      final formdata=FormData.fromMap({
         'name':name,
        'email':email,
        'mobile':mobile,
        'password':password
      });
      final result =await Apiclass().registeruserapi(formdata);
      if(result !=null){
        if(result.status==true){
          showSuccessMessage(result.message!);
        }else{
          showErrorMessage(result.message!);
        }
      }

    }
   

  }
  void showErrorMessage(String message){
    MotionToast.error(
      title: const Text(
        "Error",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }

   void showSuccessMessage(String message) {
    MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }

  }



  
 
