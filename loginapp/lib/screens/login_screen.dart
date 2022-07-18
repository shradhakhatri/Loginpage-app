

import 'package:flutter/material.dart';
import 'package:loginapp/screens/homescreen.dart';

TextStyle mystyle = TextStyle(fontSize: 25);

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
var username;
var password;


  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val){
        setState(() {
          username = val;
        });
      style: mystyle;
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: 'Username',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),);
      }
    );
    final passwordField = TextField(
      onChanged: (val){
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          )),
    );
    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 25),),
        onPressed: () {
         if(username == 'brp'&& password == 'pass1234'){
           Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(username)));
         }else{
           print('Login is failed');

         }
        },
      ),
    );

    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        child: Padding(padding: EdgeInsets.all(20),
        child:ListView(
          children: [
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Icon(Icons.supervised_user_circle, size: 100,),
            SizedBox(height: 150,),
            usernameField,
            SizedBox(height: 10,),
            passwordField,
            SizedBox(height: 10,),
            myLoginButton,

          ],
        ),
          ],
        )
        ),
      )),
    );
  }
}
