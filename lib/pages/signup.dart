import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/bottomnav.dart';
import 'package:food_delivery_app/pages/login.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  String email = "", password = "",name = "";

  TextEditingController namecontroller = new TextEditingController();

  TextEditingController passwordcontroller = new TextEditingController();

  TextEditingController mailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration()async{
    if(password!=null){
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
           backgroundColor:Colors.redAccent ,
          content: Text("Registered Successfilly",
          style: TextStyle(fontSize: 20),)));
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav()));
      }on FirebaseAuthException catch(e){
        if(e.code=='weak-password'){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
             backgroundColor:Colors.orangeAccent ,
            content: Text(
              "Password Provided is too Weak",
              style: TextStyle(fontSize: 18),)));
        }
        else if(e.code == "email-already-in-use"){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor:Colors.orangeAccent ,
            content: Text(
              "Account Already exisists",
              style: TextStyle(fontSize: 18),)));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                  Color(0xFFff5c30),
                  Color(0xFFe74b1a),
                ],),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(
                  topLeft:Radius.circular(40),
                  topRight: Radius.circular(40),
                   ),
                    ),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60,left: 20,right: 20),
              child: Column(
                children: [
                  // Center(child: Image.asset("images/logo.png",width: MediaQuery.of(context).size.width/1.5,fit: BoxFit.cover,)),
                  SizedBox(height: 50,),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Form(
                        key: _formkey,
                        child: Column(
                          children: [
                            SizedBox(height: 30,),
                            Text("SignUp",style: AppWidget.HeadlineTextFeildStyle(),),
                            SizedBox(height: 30,),
                            TextFormField(
                              controller: namecontroller,
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Enter Username';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText:'Username',
                                prefixIcon: Icon(Icons.person_outline), ),
                            ),
                            SizedBox(height: 30,),
                            TextFormField(
                              controller: mailcontroller,
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Enter E-mail';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText:'Email',
                                prefixIcon: Icon(Icons.email_outlined), ),
                            ),
                             SizedBox(height: 30,),
                            TextFormField(
                              controller: passwordcontroller,
                              validator: (value){
                                if(value == null || value.isEmpty){
                                  return 'Please Enter Password';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText:'Password',
                                prefixIcon: Icon(Icons.password_outlined),),
                            ),
                              SizedBox(height: 80,),
                              GestureDetector(
                                onTap: () async{
                                  if(_formkey.currentState!.validate()){
                                    setState(() {
                                      email = mailcontroller.text;
                                      name = namecontroller.text;
                                      password =passwordcontroller.text;
                                    });
                                  }
                                    registration();
                                },
                                child: Material(
                                  elevation: 5,
                                  borderRadius:BorderRadius.circular(20),
                                  child: Container(
                                    padding:EdgeInsets.symmetric(vertical: 8),
                                    width: 200,
                                    decoration: BoxDecoration(color: Color(0Xffff5722),
                                    borderRadius:BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        "SIGN UP",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight:FontWeight.bold ),
                                          ),
                                          ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text("Already have an account? LogIn"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}