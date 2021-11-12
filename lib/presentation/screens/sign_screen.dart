import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/head_title.dart';
import '../widgets/input_user.dart';
import 'result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? name;
  String? location;
  int? year;
  double? kilometesDrive;
  double? mileage;
  String? engine;
  String? numberOfSeats;
  String? power;
  String? chooseTransmition;
  String? chooseFuelType;
  String? chooseOwnerType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: const Text(
                    'Car Price Production',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        shadows: [Shadow(color: Colors.lightBlueAccent)],
                        fontSize: 32),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                myInput(
                  nameHint: 'Enter your name',
                  nameLabel: 'Name',
                  userSign: name,
                ),
                myInput(
                  nameHint: 'Enter your location',
                  nameLabel: 'Location',
                  userSign: location,
                ),
                myInput(
                  nameHint: 'Enter the year',
                  nameLabel: 'Year',
                  userSign: year,
                ),
                myInput(
                  nameHint: 'Enter Kilometers Drive',
                  nameLabel: 'Kilometers_Drive',
                  userSign: kilometesDrive,
                ),
                myInput(
                  nameHint: 'Enter Mileage',
                  nameLabel: 'Mileage',
                  userSign: mileage,
                ),
                myInput(
                  nameHint: 'Enter the type of engine',
                  nameLabel: 'ُEngine',
                  userSign: engine,
                ),
                myInput(
                  nameHint: 'Enter the number of seats',
                  nameLabel: 'Seats',
                  userSign: numberOfSeats,
                ),
                myInput(
                  nameHint: 'Enter the Power',
                  nameLabel: 'Power',
                  userSign: power,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headTitle(
                      title: 'Choose Transmissiom',
                    ),
                    RadioListTile(
                        title: const Text('Manual'),
                        value: 'Manual',
                        groupValue: chooseTransmition,
                        onChanged: (valu) {
                          setState(() {
                            chooseTransmition = valu as String?;
                            print(chooseTransmition);
                          });
                        }),
                    RadioListTile(
                        title: const Text('Automatic'),
                        value: 'Automatic',
                        groupValue: chooseTransmition,
                        onChanged: (value) {
                          setState(() {
                            chooseTransmition = value.toString();
                            print(chooseTransmition);
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headTitle(
                      title: 'Choose Owner Type',
                    ),
                    RadioListTile(
                        title: const Text('First'),
                        value: 'First',
                        groupValue: chooseOwnerType,
                        onChanged: (value) {
                          setState(() {
                            chooseOwnerType = value as String?;
                            print(chooseOwnerType);
                          });
                        }),
                    RadioListTile(
                        title: const Text('Second'),
                        value: 'Second',
                        groupValue: chooseOwnerType,
                        onChanged: (value) {
                          setState(() {
                            chooseOwnerType = value as String?;
                            print(chooseOwnerType);
                          });
                        }),
                    RadioListTile(
                        title: const Text('Third'),
                        value: 'Third',
                        groupValue: chooseOwnerType,
                        onChanged: (value) {
                          setState(() {
                            chooseOwnerType = value as String?;
                            print(chooseOwnerType);
                          });
                        }),
                    RadioListTile(
                        title: const Text('Fourth & Above'),
                        value: 'Fourth & Above',
                        groupValue: chooseOwnerType,
                        onChanged: (value) {
                          setState(() {
                            chooseOwnerType = value as String?;
                            print(chooseOwnerType);
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headTitle(
                      title: 'Choose Fuel Type',
                    ),
                    RadioListTile(
                        title: const Text('CNG'),
                        value: 'CNG',
                        groupValue: chooseFuelType,
                        onChanged: (value) {
                          setState(() {
                            chooseFuelType = value as String?;
                            print(chooseFuelType);
                          });
                        }),
                    RadioListTile(
                        title: const Text('Petrol'),
                        value: 'Petrol',
                        groupValue: chooseFuelType,
                        onChanged: (value) {
                          setState(() {
                            chooseFuelType = value as String?;
                            print(chooseFuelType);
                          });
                        }),
                    RadioListTile(
                        title: const Text('Diesel'),
                        value: 'Diesel',
                        groupValue: chooseFuelType,
                        onChanged: (value) {
                          setState(() {
                            chooseFuelType = value as String?;
                            print(chooseFuelType);
                          });
                        }),
                    RadioListTile(
                        title: const Text('LPG'),
                        value: 'LPG',
                        groupValue: chooseFuelType,
                        onChanged: (value) {
                          setState(() {
                            chooseFuelType = value as String?;
                            print(chooseFuelType);
                          });
                        }),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen()));
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(fontSize: 22),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
