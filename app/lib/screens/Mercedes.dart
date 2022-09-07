import 'package:flutter/material.dart';

class Screnn_2 extends StatelessWidget {
  const Screnn_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Mohammads();
  }
}

class Mohammads extends StatefulWidget {
  const Mohammads({super.key});

  @override
  State<Mohammads> createState() => _MohammadsState();
}

class _MohammadsState extends State<Mohammads> {
  bool myValu = false;
  bool Myvalu = false;
  String groub = "";
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
                      "https://th.bing.com/th/id/OIP.tcxolYxYIR2kMatZ8I1v6AHaE7?w=274&h=182&c=7&r=0&o=5&pid=1.7"),
                  fit: BoxFit.fill),
            ),
          ),
          CheckboxListTile(
            title: Text("This Car Is Available With A 4000 cc Enginer "),
            value: myValu,
            onChanged: (val) {
              setState(() {
                myValu = val!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("This car is available with seven seats "),
            value: myValu,
            onChanged: (val) {
              setState(() {
                Myvalu = val!;
              });
            },
          ),
          Text(
            "This car is available in several colors ",
            style: TextStyle(fontSize: 20, color: Colors.deepOrange),
          ),
          RadioListTile(
            title: Text("Color White"),
            value: "car",
            groupValue: groub,
            onChanged: (val) {
              setState(() {
                groub = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Color red"),
            value: "cars",
            groupValue: groub,
            onChanged: (val) {
              setState(() {
                groub = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Color Pink"),
            value: "carss",
            groupValue: groub,
            onChanged: (val) {
              setState(() {
                groub = val.toString();
              });
            },
          ),
          RadioListTile(
            title: Text("Color Silver "),
            value: "carsA",
            groupValue: groub,
            onChanged: (val) {
              setState(() {
                groub = val.toString();
              });
            },
          ),
        ],
      )),
    );
  }
}
