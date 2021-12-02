import 'package:android_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String Name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "MY IMAGES/undraw_Ride_a_bicycle_re_6tjy.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 20.0,
              height: 20.0,
            ),
            Text(
              "Welcome $Name", // Name contain whatever we type in username
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "User Name"),
                    onChanged: (value) {
                      // whatever we write in username it give that data to Name
                      //such that it will show infront of Welcome
                      Name = value;
                      setState(
                          () {}); // it is required to show quickly infront of welcome
                      //whichever we write in username, it kind refresh.
                      //IT JUST BUILD RAPIDLY, (ONLY USED IN STATELESS METHODE)
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password", labelText: "Password"),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () async{
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, Myroutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: 50,
                width: changeButton ? 60 : 120,
                alignment: Alignment.center,
                child:changeButton ?
                Icon(
                  Icons.done,
                  color: Colors.white,
                   )
               : Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    // shape: changeButton
                    // ? BoxShape.circle
                    // : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton ? 60 : 8)),
              ),
            ),

            /*ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Myroutes.homeRoute);
              },
              child: Text("Login"),
              style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              //style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                //foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),*/
          ],
        ),
      ),
    );
  }
}
