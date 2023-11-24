import 'package:flutter/material.dart';

class Paymentpage extends StatefulWidget {
  const Paymentpage({super.key});

  @override
  State<Paymentpage> createState() => _PaymentpageState();
}

class _PaymentpageState extends State<Paymentpage> {
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
        ]
        ),
        body: Column(
          children: [
            ListTile(
              leading: Icon(Icons.account_balance_wallet_sharp),
              title: Text("Wallet (Balance: ₹580)"),
            ),
             ListTile(
              leading: Icon(Icons.mouse),
              title: Text("Net Banking"),
            ),
             ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("Card Payment"),
            ),
             ListTile(
              leading: Icon(Icons.money),
              title: Text("Cash On Delivery"),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                      child: Center(child: Text("PROCEED TO PAY")),
                      height: 50,
                               
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.yellow,Colors.black]),
                      )),
            )

            
          ],
        ),
       

        );
  }
}