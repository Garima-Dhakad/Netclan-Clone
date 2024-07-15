import 'package:assign/widget.dart';
import 'package:flutter/material.dart';

class Refine extends StatefulWidget {
  const Refine({super.key});

  @override
  State<Refine> createState() => _RefineState();
}

class _RefineState extends State<Refine> {
  String availability = 'Available | Hey Let Us Connect';
  String selectedValue = 'Available | Hey Let Us Connect';
  final statusController = TextEditingController(
      text: "Hi community! I am open to new connections ");
  double _value = 20;
  bool purpose1 = false;
  bool purpose2 = false;
  bool purpose3 = false;
  bool purpose4 = false;
  bool purpose5 = false;
  bool purpose6 = false;
  bool purpose7 = false;
  bool purpose8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Refine"),
        // backgroundColor: Color(Colors._blueAccentPrimaryValue),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 30, 18, 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //text
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 165, 0),
                child: const Text(
                  "Select Your Availability",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //dropdown
              DropdownButton<String>(
                value: availability,
                onChanged: (String? newValue) {
                  setState(() {
                    availability = newValue!;
                  });
                },
                items: <String>[
                  'Available | Hey Let Us Connect',
                  'Away | Stay Discrete And Watch',
                  'Busy | Do Not Disturb | Will Catch Up Later',
                  'SOS | Emergency! Need Assistance! Help',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              //text
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 200, 0),
                child: const Text(
                  "Add Your Status",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //textfield
              TextField(
                controller: statusController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 20, 59, 100),
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //text
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 140, 0),
                child: const Text(
                  "Select Hyper local Distance",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              //slider
              Slider(
                min: 0.0,
                max: 100.0,
                value: _value,
                activeColor: const Color.fromARGB(255, 20, 59, 100),
                divisions: 10,
                label: '${_value.round()}',
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              // Text('Selected Value: ${_value.round()}'),
              //text
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 215, 0),
                child: const Text(
                  "Select Purpose",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              //choises
              Column(
                children: [
                  Row(
                    children: [
                      //Coffee
                      WidgetButton(
                        text: 'Coffee',
                        textColor: purpose1
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose1
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose1 = !purpose1;
                          })
                        },
                      ),
                      //Business
                      WidgetButton(
                        text: 'Business',
                        textColor: purpose2
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose2
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose2 = !purpose2;
                          })
                        },
                      ),
                      //Hobbies
                      WidgetButton(
                        text: 'Hobbies',
                        textColor: purpose3
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose3
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose3 = !purpose3;
                          })
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      //Friendship
                      WidgetButton(
                        text: 'Friendship',
                        textColor: purpose4
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose4
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose4 = !purpose4;
                          })
                        },
                      ),
                      //Movies
                      WidgetButton(
                        text: 'Movies',
                        textColor: purpose5
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose5
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose5 = !purpose5;
                          })
                        },
                      ),
                      //Dinning
                      WidgetButton(
                        text: 'Dinning',
                        textColor: purpose6
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose6
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose6 = !purpose6;
                          })
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      //Dating
                      WidgetButton(
                        text: 'Dating',
                        textColor: purpose7
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose7
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose7 = !purpose7;
                          })
                        },
                      ),
                      //Matrimony
                      WidgetButton(
                        text: 'Matrimony',
                        textColor: purpose8
                            ? Colors.white
                            : const Color.fromARGB(255, 20, 59, 100),
                        bgColor: purpose8
                            ? const Color.fromARGB(255, 20, 59, 100)
                            : Colors.white,
                        callBack: () => {
                          setState(() {
                            purpose8 = !purpose8;
                          })
                        },
                      ),
                    ],
                  ),
                ],
              ),
              //button
              MaterialButton(
                padding: const EdgeInsets.only(left: 40, right: 40),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)),
                textColor: Colors.white,
                color: const Color.fromARGB(255, 20, 59, 100),
                child: const Text("Save & Explore"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
