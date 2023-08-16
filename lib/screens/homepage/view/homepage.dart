import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/screens/homepage/cards/view/hotelcard.dart';
import 'package:myproject/screens/homepage/widgets/drawer.dart';
import 'package:myproject/screens/homepage/widgets/floatingaction.dart';
import 'package:myproject/screens/homepage/widgets/navigation_bar.dart';
import 'package:myproject/screens/homepage/widgets/searchbar.dart';
import 'package:myproject/screens/homepage/widgets/slider.dart';


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
     
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(child: Text('FoodNow',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.red.shade700),)),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {
            showSearch(
              context: context, delegate: CustomSearchBar());
          }, icon: Icon(Icons.search))
        ],
        
        
      ),
      drawer:DrawerCustomer(),

      body:
      
       Padding(
         padding: const EdgeInsets.all(8),
         child: SingleChildScrollView(
           child: Column(
             children: [
                // SizedBox(height: 60,),
                
                // DrawerTile(),     
                // SizedBox(height: 60,),
                
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
         ),
       ),
      
     
      bottomNavigationBar: buildNavigationBar(),
      floatingActionButton:BuildFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
    );
  }
}






