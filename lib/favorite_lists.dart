import 'package:flutter/material.dart';
import 'package:gfood/details.dart';

class Favorite_list extends StatefulWidget { 
  var listdata,like;
  Favorite_list(this.listdata,this.like);


  @override
  State<Favorite_list> createState() => _Favorite_listState(this.listdata,this.like);
}

class _Favorite_listState extends State<Favorite_list> {
  var listdata,like;
  _Favorite_listState(this.listdata,this.like);

  @override
  Widget build(BuildContext context) {
    bool _isVisible;
    void showToast() {
      setState(() {
      //  _isVisible = !_isVisible;
      });
    }
    print("???????????????????????????????????????????????????????????????????????");
    print(listdata);
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: ListView.builder(
                     shrinkWrap: true,
                      itemCount: listdata.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListDetails(widget.listdata, index, context, widget.like);
                      })),

            ],
          ),
        ));
  }

}
