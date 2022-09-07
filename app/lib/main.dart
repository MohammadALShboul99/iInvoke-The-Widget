import 'package:app/screens/Lexis.dart';
import 'package:app/screens/Mercedes.dart';
import 'package:app/screens/BMW.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.deepOrange])),
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Choose who is your favorite car",
                style: TextStyle(fontSize: 27),
              ),
              SizedBox(
                height: 30,
              ),
              Mywidget(
                "Lexis",
                Colors.green,
                NetworkImage(
                    "https://th.bing.com/th/id/OIP.FknHzHlIi4vDpHrXZLEw0AAAAA?w=284&h=180&c=7&r=0&o=5&pid=1.7"),
                () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Screnn_1();
                  })));
                },
              ),
              SizedBox(
                height: 40,
              ),
              Mywidget(
                "Mercedes-Benz",
                Colors.indigoAccent,
                NetworkImage(
                    "https://th.bing.com/th/id/OIP.MMZStE1BVIU_gLTig9N2VwHaEK?w=319&h=180&c=7&r=0&o=5&pid=1.7"),
                () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Screnn_2();
                  })));
                },
              ),
              SizedBox(
                height: 40,
              ),
              Mywidget(
                "BMW",
                Colors.cyan,
                NetworkImage(
                    "https://th.bing.com/th/id/OIP.C3HMIgpvnD13pRbm6_RhFAHaE8?w=297&h=197&c=7&r=0&o=5&pid=1.7"),
                () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Screnn_3();
                  })));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Mywidget extends StatelessWidget {
  Mywidget(this.myWidgetText, this.Mycolor, this.img, this.OnmyTap);
  String? myWidgetText;
  Color Mycolor;
  NetworkImage? img;
  Function() OnmyTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnmyTap,
      child: Container(
        color: Mycolor,
        child: ListTile(
          title: Text(myWidgetText!),
          leading: Image(image: img!),
          trailing: Icon(Icons.car_crash),
        ),
      ),
    );
  }
}
