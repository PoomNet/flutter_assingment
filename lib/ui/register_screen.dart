import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterPageState();
  }
}

class RegisterPageState extends State<RegisterPage> {
  final GlobalKey<ScaffoldState> _scafkey = GlobalKey<ScaffoldState>();
  final fkey = GlobalKey<FormState>();
  var check = 0;
  var user = "";
  var pass = "";
  var re_pass = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: _scafkey,
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Form(
            key: fkey,
            child: Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          hintText: 'Please Enter User ID'),
                      validator: (value) {
                        if (value.isEmpty) {
                        } else {
                          check += 1;
                          user = value;
                        }
                      },
                      keyboardType: TextInputType.text,
                      onSaved: (value) => print(value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          hintText: 'Please Enter Password'),
                      validator: (value) {
                        if (value.isEmpty) {
                        } else {
                          pass = value;
                          check += 1;
                        }
                      },
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      onSaved: (value) => print(value),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.account_circle),
                          hintText: 'Please Re-Enter Password'),
                      validator: (value) {
                        if (value.isEmpty) {
                        } else {
                          check += 1;
                          re_pass = value;
                        }
                      },
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      onSaved: (value) => print(value),
                    ),
                    RaisedButton(
                        child: Text("Register"),
                        onPressed: () {
                          fkey.currentState.validate();
                          if (check != 3) {
                            _scafkey.currentState.showSnackBar(SnackBar(
                              content: Text('กรุณาระบุข้อมูลให้ครบถ้วน'),
                              duration: Duration(seconds: 3),
                              backgroundColor: Colors.red,
                            ));
                            check = 0;
                          }
                          else if(user == "admin"){
                            _scafkey.currentState.showSnackBar(SnackBar(
                              content: Text('user นี้มีอยู่ใน ระบบแล้ว'),
                              duration: Duration(seconds: 3),
                              backgroundColor: Colors.red,
                            ));
                            check= 0;
                          }
                          else if(pass != re_pass){
                            _scafkey.currentState.showSnackBar(SnackBar(
                              content: Text('ใส่ password ให้ถูกต้อง'),
                              duration: Duration(seconds: 3),
                              backgroundColor: Colors.red,
                            ));
                            check= 0;
                          }
                          else if (check == 3) {
                            Navigator.pop(context);
                          }
                        }),
                  ],
                ))));
  }
}
