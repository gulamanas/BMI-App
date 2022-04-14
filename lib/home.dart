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
      body: ListView(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/bmilogo.png'),
          ],
        ),
        Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              children: [
                Age(),
                SizedBox(height: 8.0,),
                Height(),
                SizedBox(height: 8.0,),
                Weight(),

                ElevatedButton(onPressed: () {}, child: Text('Calculate')),
              ],
            ),
          ),
        )
      ],
      )
    );
  }
}

class Age extends StatelessWidget {
  const Age({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: '32',
        label: Text('Age'),
        prefixIcon: Icon(Icons.person)
      ),
    );
  }
}

class Height extends StatelessWidget {
  const Height({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: '5.4',
        label: Text('Height in Feet'),
        prefixIcon: Icon(Icons.table_chart)
      ),
    );
  }
}

class Weight extends StatelessWidget {
  const Weight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: '180',
        label: Text('Weight In lb'),
        prefixIcon: Icon(Icons.table_rows_outlined)
      ),
    );
  }
}