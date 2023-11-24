import 'package:flutter/material.dart';
import 'package:juicerryanandhu/api.dart';
import 'package:juicerryanandhu/details.dart';
import 'package:juicerryanandhu/apimodels/productmodel.dart';



class plainpage extends StatefulWidget {
  const plainpage({super.key});

  @override
  State<plainpage> createState() => _plainpageState();
}

class _plainpageState extends State<plainpage> {
    List<int> itemCounts =
      List.generate(10, (index) => 0); 

  void _incrementCount(int index) {
    setState(() {
      itemCounts[index]++;
    });
  }

  void _decrementCount(int index) {
    if (itemCounts[index] > 0) {
      setState(() {
        itemCounts[index]--;
      });
    }
  }
   ValueNotifier<List<Data>>plist=ValueNotifier([]);
  @override
  void initState() {
    
    super.initState();
    Productlist();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  Stack(
          children: [
        ValueListenableBuilder(valueListenable:plist ,
         builder: (context, List<Data>newp, child) {
           return     ListView.builder(
              itemCount:newp.length ,
              itemBuilder:(context, index) {
                final polist=plist.value[index];
              return SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) => Detailspage(index: polist.id,),));
                    },
                    child: Card(
                      elevation: 20,
                      shadowColor: Colors.yellow,
                      child: Row(
                        children: [
                          Container(
                            height: 200,
                            width:105,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Image.network(polist.image.toString()),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                          
                                Text(polist.pname.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("size"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      OutlinedButton(onPressed: (){},
                                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                                       child: Text(polist.size.toString(),style: TextStyle(color: Colors.black),)),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child:OutlinedButton(onPressed: (){},
                                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                                         child: Text("500 ml",style: TextStyle(color: Colors.black),))
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(onPressed: (){
                                      _incrementCount(index);
                                    }, icon: Icon(Icons.add)),
                                    Text('${itemCounts[index]}'),
                                    IconButton(onPressed: (){
                                     _decrementCount(index);
                                    }, icon: Icon(Icons.remove)),
                                    Container(
                                      child: Center(child: Text("ADD TO CART",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),)),
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.pink
                                        
                                      ),
                                      
                                    )
                                  ],
                                )
                               
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4,top: 5,left: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [Text("1x₹",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text(polist.prize.toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
             ) ;
         },)
          ],
        ),);
  }
    
void Productlist()async{
   
      final result =await Apiclass().fectchhome();
      print("222222222${result.data}");
      if(result !=null){
        if(result.status==true){
        setState(() {
          print(result.data);
          plist.value.clear();
          plist.value.addAll(result.data);
        });
        }else{
       
        }
      }

    }
   

  }
