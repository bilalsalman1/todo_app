import 'package:flutter/material.dart';

class Seven extends StatelessWidget {
  static const routeName = '/Seven-screens';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 6, 64, 111),
          title: Text(
            'New Task',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 13, 51, 82),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  'What is to be done?',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 191, 222, 247),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 25, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Task Here',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 330),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.mic,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190, left: 20),
                child: Text(
                  'Due date',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 191, 222, 247),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220, left: 25, right: 60),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Date not set',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220, left: 330),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_view_month,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 280, right: 120),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 191, 222, 247),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 120),
                    height: 2,
                    width: 106,
                    color: Color.fromARGB(255, 191, 222, 247),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 30),
                    child: Text(
                      'No notifications if date not set.',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, right: 100),
                    child: Text(
                      'Add to List ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 191, 222, 247),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
