import 'package:flutter/material.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    
    return  DefaultTabController(
      length: 3,
       child: Scaffold(
        appBar: AppBar(title: Text("Notification"),
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
        bottom: TabBar(tabs: [
          Tab(child: Text("ALERTS"),),
          Tab(child: Text("OFFERS"),),
      
        ]),
        ),
        body:ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
          return SizedBox(height: 220,
          width: double.infinity,
            child: Card(elevation: 20,
            shadowColor: Colors.red,
            
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 8),
                    child: Text("Notification header",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 8),
                    child: Text("17 july 2017 12:30 pm",style: TextStyle(fontSize: 15,color: Colors.pink),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("A notification is a message that Android displays outside your app's UI to provide the user with reminders, communication from other people, or other timely information from your app. Users can tap the notification to open your app or take an action directly from the notification."),
                  )
                ],
              ),
          
            ),
          );
        },) ,)
    );
  }
}