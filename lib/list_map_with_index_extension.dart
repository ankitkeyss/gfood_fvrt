import 'package:flutter/material.dart';
import 'details.dart';

class MyHomePage extends StatefulWidget {
  var listdata, index, context, like;

  MyHomePage(this.listdata, this.index, this.context, this.like);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    print(widget.listdata);
    print("line no 44");
    print(widget.listdata[widget.index]);
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                    child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),

                  child:  ListDetails(widget.listdata, widget.index, widget.context, widget.like),
                )),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

// Widget part1(listdata, index, context) {
//   return Column(
//     children: [
//       Stack(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 0),
//             child: Container(
//               // width: w,
//               // height: h,
//               decoration: BoxDecoration(
//                   color: Colors.red,
//                   borderRadius: BorderRadius.all(Radius.circular(20))),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10),
//                     bottomLeft: Radius.circular(10),
//                     bottomRight: Radius.circular(10)),
//                 child: Image(
//                   image: AssetImage('assets/fff.jpeg'),
//                   // width: w,
//                   // height: 120,
//                   fit: BoxFit.cover,
//                   //  fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//               bottom: 16,
//               right: 10,
//               child: Icon(
//                 Icons.favorite_border_sharp,
//                 color: Colors.red,
//                 size: 24,
//               )),
//           Positioned(
//               bottom: 13,
//               left: 10,
//               child: Container(
//                 width: 85,
//                 height: 28,
//                 decoration: BoxDecoration(
//                     color: Color(0XFF4D4D4D),
//                     borderRadius: BorderRadius.all(Radius.circular(20))),
//                 child: Padding(
//                   padding: EdgeInsets.only(top: 5, left: 9, bottom: 7),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.star_outlined,
//                         color: Color(0XFFFF9E30),
//                         size: 20,
//                       ),
//                       Text(
//                         listdata[0]['rating'],
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 13,
//                           fontWeight: FontWeight.w500,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               )),
//           Positioned(
//               top: 10,
//               left: 10,
//               child: Container(
//                   width: 65,
//                   height: 22,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(20))),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           '\$ ',
//                           style: TextStyle(
//                             color: Color(0XFFFF9E30),
//                             fontSize: 15,
//                             fontWeight: FontWeight.w600,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                         Text(
//                           listdata[index]['amount'],
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w600,
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ])))
//         ],
//       )
//     ],
//   );
// }
//
// Widget part2(listdata, index, context) {
//   print('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<');
//   print(listdata);
//   return Column(
//     children: [
//       Stack(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: 0),
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   RichText(
//                       text: TextSpan(children: <TextSpan>[
//                     TextSpan(
//                         text: listdata[index]['dinner'],
//                         style: TextStyle(
//                             fontFamily: 'Poppins',
//                             fontSize: 13,
//                             letterSpacing: 0,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0XFFFF6E07))),
//                     TextSpan(
//                         text: listdata[0]['2'],
//                         style: TextStyle(
//                             fontSize: 13,
//                             letterSpacing: 0,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xff666666)))
//                   ])),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   GestureDetector(
//                     child: SizedBox(
//                       width: 170,
//                       child: Text(listdata[index]['3'],
//                           style: TextStyle(
//                               fontFamily: 'Poppins',
//                               letterSpacing: 0,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: Color(0xff000000))),
//                     ),
//                     onTap: () {},
//                   ),
//                   Row(children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) => List_Data()));
//                       },
//                       child: Container(
//                         margin: EdgeInsets.only(top: 30),
//                         height: 55,
//                         width: 44,
//                         child: const CircleAvatar(
//                           radius: 15.0,
//                           backgroundImage: AssetImage('assets/p.jpg'),
//                           backgroundColor: Colors.transparent,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(
//                         left: 5,
//                         top: 30,
//                       ),
//                       child: Text.rich(
//                         TextSpan(
//                           children: <TextSpan>[
//                             TextSpan(
//                                 text: ' by ',
//                                 style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     letterSpacing: 0,
//                                     fontSize: 13,
//                                     fontWeight: FontWeight.w600,
//                                     color: Color(0xff666666))),
//                             TextSpan(
//                                 text: listdata[index]['2'],
//                                 style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     letterSpacing: 0,
//                                     fontSize: 13,
//                                     fontWeight: FontWeight.w600,
//                                     color: Color(0xff0000000))),
//                           ],
//                         ),
//                         textAlign: TextAlign.left,
//                       ),
//                     ),
//                   ]),
//                 ],
//               ),
//             ),
//           )
//         ],
//       )
//     ],
//   );
// }
