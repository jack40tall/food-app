import 'package:flutter/material.dart';
import 'package:food_app/search_list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("widget.title"),
        // ),
        backgroundColor: Colors.orange,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                        height: 240.0,
                        width: 260.0,
                        child: Image.asset(
                          'dish_images/logo.PNG',
                          fit: BoxFit.cover,
                        ))),
                Padding(
                    padding: EdgeInsets.fromLTRB(50, 160, 50, 16), //this
                    child: Material(
                        elevation: 6,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(32.0)),
                        shadowColor: Colors.black,
                        child: TextField(
                          textInputAction: TextInputAction.search,
                          onSubmitted: (value) => _pressSearch(context),
                          cursorColor: Colors.blue[900],
                          controller: searchController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Colors.blue[900]),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(32.0))),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search by dish or restaurant',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                        ))),
                // ElevatedButton(
                //   style: ButtonStyle(
                //       backgroundColor:
                //           MaterialStateProperty.all<Color>(Colors.white)),
                //   onPressed: () => _pressSearch(context),
                //   child: Text("Search"),
                // ),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                    child: Text("OR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white))),
                ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(6.0),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue[900])),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchList()),
                    );
                  },
                  child: Text(
                    "Surprise me!",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _pressSearch(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SearchList(
                search: searchController.text,
              )),
    );
  }
}
