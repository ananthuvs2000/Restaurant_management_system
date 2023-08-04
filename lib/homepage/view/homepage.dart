import 'package:flutter/material.dart';
import 'package:myproject/cards/view/hotelcard.dart';
import 'package:myproject/homepage/widgets/drawer.dart';
import 'package:myproject/homepage/widgets/slider.dart';





class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
with SingleTickerProviderStateMixin {
   late TabController _controller;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=TabController(length: 3, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        
      ),
      drawer:DrawerCustomer(),
      body:
      
       Column(
         children: [
        SliderScreen(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Restaurants near you",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                TextButton(onPressed: () {
                  
                }, child: Text('Change location')),
              ],
            ),
          ),
          SizedBox(height: 15,),
           Row(
             children: [
             
               Container(
                width: 200,
                height: 200,
                child: HotelCard(),
      ),
             ],
           ),
           SizedBox(height: 20),
           Padding(
             padding: const EdgeInsets.only(left: 15),
             child: Row(
               children: [
                 Text('Hey! What do you Preffer',style: TextStyle(fontWeight: FontWeight.w500),),
               ],
             ),
           ),
           TabBar(
            labelColor: Colors.black54,
            tabs: [
            Tab(
              text: 'Meals',
            ),
            Tab(
              text: 'Cafe',
            ),
            Tab(
              text: 'Spicy',
            ),
            ],
           controller: _controller,
           )
         ],
         
       ),
      
     
      bottomNavigationBar: BottomNavigationBar(items: [const BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon:Icon(Icons.settings_sharp),label: 'Settings' ),
      ]),
    );
  }
}