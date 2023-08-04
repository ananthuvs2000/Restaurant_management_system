import 'package:flutter/material.dart';
import 'package:myproject/homepage/home.dart';

import 'package:myproject/signup/view/customersignup.dart';




class LoginPg extends StatelessWidget {
  const LoginPg({super.key, });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/images/loginpage.webp')),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 70),
              child: Text("Welcome" ,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white70,fontSize: 36),),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300,right: 25,left: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(Icons.mail_outline_outlined),
                          hintText: 'Email or Phone',
                          fillColor:Colors.white,
                          filled: true,

                        ),
                      ),
                      SizedBox(height: 20,),
                     TextFormField(
                      obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintText: 'Enter your password',
                          fillColor:Colors.white,
                          filled: true,

                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        textStyle:MaterialStateProperty.all<TextStyle>(
                TextStyle(fontSize: 20,),
              ), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
                        ),
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage(),));
                      }, child:Text("LOGIN",style: TextStyle(color: Colors.white),),),
                    TextButton(onPressed: () {
                        
                      }, child: Text("Forgot Password",style: TextStyle(fontSize: 16),)),
                      SizedBox(height: 270,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Create an account ", style: TextStyle(color: Colors.white,fontSize: 18),),
                          TextButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>CustomerSignup() ,));
                          }, child: Text("Signup",style: TextStyle(fontSize: 18,),),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}