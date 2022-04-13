import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Application'),
        centerTitle: true,
      ),
      body: Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/bmilogo.png'),
          ],
        ),
        Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '32',
                label: Text('Age'),
                icon: Icon(Icons.person)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '5.4',
                label: Text('Height in Feet'),
                icon: Icon(Icons.table_chart)
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: '180',
                label: Text('Weight In lb'),
                icon: Icon(Icons.table_rows_outlined)
              ),
            )
          ],
        )
      ],
      )
    );
  }
}