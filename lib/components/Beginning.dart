import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BeginningPage extends StatefulWidget {
  @override
  _BeginningPageState createState() => _BeginningPageState();
}

enum FormType { login, register }

class _BeginningPageState extends State<BeginningPage> {
  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;
  String _name;
  String _phone;
  String _city;

  FormType _formType = FormType.login;
  String errorMess;
  String registerMess;
  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();

      return true;
    }
    return false;
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        if (_formType == FormType.login) {
          User user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
                  email: _email.toString().trim(), password: _password))
              .user;

          print("signed in ${user.uid}");
        } else {
          User user = (await FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: _email.toString().trim(), password: _password))
              .user;
          String uid = user.uid;
          updateName(uid);
          print("Registerres user is ${user.uid}");
          setState(() {
            registerMess = "Successfully Registered";
          });
        }
      } on FirebaseAuthException catch (e) {
        print(e.message);
        print(e.code);
        switch (e.code) {
          case "ERROR_EMAIL_ALREADY_IN_USE":
          case "account-exists-with-different-credential":
          case "email-already-in-use":
            setState(() {
              errorMess = "Email already used. Go to login page.";
            });
            break;
          case "ERROR_WRONG_PASSWORD":
          case "wrong-password":
            setState(() {
              errorMess = "Email/Password do not match";
            });
            break;
          case "ERROR_USER_NOT_FOUND":
          case "user-not-found":
            setState(() {
              errorMess = "No user found with this email.";
            });
            break;
          case "ERROR_USER_DISABLED":
          case "user-disabled":
            setState(() {
              errorMess = "User disabled.";
            });
            break;
          case "ERROR_TOO_MANY_REQUESTS":
          case "operation-not-allowed":
            setState(() {
              errorMess = "Too many requests to log into this account.";
            });
            break;
          case "ERROR_OPERATION_NOT_ALLOWED":
          case "operation-not-allowed":
            setState(() {
              errorMess = "Server error, please try again later.";
            });
            break;
          case "ERROR_INVALID_EMAIL":
          case "invalid-email":
            setState(() {
              errorMess = "Invalid Email.";
            });
            break;
          case "ERROR_USER_NOT_FOUND":
          case "user-not-found":
            setState(() {
              errorMess = "No account found with this email.";
            });
            break;
          case "weak-password":
            setState(() {
              errorMess = "Password too short!";
            });
            break;
          default:
            errorMess = "Login failed. Please try again.";
            break;
        }
      }
    }
  }

  void updateName(String uid) async {
    try {
      CollectionReference userdata =
           FirebaseFirestore.instance.collection('userdata');

      userdata.doc(uid).set({
        'name': _name,
        'phone': _phone,
        'city': _city,
      });
    } catch (e) {
      print(e.message);
    }
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  double width, height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5,1.0],
          colors: [
                  Color(0xFFCFF6FF),
                  Colors.white,
                  ]
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Column(
            children: [
              SizedBox(
                height: height*0.06,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: _formType == FormType.login ? height * 0.30 : height * 0.15,
                child: Image.asset("assets/images/logo.png"),
              ),
              Container(
                child: Text(
                  "KrishiKadam",
                  style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w300),
                ),
              ),
              Container(
                child: Form(
                  key: formKey,
                  child: Column(children: textFields() + submitButtons()),
                ),
              ),
            ],
        ),
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Image.asset(
            "assets/images/bottom.png",
            fit: BoxFit.fill,
          ),
          height: height * .16,
          width: double.infinity,
        ),
      ),
    );
  }

  List<Widget> textFields() {
    if (_formType == FormType.login) {
      return [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Color(0xFF78A143),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    labelText: 'Email ID',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) =>
                    value.isEmpty ? 'Email cannot be empty.' : null,
                onSaved: (value) => _email = value,
              ),
              TextFormField(
                cursorColor: Color(0xFF78A143),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.vpn_key),
                    labelText: 'Password',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) =>
                    value.isEmpty ? 'Password cannot be empty.' : null,
                onSaved: (value) => _password = value,
              ),
            ],
          ),
        )
      ];
    } else {
      return [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Color(0xFF78A143),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.portrait),
                    labelText: 'Name',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) =>
                    value.isEmpty ? 'Name cannot be empty' : null,
                onSaved: (value) => _name = value,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                cursorColor: Color(0xFF78A143),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    labelText: 'Phone Number',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) => (value.isEmpty || value.length != 10 ) ? 'Enter 10 digit Phone No.' : null,
                    
                onSaved: (value) => _phone = value,
              ),
              TextFormField(
                
                cursorColor: Color(0xFF78A143),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.location_city),
                    labelText: 'City',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) =>
                    value.isEmpty ? 'City cannot be empty' : null,
                onSaved: (value) => _city = value,
              ),
              TextFormField(
                cursorColor: Color(0xFF78A143),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    labelText: 'Email ID',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) =>
                    value.isEmpty ? 'Email cannot be empty' : null,
                onSaved: (value) => _email = value,
              ),
              TextFormField(
                cursorColor: Color(0xFF78A143),
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.vpn_key),
                    labelText: 'Password',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF78A143)))),
                validator: (value) =>
                    value.isEmpty ? 'Password cannot be empty' : null,
                onSaved: (value) => _password = value,
              ),
            ],
          ),
        )
      ];
    }
  }

  List<Widget> submitButtons() {
    if (_formType == FormType.login) {
      return [
        errorMess != null
            ? Container(
                width: width * 0.8,
                color: Colors.white.withOpacity(0.2),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 4.0,
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      errorMess,
                      style: TextStyle(color: Colors.red),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onTap: () {
                        formKey.currentState.reset();
                        setState(() {
                          errorMess = null;
                        });
                      },
                    )
                  ],
                ),
              )
            : SizedBox(
                height: 0,
              ),
        registerMess != null
            ? Container(
                width: width * 0.8,
                color: Colors.white.withOpacity(0.2),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 4.0,
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      registerMess,
                      style: TextStyle(color: Color(0xFFB9DA8F)),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.done,
                        color: Colors.black,
                      ),
                      onTap: () {
                        formKey.currentState.reset();
                        setState(() {
                          registerMess = null;
                        });
                      },
                    )
                  ],
                ),
              )
            : SizedBox(
                height: 0,
              ),
        RaisedButton(
          color: Color(0xFFB9DA8F),
          child: Text(
            "Log In",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: validateAndSubmit,
        ),
        FlatButton(
          child: RichText(
            text: TextSpan(
              text: 'New Member? ',
              style: TextStyle(color: Colors.black, fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF78A143))),
              ],
            ),
          ),
          onPressed: moveToRegister,
        ),
      ];
    } else {
      return [
        errorMess != null
            ? Container(
                width: width * 0.8,
                color: Colors.white.withOpacity(0.2),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 4.0,
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      errorMess,
                      style: TextStyle(color: Colors.red),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onTap: () {
                        formKey.currentState.reset();
                        setState(() {
                          errorMess = null;
                        });
                      },
                    )
                  ],
                ),
              )
            : SizedBox(
                height: 0,
              ),
        RaisedButton(
          color: Color(0xFFB9DA8F),
          child: Text(
            "Register",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: validateAndSubmit,
        ),
        FlatButton(
          child: RichText(
            text: TextSpan(
              text: 'Have an account? ',
              style: TextStyle(color: Colors.black, fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                    text: 'Log In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF78A143))),
              ],
            ),
          ),
          onPressed: moveToLogin,
        ),
      ];
    }
  }
}
