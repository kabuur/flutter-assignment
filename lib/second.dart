import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen two"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/a.jpg'),
              fit: BoxFit.fill,
              // height: 300,
              width: 200,
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("back"),
            )
          ],
        ),
      ),
    );
  }
}
