import 'package:flutter/material.dart';
import 'class.dart';

enum MenuValues {
  first,
  second,
  third,
  fourth,
  five,
  six,
  seven,
  eight,
}

class Homew extends StatefulWidget {
  @override
  State<Homew> createState() => HomewState();
}

class HomewState extends State<Homew> {
// bool isChecked = false;

  TextEditingController namecontroller = TextEditingController();

  List<Category> category = [];

  int selectedIndex = -1;

  void deleteItem(int index) {
    setState(() {
      category.removeAt(index);
    });
  }

  void dispose() {
    namecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Row(children: [

          Container(
            child: Text(
              'All Lists',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
          PopupMenuButton<MenuValues>(
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text('All List'),
                      value: MenuValues.first,
                    ),
                    PopupMenuItem(
                      child: Text('Default'),
                      value: MenuValues.second,
                    ),
                    PopupMenuItem(
                      child: Text('Personal'),
                      value: MenuValues.third,
                    ),
                    PopupMenuItem(
                      child: Text('Shopping'),
                      value: MenuValues.fourth,
                    ),
                    PopupMenuItem(
                      child: Text('Wishlist'),
                      value: MenuValues.five,
                    ),
                    PopupMenuItem(
                      child: Text('Work'),
                      value: MenuValues.six,
                    ),
                    PopupMenuItem(
                      child: Text('Finished'),
                      value: MenuValues.seven,
                    ),
                    PopupMenuItem(
                      child: Text('New List'),
                      value: MenuValues.eight,
                    )
                  ],
              onSelected: (value) {
                switch (value) {
                  case MenuValues.first:
                    // Navigator.of(context).push(MaterialPageRoute(builder: (c)=>settingpage()))
                    break;
                  case MenuValues.second:
                    // TODO: Handle this case.
                    break;
                  case MenuValues.third:
                    // TODO: Handle this case.
                    break;
                  case MenuValues.fourth:
                    // TODO: Handle this case.
                    break;
                  case MenuValues.five:
                    // TODO: Handle this case.
                    break;
                  case MenuValues.six:
                    // TODO: Handle this case.
                    break;
                  case MenuValues.seven:
                    // TODO: Handle this case.
                    break;
                  case MenuValues.eight:
                    // TODO: Handle this case.
                    break;
                }
              })
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          category.isEmpty
              ? Column(
                  children: [
                    Image.asset(
                      'assets/images/relax.png',
                      height: 222,
                    ),
                    Text('Noting to do !',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ],
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: category.length,
                      itemBuilder: (context, index) {
                        return getRow(index);
                      }),
                ),
// FloatingActionButton(onPressed: (){},child:Icon(Icons.add) ,),

          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple,
                  hintText: 'Enter Quick Task Here',
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                    onPressed: () {
                      String name = namecontroller.text.trim();
                      if (name.isNotEmpty) {
                        setState(() {
                          namecontroller.text = '';
                          namecontroller.clear();
                          FocusScope.of(context).unfocus();
                          category.add(
                            Category(
                              name: name,
                            ),
                          );
                          final snackBar = SnackBar(
                            content: Container(
                                child: Text(
                              'Task Added',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )),
                            duration: Duration(seconds: 2),
                            behavior: SnackBarBehavior.fixed,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                      }
                    },
                    icon: Icon(Icons.check, color: Colors.white),
                  ),
                )),
          ),
//
        ],
      ),
    );
  }

  Widget getRow(int index) {
    return Container(
        margin: EdgeInsets.only(top: 7, left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
            color: Colors.purple),
        child: ListTile(
          leading: IconButton(
            onPressed: () {
              setState(() {
                final snackBar = SnackBar(
                  content: Container(
                      child: Text(
                    'Task Deleted',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )),
                  duration: Duration(seconds: 2),
                  behavior: SnackBarBehavior.fixed,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              });
              deleteItem(index);
            },
            icon: Icon(Icons.delete),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category[index].name,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
