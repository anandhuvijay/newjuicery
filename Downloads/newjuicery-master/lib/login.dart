import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:juicerryanandhu/api.dart';
import 'package:juicerryanandhu/home&tabbar/home.dart';
import 'package:juicerryanandhu/reg.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final emailcontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 350,
              width: 400,
              child: Image.asset("assets/images/juice-high-resolution-logo-black-transparent (3).png"),
            ),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
               labelText: "EMAIL"
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                       labelText: "PASSWORD"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
              width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.yellow,Color.fromARGB(255, 0, 0, 0)])
              ),
              
                      
                child: ElevatedButton(onPressed: (){
                  loginuser();
                 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                 child: Text("LOG IN"))),
            ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  TextButton(onPressed: (){}, child: Text("Forgot password?",
                  style: TextStyle(color: Colors.grey,fontSize: 17),)),
                  TextButton(onPressed: (){
     
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Registerscreen(),));
                  }, child: Text("Create new account",
                  style: TextStyle(color: Colors.grey,fontSize: 17)
                  )),
                  SizedBox(),
                ],
              )
      
          ],
        ),
      ),
    );
  }
  void loginuser()async{
   final email=emailcontroller.text;
   final password=passwordcontroller.text;

   if (email.isEmpty==true){
    showErrorMessage('Please enter Email');
   }else if(password.isEmpty==true){
    showErrorMessage('please enter password');
   }
   else{
    final formdata=FormData.fromMap({
      'Email':emailcontroller,
      'Password':passwordcontroller,
    });
    print("$formdata");
    final result=await Apiclass().loginuserapi(formdata);
    if (result!=null){
      if(result.status==true){
        // showSuccessMessage(result.message!);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
      }else{
        showErrorMessage(result.message!);
      }
    }
   }
  }
  void showErrorMessage(String message){
    MotionToast.error(
      title: Text('Error',style: TextStyle(fontWeight: FontWeight.bold),),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
      animationDuration: Duration(milliseconds: 5),
      description: Text(message)).show(context);
  }


  void showSuccessMessage(String message){
    MotionToast.success(
      title: Text('Success',style: TextStyle(fontWeight: FontWeight.bold),),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
      description: Text(message)).show(context);
  }
}