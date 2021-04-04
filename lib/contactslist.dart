import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dishes_data.dart';

class ContactsList extends StatefulWidget {
  static String tag = 'contactlist-page';

  @override
  State<StatefulWidget> createState() {
    return new _ContactsListState();
  }
}

List<Dish> dishes = getDishData();

class _ContactsListState extends State<ContactsList> {
  TextEditingController searchController = new TextEditingController();
  String filter;
  int selectedIndex;

  @override
  initState() {
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Top Meals',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),
        body: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(8.0),
              child: new TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search by dish or restaurant',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),
            new Expanded(
              child: new ListView.builder(
                itemCount: dishes.length,
                itemBuilder: (context, index) {
                  return filter == null || filter == ""
                      ? Container(
                          child: Column(children: <Widget>[
                          ListTile(
                            title: Text('${dishes[index].restaurant}'),
                            subtitle: Column(
                              children: [
                                Text('${dishes[index].name}'),
                                Text('${dishes[index].hoursOpen}'),
                                Row(
                                  children: <Widget>[
                                    Text('${dishes[index].rating}'),
                                    RatingBar.builder(
                                      itemSize: 20.0,
                                      initialRating: dishes[index].rating,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // print(rating);
                                      },
                                    ),
                                  ],
                                ),
                                // RatingBar(
                                //   initialRating: 3,
                                //   direction: Axis.horizontal,
                                //   allowHalfRating: true,
                                //   itemCount: 5,
                                //   ratingWidget: RatingWidget(full: , half: half, empty: empty),
                                //   itemPadding:
                                //       EdgeInsets.symmetric(horizontal: 4.0),
                                //   onRatingUpdate: (rating) {
                                //     print(rating);
                                //   },
                                // ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                    // decoration: BoxDecoration(
                                    //     border:
                                    //         Border.all(color: Colors.blueAccent)),
                                    // margin: EdgeInsets.all(0),
                                    height: 60.0,
                                    width: 120.0,
                                    // child: Icon(Icons.volume_up,
                                    //     color: Colors.white, size: 50.0)
                                    child: new Image.asset(
                                      '${dishes[index].imagePath}',
                                      // height: 100,
                                      fit: BoxFit.cover,
                                    ))),
                            // leading: new CircleAvatar(
                            //     backgroundImage:
                            //         AssetImage('dish_images/ks_katsu.jpeg')),
                            onTap: () => _onTapItem(context, index),
                          ),
                          if (selectedIndex == index)
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: Container(
                                    height: 200,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text("Address"),
                                                ElevatedButton(
                                                    child:
                                                        Text("Get directions")),
                                                ElevatedButton(
                                                    child: Text("More dishes"))
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            40, 0, 20, 0),
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                            '${dishes[index].rating}'),
                                                        RatingBar.builder(
                                                          itemSize: 20.0,
                                                          initialRating:
                                                              dishes[index]
                                                                  .rating,
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating: true,
                                                          itemCount: 5,
                                                          itemPadding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0),
                                                          itemBuilder:
                                                              (context, _) =>
                                                                  Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                          onRatingUpdate:
                                                              (rating) {
                                                            // print(rating);
                                                          },
                                                        ),
                                                      ],
                                                    )),
                                                Text(
                                                  "Donec ullamcorper ",
                                                  softWrap: true,
                                                  overflow: TextOverflow.clip,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(children: [
                                          Text("How was it?"),
                                          RatingBar.builder(
                                            itemSize: 40.0,
                                            initialRating: 0,
                                            minRating: 0,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(
                                                horizontal: 0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          )
                                        ]),
                                      ],
                                    )))
                        ]))
                      : '${dishes[index].restaurant}'
                                  .toLowerCase()
                                  .contains(filter.toLowerCase()) ||
                              '${dishes[index].name}'
                                  .toLowerCase()
                                  .contains(filter.toLowerCase())
                          ? ListTile(
                              title: Text('${dishes[index].restaurant}'),
                              subtitle: Column(
                                children: [
                                  Text('${dishes[index].name}'),
                                  Text('${dishes[index].hoursOpen}'),
                                  Row(
                                    children: <Widget>[
                                      Text('${dishes[index].rating}'),
                                      RatingBar.builder(
                                        itemSize: 20.0,
                                        initialRating: dishes[index].rating,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          // print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                  // RatingBar(
                                  //   initialRating: 3,
                                  //   direction: Axis.horizontal,
                                  //   allowHalfRating: true,
                                  //   itemCount: 5,
                                  //   ratingWidget: RatingWidget(full: , half: half, empty: empty),
                                  //   itemPadding:
                                  //       EdgeInsets.symmetric(horizontal: 4.0),
                                  //   onRatingUpdate: (rating) {
                                  //     print(rating);
                                  //   },
                                  // ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(7.0),
                                  child: Container(
                                      // decoration: BoxDecoration(
                                      //     border:
                                      //         Border.all(color: Colors.blueAccent)),
                                      // margin: EdgeInsets.all(0),
                                      height: 60.0,
                                      width: 120.0,
                                      // child: Icon(Icons.volume_up,
                                      //     color: Colors.white, size: 50.0)
                                      child: new Image.asset(
                                        '${dishes[index].imagePath}',
                                        // height: 100,
                                        fit: BoxFit.cover,
                                      ))),
                              // leading: new CircleAvatar(
                              //     backgroundImage:
                              //         AssetImage('dish_images/ks_katsu.jpeg')),
                              onTap: () => _onTapItem(context, index),
                            )
                          : new Container();
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, int index) {
    if (selectedIndex == null) {
      setState(() {
        selectedIndex = index;
      });
    } else {
      setState(() {
        selectedIndex = null;
      });
    }

    // Scaffold.of(context).showSnackBar(new SnackBar(
    //     content: new Text(selectedIndex.toString() + " selected")));
  }
}
