import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MaterialApp(
    home: Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});
  final String name1 = "Sharif Dahir Siad";
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
        title: Text("Screen one"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SafeArea(
              child: Image(
                image: AssetImage('images/a.jpg'),
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
                        builder: (context) => SecondScreen(name1)));
              },
              child: Text("go next Screen"),
            )
          ],
        ),
      ),
    );
  }
}
