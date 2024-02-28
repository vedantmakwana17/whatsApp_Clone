import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hello/const_image/const.dart';

class Six extends StatefulWidget {
  const Six({super.key});

  @override
  State<Six> createState() => _SixState();
}

class _SixState extends State<Six> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Recent",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 30, backgroundImage: AssetImage(spiderman)),
                  ),
                  Text(
                    "Miya",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 30, backgroundImage: AssetImage(Sun)),
                  ),
                  Text(
                    "liya",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 30, backgroundImage: AssetImage(Mask)),
                  ),
                  Text(
                    "siya",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 30, backgroundImage: AssetImage(Sun)),
                  ),
                  Text(
                    "Kiya",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                        radius: 30, backgroundImage: AssetImage(myImage)),
                  ),
                  Text(
                    "Riya",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.call),
        backgroundColor: Colors.green.shade900,
        // shape:ShapeBorderClipper() ,
      ),
    );
  }
}
