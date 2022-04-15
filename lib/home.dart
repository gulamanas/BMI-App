import 'package:flutter/material.dart';

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
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(2.0),
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/bmilogo.png',
              width: 95.0,
            ),
            
          ],
        ),
        Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              children: [
                TextField(
      controller: null,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'E.g: 32',
        label: Text('Age'),
        prefixIcon: Icon(Icons.person)
      ),
    ),
                SizedBox(height: 8.0,),
                TextField(
      controller: null,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'E.g: 5.4',
        label: Text('Height in Feet'),
        prefixIcon: Icon(Icons.insert_chart)
      ),
    ),
                SizedBox(height: 8.0,),
                TextField(
      controller: null,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'E.g: 180',
        label: Text('Weight In lb'),
        prefixIcon: Icon(Icons.line_weight)
      ),
    ),

                ElevatedButton(
                  onPressed: () {},                  
                   child: Text(
                     'Calculate',
                     style: TextStyle(
                       fontSize: 16.0,
                     ),
                   )
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        Column(
          children: [
            Text('Your Bmi: 24.6', style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic
            ),),
            SizedBox(height: 8.0),
            Text('Overweight', style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Colors.pinkAccent
            ),),
          ],
        )
      ],
      )
    );
  }
}