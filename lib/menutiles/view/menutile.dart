import 'package:flutter/material.dart';
import 'package:myproject/menutiles/widgets/selction.dart';

class MenuTile extends StatefulWidget {
   MenuTile({super.key});
  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  int _counter=0;
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
    return Expanded(
      child: Container(
        
        child: ListTile(
        // onTap: () => showDialog(context: context, builder: (BuildContext context){
        //   return AlertDialog(
        //     title: Text("Make your order"),
        //     content: Column(
        //       children: [
        //         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text('Quantity'),
        //             Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10),
        //                 border: Border.all(color: Colors.black,),
        //               ),
        //               height: 35,
        //               width: 110,
        //               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   IconButton(onPressed: () {
        //                     quantityLess();
        //                   }, icon: Icon(Icons.remove)),
        //                   Text('$_counter'),

        //                   IconButton(onPressed: () {
        //                     quantityAdd();
        //                   }, icon: Icon(Icons.add)),
        //                 ],
        //               ),
                      
        //             )
        //           ],
        //         ),
        //       ],
        //     ),

        //   );
        // },
        // ),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ItemSelection(),)),
          title: Text('Chicken Biriyani'),
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/hotel1.jpeg'),
            
          ),
          subtitle: Text('Availability'),
          trailing: Text('160/-'),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// // import other required packages

// class MenuTile extends StatefulWidget {
//   MenuTile({super.key});

//   @override
//   State<MenuTile> createState() => _MenuTileState();
// }

// class _MenuTileState extends State<MenuTile> {
//   int _counter = 0;

//   void quantityAdd() {
//     setState(() {
//       _counter++;
//     });
//   }
//   void quantityLess(){
//     setState(() {
//       _counter--;
//     });
//   }

 
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         child: ListTile(
//           title: Text('Chicken Biriyani'),
//           leading: CircleAvatar(
//             radius: 40,
//             backgroundImage: AssetImage('assets/images/hotel1.jpeg'),
//           ),
//           subtitle: Text('Availability'),
//           trailing: Column(
//             children: [
//               Text('160/-'),
//               Expanded(
//                 child: Container(
//                   height: 30,
//                   width: 90,
//                   child: Row(
//                     children: [
//                        IconButton(onPressed: () {
//                          quantityLess();
//                        }, icon: Icon(Icons.remove)),
//                       Text('$_counter'),
//                       IconButton(
//                         onPressed: () {
//                           quantityAdd();
//                         },
//                         icon: Icon(Icons.add),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
