import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(this.name, this.title, this.image);

  final String name;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
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
