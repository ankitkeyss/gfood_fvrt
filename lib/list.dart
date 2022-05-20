import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gfood/favorite_lists.dart';
import 'package:gfood/listing_itemes.dart';

import 'list_map_with_index_extension.dart';

class List_Data extends StatefulWidget {
  final listdata = [
    {
      'amount': '22.30',
      'rating': 2.5,
      'total_rating': '(37)',
      'dinner': 'Dinner',
      '2': ' in SpringField',
      '3': 'Family dinner with valley view ',
      '4': 'Diana',
      'img': 'assets/fff.jpeg',
      'status': 'true',

    },
    {
      'amount': '24.30',
      'rating': 3.0,
      'total_rating': '(76)',
      'dinner': 'lunch',
      '2': ' in SpringField',
      '3': 'Family dinner with valley view ',
      '4': 'Jacks',
      'img': 'assets/burger.jpg',
      'status': 'true',
    },
    {
      'amount': '25.30',
      'rating': 3.0,
      'total_rating': '(59)',
      'dinner': 'breakfast',
      '2': ' in De-lights',
      '3': 'Family dinner with valley view ',
      '4': 'Ruby',
      'img': 'assets/dinners.jpg',
      'status': 'true',
    },
    {
      'amount': '25.30',
      'rating': 2.5,
      'total_rating': '(67)',
      'dinner': 'breakfast',
      '2': ' in De-lights',
      '3': 'Family dinner with valley view ',
      '4': 'Yami',
      'img': 'assets/burger.jpg',
      'status': 'true',
    },
  ];

  @override
  State<List_Data> createState() => _List_DataState(this.listdata);
}

class _List_DataState extends State<List_Data> {
  dynamic listdata;
  _List_DataState(this.listdata);
  String like = 'true';
  var favorite_list;
  // final List<String> products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listdata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return listing(listdata, index);
                  })),
          // Container(
          //   child: ElevatedButton(
          //     onPressed: (){
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (context) => Favorite_list(listdata ,like)));
          //     },
          //     child: Icon(Icons.favorite),
          //   ),
          // )
        ],
      ),
    ));
  }

  Widget listing(listdata, index) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 0),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width / 2.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image(
                        image: AssetImage(
                          '${listdata[index]['img']}',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 16,
                      right: 10,
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              if (like == 'true') {
                                // print('126.....................');
                                     print(like);
                                like = listdata[index]['status'] = 'false';

                                // });
                              } else {
                                //  setState(() {
                                //     print('132.....................');
                                      print(like);
                                like = listdata[index]['status'] = 'true';
                                //favorite_list=like;
                              }
                            });
                          },
                          child: listdata[index]['status'] == 'false'
                              ? Icon(Icons.favorite, color: Colors.red)
                              : Icon(
                            Icons.favorite_border_sharp,
                            color: Colors.red,
                          ))),
                  Positioned(
                      bottom: 13,
                      left: 10,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(0XFF4D4D4D),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 1,
                            left: 1,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  child: RatingBar.builder(
                                itemSize: 11,
                                initialRating: listdata[index]['rating'],
                                minRating: 1,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )),
                             // Spacer(),
                              Container(
                                  child: Text(
                                listdata[index]['total_rating'].toString(),
                                style: TextStyle(color: Colors.white70),
                              ))
                              // Icon(
                              //   Icons.star_outlined,
                              //   color: Color(0XFFFF9E30),
                              //   size: 20,
                              // ),
                              // Text(
                              //   '${listdata[index]['rating']}',
                              //
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 13,
                              //     fontWeight: FontWeight.w500,
                              //   ),
                              //   textAlign: TextAlign.center,
                              // ),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                          width: 65,
                          height: 22,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '\$ ',
                                  style: TextStyle(
                                    color: Color(0XFFFF9E30),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  listdata[index]['amount'],
// '${widget.listdata['amount']}',
// listdata['amount'],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ])))
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width / 2.2,
                  decoration: BoxDecoration(
//  color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: listdata[index]['dinner'],
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFFFF6E07))),
                          TextSpan(
                              text: listdata[index]['2'],
//  text:'${widget.listdata['2']}',

                              style: TextStyle(
                                  fontSize: 13,
                                  letterSpacing: 0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff666666)))
                        ])),
                      ),
// SizedBox(height: 12,),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        child: GestureDetector(
                          child: SizedBox(
                            width: 170,
                            child: Text(listdata[index]['3'],
//'${widget.listdata['3']}',
//listdata['3'],
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000))),
                          ),
                          onTap: () {
                            print("line 234 list.dart");
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyHomePage(
                                    listdata, index, context, like)));
                          },
                        ),
                      ),
                      Row(children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10, left: 20),
                          height: 55,
                          width: 44,
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundImage: AssetImage('assets/p.jpg'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10, left: 10),
                          child: Text.rich(
                            TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' by ',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff666666))),
                                TextSpan(
                                    text: listdata[index]['4'],
// text:'${widget.listdata['4']}',
// text: listdata['2'],
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0000000))),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ]),
                    ],
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
