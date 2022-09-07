import 'package:flutter/material.dart';

class Screnn_1 extends StatelessWidget {
  Screnn_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Mohammad();
  }
}

class Mohammad extends StatefulWidget {
  const Mohammad({super.key});

  @override
  State<Mohammad> createState() => _MohammadState();
}

class _MohammadState extends State<Mohammad> {
  bool myVal = false;
  bool Myval = false;
  String groubby = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.Z2SDUKRZCGLStQVKBK2GcgHaEK?w=297&h=180&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.fill),
            ),
          ),
          CheckboxListTile(
            title: Text("This Car Is Available With A 3500cc Enginer "),
            value: myVal,
            onChanged: (val) {
              setState(() {
                myVal = val!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("This car is available with seven seats "),
            value: Myval,
            onChanged: (val) {
              setState(() {
                Myval = val!;
              });
            },
          ),
          Text(
            "This car is available in several colors ",
            style: TextStyle(fontSize: 20, color: Colors.deepOrange),
          ),
          RadioListTile(
            title: Text("Color Black"),
            value: "car",
            groupValue: groubby,
            onChanged: (val) {
              setState(() {
                groubby = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Color White"),
            value: "cars",
            groupValue: groubby,
            onChanged: (val) {
              setState(() {
                groubby = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Color Red"),
            value: "carss",
            groupValue: groubby,
            onChanged: (val) {
              setState(() {
                groubby = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Color Pink"),
            value: "carsA",
            groupValue: groubby,
            onChanged: (val) {
              setState(() {
                groubby = val.toString();
              });
            },
          ),
        ],
      )),
    );
  }
}
