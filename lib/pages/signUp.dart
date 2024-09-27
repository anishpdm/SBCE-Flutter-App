
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: "Employee Name",
                      hintText: "Enter Your Employee Name",
                      prefixIcon: Icon(Icons.account_box),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),

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
                      onPressed: () {},
                      child: Text(
                        "Register",
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
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Back to LogIn",
                        style: TextStyle(fontSize: 18),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
