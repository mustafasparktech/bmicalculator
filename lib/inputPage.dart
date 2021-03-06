import 'package:bmi/constants/colors.dart';
import 'package:bmi/enums/gender.dart';
import 'package:bmi/widgets/Reusebalecard.dart';
import 'package:bmi/widgets/gendercards.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleActiveCardColor;
  Color femaleActiveCardColor;
  gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCards(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2.5,
                    colour: selectedGender == gender.male
                        ? activeCardColour
                        : inactiveCardColour,
                    cardWidget: GenderCards(
                      gender: "Male",
                      genderIcon: Icon(FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCards(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2.5,
                    colour: selectedGender == gender.female
                        ? activeCardColour
                        : inactiveCardColour,
                    cardWidget: GenderCards(
                      gender: "Female",
                      genderIcon: Icon(FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCards(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              colour: activeCardColour,
              cardWidget: Column(
                children: <Widget>[
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(""),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              ReuseableCards(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
                colour: activeCardColour,
                cardWidget: Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.male,
                    )
                  ],
                ),
              ),
              ReuseableCards(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2.5,
                colour: activeCardColour,
                cardWidget: null,
              ),
            ],
          ),
          BottomAppBar(
            color: Colors.pink,
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 12,

              child: Text(
                "Calculate your BMI".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
              //  child: ,
            ),
          )
        ],
      ),
    );
  }
}
