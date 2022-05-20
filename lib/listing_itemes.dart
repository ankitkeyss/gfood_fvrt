import 'package:flutter/material.dart';
import 'package:gfood/details.dart';
import 'package:gfood/details.dart';

class ListingData extends StatefulWidget {
  var listdata, index, context, like;
  ListingData(this.listdata, this.index, this.context,this.like);
  @override
  State<ListingData> createState() => _ListingDataState(this.listdata, this.index, this.context,this.like);
}
class _ListingDataState extends State<ListingData> {

  //final obj = new DeatailsList();
  var listdata, index, context, like='false';

 // String like = 'false';

  _ListingDataState(this.listdata, this.index, this.context,
      this.like); // final obj = new ListData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    // child: listing(widget.listdata, widget.index, widget.context,
                       // widget.like),
                    child:  ListDetails(this.listdata, this.index, this.context, this.like),
                  )),
            ],
          ),
        ));
  }
}
