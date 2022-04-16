import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final ageController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  double result = 0.0;
  String health = "";
  String resultedValue = "";

  void finalResult() {
    setState(() {
      int age = int.parse(ageController.text);

      // height in feet
      double height = double.parse(heightController.text);
      double heightInInches = height * 12;
      double heightInMeter = heightInInches / 39.4;

      // weight in pounds(lbs)
      double weight = double.parse(weightController.text);
      double weightInKg = weight * 0.45;

      if ((ageController.text.isNotEmpty && age > 0)
      && (heightController.text.isNotEmpty && height > 0)
      && (weightController.text.isNotEmpty && weight > 0)) {

        result = weightInKg / (heightInMeter * heightInMeter);

        if (double.parse(result.toStringAsFixed(1)) < 18.5)  {
        health = "Underweight";
        }

        else if (double.parse(result.toStringAsFixed(1)) >= 18.5 && double.parse(result.toStringAsFixed(1)) < 25 ) {
          health = "Normal";
        }

        else if (double.parse(result.toStringAsFixed(1)) >= 25 && double.parse(result.toStringAsFixed(1)) < 29.9 ) {
          health = "Overweight";
        }

        else {
          health = "Obese";
        }
      }
      else {
        result = 0.0;
      }
    });
    resultedValue = "Your BMI is ${result.toStringAsFixed(1)}";
  }
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
                  controller: ageController,
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
                  controller: heightController,
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
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'E.g: 180',
                    label: Text('Weight In lb'),
                    prefixIcon: Icon(Icons.line_weight)
                  ),
                ),

                ElevatedButton(
                  onPressed: finalResult,                  
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
            Text('$resultedValue', style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic
            ),),
            SizedBox(height: 8.0),
            Text('$health', style: TextStyle(
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