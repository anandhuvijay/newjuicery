import 'package:flutter/material.dart';
import 'package:juicerryanandhu/cart.dart';
import 'package:juicerryanandhu/home&tabbar/greens.dart';
import 'package:juicerryanandhu/home&tabbar/mix.dart';
import 'package:juicerryanandhu/home&tabbar/plain.dart';




import '../drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
var a="";
class _HomepageState extends State<Homepage> {
 
  Widget build(BuildContext context) {

  
    
    return
    
     DefaultTabController(
      length: 3,
       child: Scaffold(
        appBar: AppBar(title: Text("Fressery"),
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
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cartpage(),));
          }, icon: Icon(Icons.shopping_basket))
        ],
        bottom: TabBar(tabs: [
          Tab(child: Text("Plain"),),
          Tab(child: Text("Mix"),),
          Tab(child: Text("Greens"),)
        ]),
        ),
        drawer: Drawerwidget(),
        body:TabBarView(children: 
        [
          plainpage(),
          Mixpage(),
          Greenspage(),
        ]),
        )
        );
        }
        }
        
        


