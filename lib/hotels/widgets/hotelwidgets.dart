import 'package:flutter/material.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                           
                          ],
                        ),
                        
                      ),
                    ),
                  ),
                );
  }
}