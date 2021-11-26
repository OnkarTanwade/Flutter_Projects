import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("MY IMAGES/undraw_Ride_a_bicycle_re_6tjy.png",
              fit: BoxFit.cover),
          SizedBox(
            width: 20.0 ,height: 20.0,
          ),
          Text(
            "Login Page",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 24.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 20.0 ,height: 20.0,
          ),
         Padding(
           padding: const EdgeInsets.symmetric(),
           child: Column(
             children: [
               TextFormField(
                 decoration: InputDecoration(hintText:"Enter User Name",labelText: "User Name"),
               ),
                TextFormField(
                  decoration: InputDecoration(hintText:"Password",labelText:"Password"),
                  obscureText: true,
                ),
             ],
           ),
         ),
          SizedBox(
            width: 20.0 ,height: 20.0,
          ),
          ElevatedButton(onPressed: () {},
            child: Text("Login"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
