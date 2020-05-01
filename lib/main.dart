import 'package:flutter/material.dart';
import 'package:fixnixt1/rcard.dart';
import 'package:fixnixt1/consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fixnixt1/icon_content.dart';
import 'package:fixnixt1/formh.dart';
import 'bottom_button.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'TN Corona Speak'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedService;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey, //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Color(0xfff5f5f5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'SELECT YOUR SERVICE',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff212121),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedService = 'medical';
                            });
                          },
                          colour: selectedService == 'medical'
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.stethoscope,
                            label: 'MEDICAL',
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedService = 'death';
                            });
                          },
                          colour: selectedService == 'death'
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.bed,
                            label: 'DEATH',
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedService = 'travel';
                            });
                          },
                          colour: selectedService == 'travel'
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.bus,
                            label: 'TRAVEL',
                          ),
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedService = 'neighbour';
                            });
                          },
                          colour: selectedService == 'neighbour'
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.handshake,
                            label: 'NEIGHBOURHOOD',
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: ReusableCard(
                          onPress: () {
                            setState(() {
                              selectedService = 'others';
                            });
                          },
                          colour: selectedService == 'others'
                              ? kActiveCardColor
                              : kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.ambulance,
                            label: 'OTHERS',
                          ),
                        ),
                      )
                    ],
                  ),
                  BottomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Filler(
                              chosenService: selectedService,
                            );
                          },
                        ),
                      );
                    },
                    buttonTitle: 'SELECT',
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
