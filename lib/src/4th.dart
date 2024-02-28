import 'package:flutter/material.dart';
import 'package:hello/const_image/const.dart';

class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 4,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(hulk),
                  radius: 35,
                ),
              ),
              Text(
                "My Status",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(spider),
                  radius: 35,
                ),
              ),
              Text(
                "nishtha",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(Mask),
                  radius: 35,
                ),
              ),
              Text(
                "miya",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(myImage),
                  radius: 35,
                ),
              ),
              Text(
                "riya",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(Sun),
                  radius: 35,
                ),
              ),
              Text(
                "nisha",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(hulk),
                    radius: 35,
                  ),
                ),
                Text(
                  "caryy",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            // onLongPress: Navigator.;
          ),
        ],
      ),
    );
  }
}
