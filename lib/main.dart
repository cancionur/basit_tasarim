import 'package:flutter/material.dart';
import "package:basit_tasarim/renkler.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFE3E2D8)),
      debugShowCheckedModeBanner: false,
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Coffee Shop",style: TextStyle(fontFamily: "Abril",fontSize: 22),),
      centerTitle: true, backgroundColor: mainColor2,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text("DETAILS",style: TextStyle(fontFamily: "Abril",fontSize: 18),),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Image.asset(
          "pictures/coffee_pic.jpg",
          width: 375,
          height: 200,
          fit: BoxFit.cover,
      ),
        ),
      Padding(
        padding: const EdgeInsets.only(top: 16,left: 24),
        child: Container(width: 400, height: 50, child: Align(alignment: Alignment.topLeft,
          child: Text("Filtered Coffee",style: TextStyle(fontFamily: "Abril",fontSize: 22)),), ),
      ),

          Padding(
            padding: const EdgeInsets.only( left: 24),
            child: Container(width: 400, height: 40,
              child: Align(alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Image.asset("pictures/star.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("5.0",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("(2234 Reviews)", style: TextStyle(color: mainColor4),),
                    )
                  ],
                ),
               ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 16,left: 24,bottom: 24),
            child: Text("Drip brewing, or filtered coffee, is a method which involves pouring water over roasted, "
                "ground coffee beans contained in a filter, creating the beverage called coffee.",
            style: TextStyle(color : Colors.black),),
          ),

          Padding(
            padding: const EdgeInsets.only( left: 24),
            child: Align(alignment: Alignment.topLeft,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("SIZE", style: TextStyle(fontFamily: "Abril", fontSize: 22),),
                  ElevatedButton(onPressed: (){}, child: Text("S"), style: ElevatedButton.styleFrom(primary: mainColor),),
                  ElevatedButton(onPressed: (){}, child: Text("M"), style: ElevatedButton.styleFrom(primary: mainColor2),),
                  ElevatedButton(onPressed: (){}, child: Text("L"), style: ElevatedButton.styleFrom(primary: mainColor3),),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only( top: 24, left: 24),
            child: Align(alignment: Alignment.topLeft,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("NUMBER", style: TextStyle(fontFamily: "Abril", fontSize: 22),),
                  ElevatedButton(onPressed: (){}, child: Text("-"), style: ElevatedButton.styleFrom(primary: mainColor),),
                  ElevatedButton(onPressed: (){}, child: Text("1"), style: ElevatedButton.styleFrom(primary: mainColor),),
                  ElevatedButton(onPressed: (){}, child: Text("+"), style: ElevatedButton.styleFrom(primary: mainColor),),
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only( left: 24,top: 24),
            child: Align(alignment: Alignment.topLeft,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("\$ 25.00", style: TextStyle(fontFamily: "Abril", fontSize: 40),),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: ElevatedButton(onPressed: (){}, child: Text("Buy Now"),
                    style: ElevatedButton.styleFrom(primary: Colors.black38),),
                  ),
                ],
              ),
            ),
          ),
          


         
        ],
      ),
    );
  }
}
