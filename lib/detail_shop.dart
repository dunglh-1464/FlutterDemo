import 'package:flutter/material.dart';

class DetailShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
     title: "Shop Detail",
     home: Scaffold(
       body:  SafeArea(
         child:  Container(
           color: Colors.white,
           child: SingleChildScrollView(child: Padding(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: <Widget>[
                 Container(
                   constraints: BoxConstraints(maxHeight: 200),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       imageHeaderExpanded,
                       rightHeaderExpanded,
                     ],
                   ),
                 ),
                 SizedBox(height: 20),
                 aboutText,
                 SizedBox(height: 40),
                 addressView,
                 SizedBox(height: 20),
                 activityRow
               ],
             ),
             padding: EdgeInsets.only(left: 15, right: 15, top: 15),
           ),),
         )
       ),
     ),
   );
  }
  get imageHeaderExpanded => Expanded(
    child: ClipRRect(
      child: Image.asset('assets/images/girl.jpg', height: 200, fit: BoxFit.fill,),
      borderRadius: BorderRadius.circular(20),
    ),
    flex: 1,
  );

  get rightHeaderExpanded => Expanded(
    child:  Padding(
      child: Container(
        child: rightViewHeader,
//      height: 200,
      ),
      padding: EdgeInsets.only(left: 15),
    ),
    flex: 2,
  );

  get rightViewHeader => Column(
      mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Dr. Stefeni \nAlbert",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text("Heart Speailist",
          style: TextStyle(fontSize: 20)
      ),
//      Container(height: 20,),
      Spacer(),
      Padding(child: Row(
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image
                  .asset('assets/images/gmail.png', height: 50, width: 50),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/images/phone.png', height: 50, width: 50),
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset('assets/images/camera.png', height: 50, width: 50),
            ),
          ),
        ],
      ),padding: EdgeInsets.only(bottom: 10),)

    ],
  );

  // ®
get aboutText => Container(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("About", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      SizedBox(height: 20),
      Text("Dr. Stefeni Albert is a cardiolongist in Nashville & affiliated with multiple hospitals in ther area.He received his "
          "midical degree from Duke University School of Medicine and has been in practice for more than 20 year.")
    ],
  ),
);

get addressView => Row(children: <Widget>[
  Expanded(
    child: leftsubAddressView,
    flex: 1,
  ),
  Expanded(
    child: Container(
      child: ClipRRect(
        child: Image.asset('assets/images/map.png'),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.all(15),
    )
  )
  ]
);

get leftsubAddressView => Container(
  child: Column(
    children: <Widget>[
      Expanded(
        child: Container(child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Icon(Icons.location_on, size: 24,)),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Address", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("House #2, Road #5\n Green Road\nDhanmondi, Dhaka,\nBanladesh", style: TextStyle(fontSize: 15),)
              ],
            ),
              flex: 3,
            )
          ],
        )),
      ),
      Expanded(
        child: Container(child: Row(
          children: <Widget>[

            Expanded(child: Icon(Icons.access_alarm, size: 24,)),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Daily Practict", style: TextStyle(fontSize: 20),),
                Text("Monday - Friday\nOpen till 7Pm", style: TextStyle(fontSize: 15),)
              ],
            ),
              flex: 3,)
          ],
        )),
      ),
    ],
  ),
  height: 250,
);
get activityRow => Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Text("Activity", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
    SizedBox(height: 15,),
    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
         
          Expanded(
            child: Container(child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(child: Container(
//                  color: Colors.blue,
                    child: Icon(Icons.library_books, size: 20),
                    width: 40,
                    height: 40,

                    decoration: myBoxDecoration(Colors.white.withOpacity(0.5), radius: 20.0),
                  ),)
                ),
                Expanded(
                  child: Text("List of Schedule"),
                  flex: 2,
                )
              ],
            ), height: 100, width: 150,
              decoration: myBoxDecoration(Colors.orangeAccent),),
          ),
          Container(height: 100,width: 30,),
          Expanded(
            child: Container(child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(child: Container(
//                  color: Colors.blue,
                    child: Icon(Icons.library_books, size: 20),
                    width: 40,
                    height: 40,

                    decoration: myBoxDecoration(Colors.white.withOpacity(0.5), radius: 20.0),
                  ),)
                ),
                Expanded(
                  child: Text("Doctor's Daily Post"),
                  flex: 2,
                )
              ],
            ), height: 100,
              decoration: myBoxDecoration(Colors.grey),),
          ),
        ],
      ),
//      height: 300,
    ),
  ],
);
}

BoxDecoration myBoxDecoration(Color color, {double radius = 10.0}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(
        Radius.circular(radius) //         <--- border radius here
    ),
  );
}