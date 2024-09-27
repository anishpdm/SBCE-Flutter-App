import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sbce_app/pages/signUp.dart';

class EmpLogin extends StatelessWidget {
  const EmpLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // CircleAvatar(
            //   radius: 50,
            //   backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
            // ),
            SizedBox(height: 20,),

            TextField(
              decoration: InputDecoration(
                  labelText: "Employee Code",
                  hintText: "Enter Your Employee Code",
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Password",
                  prefixIcon: Icon(Icons.lock_clock)),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    print("LogIn Button click event test");

                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  )),
            ),


            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    print("SignUp Button click event test");

                 Navigator.push(context,
                     MaterialPageRoute(builder: (context)=> SignUpPage()));
                  },
                  child: Text(
                    "Go to SignUp",
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

