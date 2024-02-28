import 'package:flutter/material.dart';
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

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
            height: 100,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
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
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.rectangle, color: Colors.green),
              child: IconButton(
                onPressed: () {
                  _addItem(newItem);
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.add),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      // appBar: AppBar(
      //   title: const Text("Swipe to Delete Demo"),
      // ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            direction: DismissDirection.none,
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              child: const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            onDismissed: (direction) {
              // _removeItem(index);
            },
            child: TextButton(
              child: Card(
                color: Colors.yellow,
                child: ListTile(
                  title: Text(item),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Five(),
                ));
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddItemDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
