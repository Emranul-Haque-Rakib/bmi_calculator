import 'package:bmi_calculator/reusableContainer.dart';
import 'package:bmi_calculator/reusablecolumn.dart';
import 'package:bmi_calculator/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activecolor = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111323);
enum genderType { male, female }


void main() {
  runApp(BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          backgroundColor: Colors.lightGreenAccent,
          scaffoldBackgroundColor: Colors.green),
      home: InputPage(),
    );
    throw UnimplementedError();
  }
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height=180;
  Color maleCardColor = inactivecolor;
  Color femaleCardColor = inactivecolor;

  void Updatecolor(genderType gender) {
    if (gender == genderType.male) {
      if (maleCardColor == inactivecolor) {
        maleCardColor = activecolor;
        femaleCardColor = inactivecolor;
      }
    } else if (gender == genderType.female) {
      if (femaleCardColor == inactivecolor) {
        femaleCardColor = activecolor;
        maleCardColor = inactivecolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Container(
        color: Color(0xFF0A0E21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableContainer(
                  onPress: () {
                    setState(() {
                      Updatecolor(genderType.male);
                    });
                  },
                  color: maleCardColor,
                  CardChild: ReusableColumn(FontAwesomeIcons.mars, "Male"),
                )),
                Expanded(
                    child: ReusableContainer(
                  onPress: () {
                    setState(() {
                      Updatecolor(genderType.female);
                    });
                  },
                  color: femaleCardColor,
                  CardChild: ReusableColumn(FontAwesomeIcons.venus, "Female"),
                )),
              ],
            )),
            Expanded(
                child: ReusableContainer(
              color: activecolor,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Height", style: mytextstyle),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:  [
                      Text(height.toString(), style: mytextstyle),
                      Text("cm", style: mytextstyle),
                    ],
                  ),
                  Slider(value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged:(double newValue){
                    setState(() {
                      height=newValue.round();
                    });
                  }),

                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableContainer(color: activecolor)),
                Expanded(child: ReusableContainer(color: activecolor)),
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.00),
              width: double.infinity,
              height: 80.00,
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
