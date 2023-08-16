import 'package:flutter/material.dart';
import 'package:myproject/menutiles/menu.dart';

class HotelsList extends StatelessWidget {
  const HotelsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
       Stack(
        
        children: [
          CircleAvatar(backgroundColor: Colors.white54,),
          
       
         
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 10),
            child:CircleAvatar(
              
              backgroundColor: Colors.white38,
            child: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black54,)))
          ),
          
          Column(
            children: [
              SizedBox(height: 200,),
              Expanded(
                
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(2),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text('Hotel Name',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black87,fontSize: 30),),
                            Text('Location',style: TextStyle(fontSize: 18),),
                            SizedBox(height: 30,),
                            MenuTile(),
                          ],
                        ),
                        
                      ),
                    ),
                  ),
                ),
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}

    
  
