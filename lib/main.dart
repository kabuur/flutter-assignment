import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MaterialApp(
    home: Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});
  final String name1 = "Ahmed Abdulkadir Mohamed";
  final String image = 'images/l.jpg';
  final String Titel_second_screen = "SECOND SCREEN";
  final String Title_screen_one = "Screen one";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              itemBuilder: ((context) => [
                    PopupMenuItem(value: "mogadishu", child: Text("Mogadishu")),
                    PopupMenuItem(value: "Hargesa", child: Text("Hargesa")),
                    PopupMenuItem(value: "Kismayo", child: Text("Kismayo"))
                  ]))
        ],
        title: Text(Title_screen_one),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.fill,
                // height: 200,
                // width: 200,
              ),
            ),
            SizedBox(
              width: 300,
              child: Text(
                name1,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(name1,Titel_second_screen,image)));
              },
              child: Text("go  Second Screen"),
            )
          ],
        ),
      ),
    );
  }
}
