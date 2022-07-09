import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utlis/routes.dart';

class login_page extends StatefulWidget {
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  
  // Variable and Matheds are Define in here
  bool changebuttion = false;
  var name = " ";
  final _foramKey = GlobalKey<FormState>();
  moveToHome(BuildContext contaxt) async {
    if (_foramKey.currentState!.validate()){
    setState(() {
      changebuttion = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homenroute);
    setState(() {
      changebuttion = false;
    });}
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
          key: _foramKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/Login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "enter user name",
                        labelText: "user name",
                        
                      ),
                      validator: (value){
                        if (value!=null && value.isEmpty){
                          return "Username can't be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {
                          
                        });
                      },
                      
                      
                    ),
                  
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "enter password",
                        labelText: "password",
                      ),
                      validator: (value){
                        if (value!=null && value.isEmpty){
                          return "password can't be empty";
                        }
                        else if (value!=null && value.length < 4){
                          return "Password must be 4 digit stored";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 50.0,
                    ),

                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changebuttion ? 50 : 150,
                        height: 45,
                        alignment: Alignment.center,
                        child: changebuttion
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                                BorderRadius.circular(changebuttion ? 20 : 7)),
                      ),
                    )

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homenroute);
                    //   },
                    //   child: Text('login'),
                    //   style: TextButton.styleFrom(minimumSize: Size(100, 35)),
                    // )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
