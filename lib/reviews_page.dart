import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dishes_data.dart';

class ReviewPage extends StatefulWidget {
  final Dish dish;
  ReviewPage({Key key, @required this.dish}) : super(key: key);
  @override
  ReviewPageState createState() => ReviewPageState(dish);
}

class ReviewPageState extends State<ReviewPage> {
  Dish _currDish;
  List<Review> _dishReviews;

  ReviewPageState(Dish dish) {
    this._currDish = dish;
    // _dishReviews = [Review(4.0, "Yes")];
    _dishReviews = getReviews(dish.id);
    // this._currDish = Dish();
  }
  Widget _buildList() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: _dishReviews.length,
        itemBuilder: (context, item) {
          return Column(children: [
            _buildRow(_dishReviews[item]),
            Divider(color: Colors.black)
          ]);
        });
  }

  Widget _buildRow(Review review) {
    return ListTile(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(review.score.toString()),
          Container(
            height: 5,
          ),
          RatingBar.builder(
            ignoreGestures: true,
            itemSize: 15.0,
            initialRating: review.score,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // print(rating);
            },
          ),
        ]),
        subtitle: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Container(
                width: 210,
                child: Text(review.review, style: TextStyle(fontSize: 14.0)))),
        onTap: () {
          setState(() {});
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Reviews for " + _currDish.name),
        ),
        body: Column(
          children: [
            Container(
                // color: Colors.orange[100],
                padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
                height: 210,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                        child: Image.asset(
                      _currDish.imagePath,
                      // height: 100,
                      fit: BoxFit.cover,
                    )))),
            Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            Expanded(child: _buildList())
          ],
        )
        // body: _buildList(),
        );
  }
}
