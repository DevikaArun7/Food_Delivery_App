import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/details.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool icecrem=false, pizza=false, salad=false, burger=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50,left: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Devika",
                style: AppWidget.boldTextFeildStyle()
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.shopping_cart,color: Colors.white,),
            ),
              ],
            ),
            SizedBox(height: 20,),
            Text("Delicious Food",
                style: AppWidget.HeadlineTextFeildStyle()
                ),

                Text("Discover and Get Great Food",
                style: AppWidget.LightTextFeildStyle(),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: showItem()),

                SizedBox(height: 30,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: EdgeInsets.all(14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "images/salad2.png",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                    ),
                                  Text("Veggie Taco Hash",
                                  style: AppWidget.semiBoldTextFeildStyle(),),
                                  SizedBox(height: 5,),
                                  Text("Fresh and Healthy",
                                  style: AppWidget.LightTextFeildStyle(),),
                                  SizedBox(height: 5,),
                                  Text("\$25",style: AppWidget.semiBoldTextFeildStyle(),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                       Container(
                        margin: EdgeInsets.all(5),
                         child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/salad2.png",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                  ),
                                Text("Mix Veg Salad",
                                style: AppWidget.semiBoldTextFeildStyle(),),
                                SizedBox(height: 5,),
                                Text("Spicy with Onion",
                                style: AppWidget.LightTextFeildStyle(),),
                                SizedBox(height: 5,),
                                Text("\$28",style: AppWidget.semiBoldTextFeildStyle(),),
                              ],
                            ),
                          ),
                                             ),
                       ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/salad2.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                            ),
                            SizedBox(width: 20,),
                            Column(children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Mediterranean Chickpea Salad",style:AppWidget.semiBoldTextFeildStyle() ,)),
                                SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Honey goot cheese",style:AppWidget.LightTextFeildStyle(),)),
                            SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("\$28",style:AppWidget.semiBoldTextFeildStyle(),)),
                            ],)
                        ],
                      ) ,
                    ),
                  ),
                ),
                
          ],
        ),
      ),
    );
  }
  Widget showItem(){
     return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,    
                  children: [
                   GestureDetector(
                    onTap: () {
                      icecrem = true;
                      pizza = false;
                      salad = false;
                      burger = false;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: icecrem?Colors.black: Colors.white,borderRadius:BorderRadius.circular(10) ),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/ice-cream.png",height: 40,width: 40,fit: BoxFit.cover,color: icecrem?Colors.white: Colors.black,),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      icecrem = false;
                      pizza = true;
                      salad = false;
                      burger = false;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: pizza?Colors.black: Colors.white,borderRadius:BorderRadius.circular(10) ),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/pizza.png",height: 40,width: 40,fit: BoxFit.cover,color: pizza?Colors.white: Colors.black,),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                      icecrem = false;
                      pizza = false;
                      salad = true;
                      burger = false;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: salad?Colors.black: Colors.white,borderRadius:BorderRadius.circular(10) ),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/salad.png",height: 40,width: 40,fit: BoxFit.cover,color: salad?Colors.white: Colors.black,),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                      icecrem = false;
                      pizza = false;
                      salad = false;
                      burger = true;
                      setState(() {
                        
                      });
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(color: burger?Colors.black: Colors.white,borderRadius:BorderRadius.circular(10) ),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("images/burger.png",height: 40,width: 40,fit: BoxFit.cover,color: burger?Colors.white: Colors.black,),
                      ),
                    ),
                  ),
                ],
                );
  }
}