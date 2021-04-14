import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app/reviews_page.dart';
import 'dishes_data.dart';
import 'package:maps_launcher/maps_launcher.dart';

class SearchList extends StatefulWidget {
  static String tag = 'searchlist-page';
  String search;
  SearchList({Key key, this.search}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState(search);
}

List<Dish> dishes = getDishData();

class _SearchListState extends State<SearchList> {
  TextEditingController searchController = new TextEditingController();
  String filter;
  int selectedIndex;
  List<Review> _dishReviews;

  _SearchListState(String search) {
    searchController.text = search;
    filter = search;
  }

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
                cursorColor: Colors.blue[900],
                controller: searchController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Colors.blue[900]),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(32.0))),
                  hintText: 'Search by dish or restaurant',
                  suffixIcon: IconButton(
                    onPressed: searchController.clear,
                    icon: Icon(
                      Icons.clear,
                      color: Colors.blue[900],
                    ),
                  ),
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
                                      ignoreGestures: true,
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
                                      onRatingUpdate: (rating) {},
                                    ),
                                  ],
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0),
                                child: Container(
                                    height: 60.0,
                                    width: 120.0,
                                    child: new Image.asset(
                                      '${dishes[index].imagePath}',
                                      fit: BoxFit.cover,
                                    ))),
                            onTap: () =>
                                _onTapItem(context, index, dishes[index].id),
                          ),
                          Divider(color: Colors.grey[400]),
                          if (selectedIndex == index)
                            Column(children: [
                              Container(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(15, 0, 20, 10),
                                      child: Container(
                                          height: 250,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0, 10, 0, 15),
                                                        child: Text(
                                                            '${getAddress(dishes[index].restaurant)}'),
                                                      ),
                                                      ElevatedButton(
                                                          onPressed: () => _onGetDirectionsPress(
                                                              context,
                                                              dishes[index]
                                                                      .restaurant +
                                                                  " " +
                                                                  getAddress(dishes[
                                                                          index]
                                                                      .restaurant)),
                                                          child: Text(
                                                              "Get directions")),
                                                      Container(
                                                          width: 130,
                                                          child: ElevatedButton(
                                                              onPressed: () =>
                                                                  _onMoreDishesPressed(
                                                                      context,
                                                                      dishes[index]
                                                                          .restaurant),
                                                              child:
                                                                  Text("Menu")))
                                                    ],
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              25, 10, 0, 0),
                                                      child: Column(
                                                        children: [
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  // color: Colors.lightBlue,
                                                                  width: 190,
                                                                  height: 35,
                                                                  child: Text(
                                                                    _dishReviews[
                                                                            0]
                                                                        .review,
                                                                    softWrap:
                                                                        true,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  )),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          93,
                                                                          0),
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      RatingBar
                                                                          .builder(
                                                                        ignoreGestures:
                                                                            true,
                                                                        itemSize:
                                                                            20.0,
                                                                        initialRating:
                                                                            _dishReviews[0].score,
                                                                        minRating:
                                                                            0,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        allowHalfRating:
                                                                            true,
                                                                        itemCount:
                                                                            5,
                                                                        itemPadding:
                                                                            EdgeInsets.symmetric(horizontal: 0),
                                                                        itemBuilder:
                                                                            (context, _) =>
                                                                                Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.amber,
                                                                        ),
                                                                        onRatingUpdate:
                                                                            (rating) {},
                                                                      ),
                                                                    ],
                                                                  )),
                                                            ],
                                                          ),
                                                          Container(
                                                            height: 20,
                                                          ),
                                                          Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  // color: Colors.lightBlue,
                                                                  width: 190,
                                                                  height: 35,
                                                                  child: Text(
                                                                    _dishReviews[
                                                                            1]
                                                                        .review,
                                                                    softWrap:
                                                                        true,
                                                                    maxLines: 2,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  )),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          93,
                                                                          0),
                                                                  child: Row(
                                                                    children: <
                                                                        Widget>[
                                                                      RatingBar
                                                                          .builder(
                                                                        ignoreGestures:
                                                                            true,
                                                                        itemSize:
                                                                            20.0,
                                                                        initialRating:
                                                                            _dishReviews[0].score,
                                                                        minRating:
                                                                            0,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        allowHalfRating:
                                                                            true,
                                                                        itemCount:
                                                                            5,
                                                                        itemPadding:
                                                                            EdgeInsets.symmetric(horizontal: 0),
                                                                        itemBuilder:
                                                                            (context, _) =>
                                                                                Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.amber,
                                                                        ),
                                                                        onRatingUpdate:
                                                                            (rating) {},
                                                                      ),
                                                                    ],
                                                                  )),
                                                            ],
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          70,
                                                                          15,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  height: 22,
                                                                  width: 100,
                                                                  child: ElevatedButton(
                                                                      onPressed: () => _pushAllReviews(
                                                                          context,
                                                                          dishes[
                                                                              index]),
                                                                      style: ButtonStyle(
                                                                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.fromLTRB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1)),
                                                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[900])),
                                                                      child: Text("More reviews", style: TextStyle(fontSize: 12, color: Colors.white))))),
                                                        ],
                                                      ))
                                                ],
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 15, 0, 0),
                                                  child: Column(children: [
                                                    Text("How was it?"),
                                                    RatingBar.builder(
                                                      itemSize: 40.0,
                                                      initialRating: 0,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 0),
                                                      itemBuilder:
                                                          (context, _) => Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate:
                                                          (rating) =>
                                                              _openReviewMenu(
                                                                  dishes[index]
                                                                      .name,
                                                                  rating,
                                                                  dishes[index]
                                                                      .id),
                                                    )
                                                  ])),
                                            ],
                                          )))),
                              Divider(color: Colors.grey[400])
                            ])
                        ]))
                      : '${dishes[index].restaurant}'
                                  .toLowerCase()
                                  .contains(filter.toLowerCase()) ||
                              '${dishes[index].name}'
                                  .toLowerCase()
                                  .contains(filter.toLowerCase())
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
                                          ignoreGestures: true,
                                          itemSize: 20.0,
                                          initialRating: dishes[index].rating,
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
                                          onRatingUpdate: (rating) {},
                                        ),
                                      ],
                                    ),
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                                leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(7.0),
                                    child: Container(
                                        height: 60.0,
                                        width: 120.0,
                                        child: new Image.asset(
                                          '${dishes[index].imagePath}',
                                          fit: BoxFit.cover,
                                        ))),
                                onTap: () => _onTapItem(
                                    context, index, dishes[index].id),
                              ),
                              Divider(color: Colors.grey[400]),
                              if (selectedIndex == index)
                                Column(children: [
                                  Container(
                                      child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 0, 20, 10),
                                          child: Container(
                                              height: 250,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(0, 10,
                                                                    0, 15),
                                                            child: Text(
                                                                '${getAddress(dishes[index].restaurant)}'),
                                                          ),
                                                          ElevatedButton(
                                                              onPressed: () => _onGetDirectionsPress(
                                                                  context,
                                                                  dishes[index]
                                                                          .restaurant +
                                                                      " " +
                                                                      getAddress(
                                                                          dishes[index]
                                                                              .restaurant)),
                                                              child: Text(
                                                                  "Get directions")),
                                                          Container(
                                                              width: 130,
                                                              child: ElevatedButton(
                                                                  onPressed: () =>
                                                                      _onMoreDishesPressed(
                                                                          context,
                                                                          dishes[index]
                                                                              .restaurant),
                                                                  child: Text(
                                                                      "Menu")))
                                                        ],
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  25, 10, 0, 0),
                                                          child: Column(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      // color: Colors.lightBlue,
                                                                      width:
                                                                          190,
                                                                      height:
                                                                          35,
                                                                      child:
                                                                          Text(
                                                                        _dishReviews[0]
                                                                            .review,
                                                                        softWrap:
                                                                            true,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                      )),
                                                                  Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              0,
                                                                              93,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        children: <
                                                                            Widget>[
                                                                          RatingBar
                                                                              .builder(
                                                                            ignoreGestures:
                                                                                true,
                                                                            itemSize:
                                                                                20.0,
                                                                            initialRating:
                                                                                _dishReviews[0].score,
                                                                            minRating:
                                                                                0,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            allowHalfRating:
                                                                                true,
                                                                            itemCount:
                                                                                5,
                                                                            itemPadding:
                                                                                EdgeInsets.symmetric(horizontal: 0),
                                                                            itemBuilder: (context, _) =>
                                                                                Icon(
                                                                              Icons.star,
                                                                              color: Colors.amber,
                                                                            ),
                                                                            onRatingUpdate:
                                                                                (rating) {},
                                                                          ),
                                                                        ],
                                                                      )),
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      // color: Colors.lightBlue,
                                                                      width:
                                                                          190,
                                                                      height:
                                                                          35,
                                                                      child:
                                                                          Text(
                                                                        _dishReviews[1]
                                                                            .review,
                                                                        softWrap:
                                                                            true,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                      )),
                                                                  Padding(
                                                                      padding: EdgeInsets
                                                                          .fromLTRB(
                                                                              0,
                                                                              0,
                                                                              93,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        children: <
                                                                            Widget>[
                                                                          RatingBar
                                                                              .builder(
                                                                            ignoreGestures:
                                                                                true,
                                                                            itemSize:
                                                                                20.0,
                                                                            initialRating:
                                                                                _dishReviews[0].score,
                                                                            minRating:
                                                                                0,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            allowHalfRating:
                                                                                true,
                                                                            itemCount:
                                                                                5,
                                                                            itemPadding:
                                                                                EdgeInsets.symmetric(horizontal: 0),
                                                                            itemBuilder: (context, _) =>
                                                                                Icon(
                                                                              Icons.star,
                                                                              color: Colors.amber,
                                                                            ),
                                                                            onRatingUpdate:
                                                                                (rating) {},
                                                                          ),
                                                                        ],
                                                                      )),
                                                                ],
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          70,
                                                                          15,
                                                                          0,
                                                                          0),
                                                                  child: Container(
                                                                      height:
                                                                          22,
                                                                      width:
                                                                          100,
                                                                      child: ElevatedButton(
                                                                          onPressed: () => _pushAllReviews(
                                                                              context,
                                                                              dishes[
                                                                                  index]),
                                                                          style: ButtonStyle(
                                                                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.fromLTRB(0, 0, 0, 1)),
                                                                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[900])),
                                                                          child: Text("More reviews", style: TextStyle(fontSize: 12, color: Colors.white))))),
                                                            ],
                                                          ))
                                                    ],
                                                  ),
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 15, 0, 0),
                                                      child: Column(children: [
                                                        Text("How was it?"),
                                                        RatingBar.builder(
                                                          itemSize: 40.0,
                                                          initialRating: 0,
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
                                                          onRatingUpdate: (rating) =>
                                                              _openReviewMenu(
                                                                  dishes[index]
                                                                      .name,
                                                                  rating,
                                                                  dishes[index]
                                                                      .id),
                                                        )
                                                      ])),
                                                ],
                                              )))),
                                  Divider(color: Colors.grey[400])
                                ])
                            ]))
                          : new Container();
                },
              ),
            ),
          ],
        ));
  }

  void _onTapItem(BuildContext context, int index, int dishId) {
    if (selectedIndex == index) {
      setState(() {
        selectedIndex = null;
      });
    } else {
      setState(() {
        selectedIndex = index;
        _dishReviews = getReviews(dishId);
      });
    }
  }

  void _onGetDirectionsPress(BuildContext context, String queryAddress) {
    MapsLauncher.launchQuery(queryAddress);
  }

  void _onMoreDishesPressed(BuildContext context, String restaurant) {
    searchController.text = restaurant;
    selectedIndex = null;
  }

  void _pushAllReviews(BuildContext context, Dish currDish) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ReviewPage(dish: currDish)));
  }

  void _openReviewMenu(String dishName, double rating, int dishId) {
    double currRating = rating;
    TextEditingController reviewController = new TextEditingController();
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              actions: [
                new Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 8),
                  child: ElevatedButton(
                      onPressed: () => _showReviewSubmit(
                          context, currRating, reviewController.text, dishId),
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
              content: Container(
                  // padding: EdgeInsets.fromLTRB(26, 0, 26, 10),
                  height: 300,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          // color: Colors.blue,
                          // width: 400,
                          height: 30,
                          child: Row(children: [
                            Spacer(),
                            IconButton(
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.clear),
                                color: Colors.blue[900],
                                onPressed: () => Navigator.of(context).pop())
                          ])),
                      Padding(
                          padding: EdgeInsets.fromLTRB(26, 0, 26, 10),
                          child: Column(
                            children: [
                              Column(children: [
                                // Column(children: [
                                Text(dishName, style: TextStyle(fontSize: 24)),
                                RatingBar.builder(
                                  itemSize: 40.0,
                                  initialRating: rating,
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
                                    currRating = rating;
                                  },
                                )
                              ]),
                              Text(
                                "(tap to change)",
                                style: TextStyle(fontSize: 14),
                              ),
                              Container(
                                height: 38,
                                width: 400,
                              ),
                              TextField(
                                controller: reviewController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Comments"),
                                autofocus: true,
                                maxLines: 5,
                              ),
                            ],
                          ))
                    ],
                  )));
        });
  }

  void _showReviewSubmit(
      BuildContext context, double score, String reviewText, int dishId) {
    Review newReview = new Review(score, reviewText);
    addReview(newReview, dishId);
    Navigator.of(context).pop();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.blue[900],
        content: const Text('Thanks for your input!😄',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
