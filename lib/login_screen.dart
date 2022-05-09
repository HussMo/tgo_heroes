import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/wlcome_page.dart';
// ignore: import_of_legacy_library_into_null_safe

class Loign_page extends StatefulWidget {
  const Loign_page({Key? key}) : super(key: key);

  @override
  _Loign_pageState createState() => _Loign_pageState();
}

class _Loign_pageState extends State<Loign_page> {
//------------------------------------------------------------
  var MyEmail, MyPassword;
  GlobalKey<FormState> Formkey = new GlobalKey<FormState>();

//------------------------------------------------------------

//------------------------------------------------------------
  signIn() async {
    var data = Formkey.currentState;

    if (data!.validate()) {
      data.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: MyEmail, password: MyPassword);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Wrong user name')));
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Wrong Password')));
        }
      }
    } else {
      print('not valid');
    }
  }

//------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Login_screen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'TGO Heroes',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  // const Text(
                  //   'Login',
                  //   style: TextStyle(
                  //       fontSize: 50,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.deepOrange),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key: Formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              suffix: Icon(Icons.person),
                              hintText: 'Please Enter a valid username',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 3,
                                ),
                              ),
                            ),
                            onSaved: (val) {
                              MyEmail = val;
                            },
                            validator: (Text) {
                              if (Text!.length > 50) {
                                return 'User name is not correct';
                              }
                              if (Text.length < 2) {
                                return 'User name is not correct';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              suffix: Icon(Icons.lock),
                              hintText: 'Please Enter a valid Password',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide(
                                  color: Colors.deepOrange,
                                  width: 3,
                                ),
                              ),
                            ),
                            onSaved: (val) {
                              MyPassword = val;
                            },
                            validator: (Text) {
                              if (Text!.length > 100) {
                                return 'Password is not correct';
                              }
                              if (Text.length < 1) {
                                return 'Password is not correct';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepOrange),
                            onPressed: () async {
                              var user = await signIn();
                              if (user != null) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const welcome_page()));
                              } else {
                                print('not found');
                              }
                            },
                            child: Text('Login'),
                          ),
                        ],
                      ),
                    ),
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
