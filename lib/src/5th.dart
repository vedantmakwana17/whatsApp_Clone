import 'package:flutter/material.dart';
import 'package:hello/const_image/const.dart';
import 'package:hello/src/5th.dart';
import 'package:hello/src/6x.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Slider1(),
//       debugShowCheckedModeBanner: false,
//
//     ),
//   );
// }

class Five extends StatefulWidget {
  @override
  _FiveState createState() => _FiveState();
}

class _FiveState extends State<Five> {
  List<String> items = [];
  // late String? removedItem;
  // late int? removedIndex;

  void _addItem(String newItem) {
    setState(() {
      items.add(newItem);
    });
  }

  void _showAddItemDialog(BuildContext context) {
    String newItem = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Contact'),
          content: SizedBox(
            height: 160,
            width: 160,
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    newItem = value;
                  },
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.black),
                    prefixIconColor: Colors.black,
                    hintText: "Name",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    filled: true,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _addItem(newItem);
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.send),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        title: Text("Miya"),
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: AssetImage(spiderman),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.black12,
                      child: Center(
                          child: Text(
                        "hello",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.green.shade800,
                      child: Center(
                          child: Text(
                        "How,Are you?",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.black12,
                      child: Center(
                          child: Text(
                        "I m fine.And you?",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.green.shade800,
                      child: Center(
                          child: Text(
                        "fine",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.black12,
                      child: Center(
                          child: Text(
                        "Where, are you from?",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 170,
                    child: Card(
                      color: Colors.green.shade800,
                      child: Center(
                          child: Text(
                        "I m from vadodara.And you?",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.black12,
                      child: Center(
                          child: Text(
                        "I m from surat.",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 160,
                    child: Card(
                      color: Colors.green.shade800,
                      child: Center(
                          child: Text(
                        "ohk",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        TextFormField(
          decoration: const InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            suffixIconColor: Colors.white,
            suffixIcon: Icon(Icons.send),
            // focusColor: Colors.yellow,
            fillColor: Colors.black12,
            hintText: " Message",
            hintStyle: TextStyle(color: Colors.white),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            filled: true,
          ),
          onTap: () => _showAddItemDialog(context),
        ),
      ],
    );
  }
}
