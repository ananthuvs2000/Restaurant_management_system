import 'package:flutter/material.dart';
import 'package:myproject/widget/dropdown.dart';

class ItemSelection extends StatefulWidget {
  const ItemSelection({super.key});

  @override
  State<ItemSelection> createState() => _ItemSelectionState();
}

class _ItemSelectionState extends State<ItemSelection> {
  int _counter=1;
  void quantityAdd() {
    setState(() {
      _counter++;
    });
  }
  void quantityLess(){
    setState(() {
      _counter--;
    });
  }
  
 
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
              
              Expanded(
               
                
                child: Container(
                  color: Colors.white54,
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(  
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 150,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          
                            Text('Chicken Biriyani',style: TextStyle(color: Colors.black87,fontSize: 20),),
                            Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(onPressed: () {
                                    quantityLess();
                                  }, icon: Icon(Icons.remove)),
                                  Text('$_counter'),
                                  IconButton(onPressed: () {
                                    quantityAdd();
                                  }, icon: Icon(Icons.add)),
                                ],
                              ),
                            ),
                          ],
                        ),
                       
                        SizedBox(height: 20,),
                       
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('GST Amount'),
                            Text('2.57'),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Amount'),
                            Text('${_counter*100}')
                          ],
                        ),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Add a coupon'),
                            ElevatedButton(onPressed: () {
                              showDialog(context: context,
                               builder: (BuildContext context){
                                return AlertDialog(
                                  
                                  title: Text('add Coupon'),
                                  content: Center(
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Coupon Code'
                                          ),
                                        ),
                                        ElevatedButton(onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => ItemSelection(),));
                                        }, child: Text('Apply')),
                                      ],
                                    ),
                                  ),
                                );
                               }
                              );
                            }, child: Text('Coupon'),),
                          ],
                        ),
                        SizedBox(height: 25,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('No.of persons'),
                           DropdownWidget(),
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),   
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                        textStyle:MaterialStateProperty.all<TextStyle>(
                TextStyle(fontSize: 20,color: Colors.black),
              ), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
                        ),
                    onPressed: () {
                    
                  }, child: Text('Proceed to Payment')),
                ],
              )
            
            ],
          ),
        ],
      ),
      
     
    );

  }
}