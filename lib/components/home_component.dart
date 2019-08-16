import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeComponent extends StatefulWidget {

  @override
  HomeComponentState createState() => HomeComponentState();
}

class HomeComponentState extends State<HomeComponent> {
  Color _containerBorderColor;

  @override
  void initState() {
    super.initState();
    _containerBorderColor = Colors.blueGrey;
  }

  @override
  Widget build(BuildContext context) {

    final searchSection = Container(
        height: 50,
        margin: EdgeInsets.fromLTRB(15, 50, 15, 15),
        decoration: BoxDecoration(
          border: Border.all(color: _containerBorderColor),
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                onTap: () {
                  setState(() {
                    _containerBorderColor = Colors.blue;
                  });
                },
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Procurar cidade...',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                  border: InputBorder.none
                ),
              ),
            ),
            Expanded(
                flex: 0,
                child: IconButton(
                  // hoverColor: Colors.blue,
                    onPressed: () => {},
                    padding: EdgeInsets.all(0.0),
                    icon: Icon(
                      Icons.mic,
                      color: Colors.blue,
                    )
                )
            ),
          ],
        )
    );

    final weatherSection = Expanded(
      child: Container(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Test 1'),
            Text('Test 2')
          ],
        )
      ),
    );

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTapUp: (TapUpDetails details) {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              setState(() {
                _containerBorderColor = Colors.blueGrey;
              });
            },
            child: Column(
              children: <Widget>[
                searchSection,
                weatherSection
              ],
            )
        )
      )
    );
  }
}

