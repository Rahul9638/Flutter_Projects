import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

void CheckValidate(_numberController) {}

class _LoginScreenState extends State<LoginScreen> {
  // final numberController = TextEditingController();
  var _color = false;
  final _numberController = TextEditingController();
  void lengthChecker() {
    if (_numberController.text.length >= 10) {
      setState(() {
        _color = true;
      });
    } else {
      setState(() {
        _color = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(_numberController.text);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                      "Login to Your account",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (_) => lengthChecker(),
                      // initialValue: "+91",
                      controller: _numberController,
                      // controller: numberController,
                      decoration: InputDecoration(
                          label: Text(
                            "Phone Number",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          // hintText: "Phone Number",
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Otp will be sent to the Number",
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 200),
              Container(
                width: double.infinity,
                child: FlatButton(
                  child: Text(
                    'Verify',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: _color ? Colors.yellow : Colors.black26,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
