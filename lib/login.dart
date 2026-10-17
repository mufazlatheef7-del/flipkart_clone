import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController=TextEditingController();
    final passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     title: Text("Login",
     style: TextStyle(
      color: Colors.black,
      fontSize: 29,
      fontWeight: FontWeight.bold
      
     ),
     ),
     centerTitle: true,
      ),
      body: Center(
        child:Container(
          color: const Color.fromARGB(255, 244, 243, 243),
          height: 500,  
          width: double.infinity,
          
          padding: EdgeInsets.all(20),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Align(
              alignment: Alignment.centerLeft,
           child:  Text(" Enter Email/Mobile Number",
            textAlign: TextAlign.left,
            ),
            ),
TextField(
  controller: usernameController,
  decoration: InputDecoration(
    hintText:"Email/Mobile Number",
    suffixIcon: Icon(Icons.email), 
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12)
    ),
  ),
),
SizedBox(height: 10,),
Align(
alignment: Alignment.centerLeft,
child: Text("Enter Your Password"),
),
TextField(
  controller: passwordController,
  obscureText: true,
  decoration: InputDecoration(
    hintText:"Password" ,
    suffixIcon: Icon(Icons.lock),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12)
    ),
  ),
),
SizedBox(height: 10,),

ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 29, 86, 184),
    minimumSize: Size(200, 55)
  ),
  onPressed: (){
  
  if(usernameController.text=="mufaz"&&
  passwordController.text =="1234"){
    Navigator.pushReplacement(
      context, MaterialPageRoute(
        builder: (context) =>Home())
        );
  }else{
    showDialog(
      context: context,
       builder: (context){
      return AlertDialog(
        title: Text("Login Failed"),
        content: Text("Invalid Username or Password"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Ok")),
        ],
      );
       }
       );
  }
}, child: Text("Login",
style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w400,
  fontSize: 20,
),
)),

SizedBox(height: 5,),
TextButton(onPressed: (){
}, child:Text("Forgot Password?") )
           ],
          ),
          
        ),
        
      ),
    );
  }
}