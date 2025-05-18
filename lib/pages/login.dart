import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/signup.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      height: MediaQuery.of(context).size.height/2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Text("Login",style: AppWidget.HeadlineTextFeildStyle(),),
                          SizedBox(height: 30,),
                          TextField(
                            decoration: InputDecoration(
                              hintText:'Email',
                              prefixIcon: Icon(Icons.email_outlined), ),
                          ),
                           SizedBox(height: 30,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText:'Password',
                              prefixIcon: Icon(Icons.password_outlined),),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Text("Forgot Password?",)),
                            SizedBox(height: 80,),
                            Material(
                              elevation: 5,
                              borderRadius:BorderRadius.circular(20),
                              child: Container(
                                padding:EdgeInsets.symmetric(vertical: 8),
                                width: 200,
                                decoration: BoxDecoration(color: Color(0Xffff5722),
                                borderRadius:BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight:FontWeight.bold ),
                                      ),
                                      ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                   GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                    child: Text("Don't have an account? SignUp"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}