import 'package:flutter/material.dart';
import 'package:fixnixt1/main.dart';
import 'package:fixnixt1/bottom_button.dart';

class Filler extends StatefulWidget {
  Filler({@required this.chosenService});
  final String chosenService;

  @override
  _FillerState createState() => _FillerState();
}

class _FillerState extends State<Filler> {
  String dropdownValue = 'Chennai';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chosenService.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 50,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blueGrey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                maxLines: null,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: new InputDecoration(
                  hintText: 'Full Name',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 50,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blueGrey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.number,
                maxLines: null,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: new InputDecoration(
                  hintText: 'Phone',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 50,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blueGrey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                maxLines: null,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: new InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            padding: EdgeInsets.all(5),
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blueGrey.shade100,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
                elevation: 16,
                style: TextStyle(color: Colors.deepPurple),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  'Chennai',
                  'Ariyalur',
                  'Chengalpattu',
                  'Coimbatore',
                  'Cuddalore',
                  'Dharmapuri',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Color(0xff607b8b)),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: new InputDecoration(
                    hintText: 'Brief Note On Assistance Required',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: BottomButton(
              onTap: () {
                //code
              },
              buttonTitle: 'SUBMIT',
            ),
          )
        ],
      ),
    );
  }
}
