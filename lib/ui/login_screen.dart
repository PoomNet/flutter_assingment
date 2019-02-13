import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Loginstate();
  }
}

class Loginstate extends State<Loginpage> {
  final GlobalKey<ScaffoldState> _scafkey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  var user = "";
  var pass = "";
  showsnackbar1() {
    final snackBar = new SnackBar(
      content: new Text("this"),
      duration: new Duration(seconds: 3),
      backgroundColor: Colors.red,
    );
    // _scafkey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        key: _scafkey,
        body: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Image.asset("image/1.jpg", width: 300),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.account_circle),
                      // labelText: 'E-mail',
                      hintText: 'User ID'),
                  validator: (value) {
                    // if (value.isEmpty) {
                    //   _scafkey.currentState.showSnackBar(SnackBar(
                    //       content: Text('“กรุณา ระบุ user or password'),
                    //       duration: Duration(seconds: 3),
                    //       backgroundColor: Colors.red,
                    //     ));
                    //   return 'กรุณาระบุ user';
                    // } else {
                      user = value;
                    // }
                  },
                  keyboardType: TextInputType.text,
                  onSaved: (value) => print(value),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                      // labelText: 'Password',
                      hintText: 'Password'),
                  validator: (value) {
                    // if (value.isEmpty) {
                    //   _scafkey.currentState.showSnackBar(SnackBar(
                    //       content: Text('“กรุณา ระบุ user or password'),
                    //       duration: Duration(seconds: 3),
                    //       backgroundColor: Colors.red,
                    //     ));
                    //   return 'กรุณาระบุ password';
                    // } else {
                      pass = value;
                    // }
                  },
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  onSaved: (value) => print(value),
                ),
                RaisedButton(
                    child: Text("Login"),
                    // key: _scafkey,
                    onPressed: () {
                      _formKey.currentState.validate();
                      if(user == "" || pass == ""){
                        _scafkey.currentState.showSnackBar(SnackBar(
                          content: Text('กรุณา ระบุ user or password'),
                          duration: Duration(seconds: 3),
                          backgroundColor: Colors.red,
                        ));
                      }
                      else if (user == "admin" && pass == "admin") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        _scafkey.currentState.showSnackBar(SnackBar(
                          content: Text('user or password ไม่ถูกต้อง'),
                          duration: Duration(seconds: 3),
                          backgroundColor: Colors.red,
                        ));
                        // showsnackbar1();
                      }
                    }),
                Align(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                        child: Text(
                          "Register New Account",
                          style:
                              TextStyle(color: Color.fromARGB(1000, 0, 234, 0)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        })),
              ],
            ),
          ),
        ));
    // return Form(
    //   key: _formKey,
    //   child: ListView(),
    // );
  }
}
