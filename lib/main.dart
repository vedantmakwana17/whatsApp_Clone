import 'package:flutter/material.dart';
import 'package:hello/const_image/const.dart';
import 'package:hello/src/1st.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> list = <String>['English', 'Hindi', 'Gujarati', 'Marathi'];
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text("hello"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(Sun),
                  radius: 150,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              DropdownButton(
                value: dropdownValue,
                dropdownColor: Colors.green.shade300,
                // iconEnabledColor: Colors.black,
                focusColor: Colors.white,
                icon: const Icon(
                  Icons.arrow_circle_down_sharp,
                  color: Colors.blue,
                ),
                // isExpanded: true,
                hint: const Text(
                  'Language',
                  style: TextStyle(color: Colors.white),
                ),
                iconSize: 25,
                items: list.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  debugPrint("saved your language");
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const One(),
                      ));
                      debugPrint("saved...");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade800,
                      // elevation: 10,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text("Agree and Continue"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
