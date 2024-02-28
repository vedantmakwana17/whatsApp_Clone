import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hello/src/2nd.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("eogheohg"),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text("Enter your phone number"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Whatsup will need your verify your account."),
                TextButton(onPressed: () {}, child: Text("Whats My Number?")),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: InputDecoration(
                        // hintText: " Password",
                        // label: Text("password"),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.phone),
                        prefixIconColor: Colors.black,
                        // hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true),
                    // controller: passwordController,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Two()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade900,
                  shape: StadiumBorder(),
                ),
                child: Text("hello"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
