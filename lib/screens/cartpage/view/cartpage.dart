import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
 CartPage({Key? key,required this.totalamount,});
  num totalamount;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
                  leading: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  title: Center(child: Text('FoodNow            ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.red.shade700),)),
                  
      ),
      body: Center(
        child: Text('Total Amount :${widget.totalamount}'),
      ),
    );
  }
}