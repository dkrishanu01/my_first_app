 import 'package:flutter/material.dart';
 import 'package:my_first_app/utils/routes.dart';


class LoginPage  extends StatefulWidget {
  LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async {

    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Material(
      child:  SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/images/undraw_secure_login_pdn4.png",
                  fit: BoxFit.cover,
                height: 250,
              ),
              SizedBox( // to give space between text and image or other thing..
                height: 20,
              ),
              Text("Welcome $name",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox( // to give space between text and image or other thing..
                height: 20,
              ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
            child: Column(
              children: [
            TextFormField(
            decoration: InputDecoration(
    hintText: "Enter Username" ,
    labelText: "Username" ,
    ),

              validator: (value) {
                if (value != null && value.isEmpty) {
                  return "Username cannot be empty";

                }

              },
              onChanged: (value){
                name = value;
                setState(() {});
              },
    ),

    TextFormField(
          obscureText: true,
    decoration: InputDecoration(
    hintText: "Enter Password" ,
    labelText: "Password" ,
    ),

      validator: (value) {
        if (value != null && value.isEmpty) {
          return "Password cannot be empty";
        }
        else if(value != null && value.length <6) {
          return "Password length should be atleast 6";
        }
  },

    ),
                SizedBox(
                  height: 40.0,
                ),


                Material(
                  borderRadius: BorderRadius.circular(changeButton?20:8),
                  color: Colors.deepPurple,
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: changeButton?50:150,

                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.done,
                      color: Colors.white,
                      )
                          :Text("Login",
                          style: TextStyle(color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),
                      ),


                    ),
                  ),
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
                //     },
                //     child: Text("Login"),
                //
                //   style: TextButton.styleFrom(minimumSize: Size(100, 40)  ),
                // ),

              ],

    ),
          ),
            ],

          ),
        ),
      ),

    );
  }
}
