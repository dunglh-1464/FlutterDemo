
import 'dart:io';

import 'package:btvn_1/category.dart';
import 'package:btvn_1/homeitemlist.dart';
import 'package:btvn_1/sub_category_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  var arrayType = ["Adults", "Children", "Women", "Men"];
  var subArray = SubCategory.generateSubCategories;
  @override
  State<StatefulWidget> createState() => _HomeList();
}

class _HomeList extends State<HomeList> {
  var isSelected = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30,),
                Text("Find your\nConsultation", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    fillColor: Colors.black12,
                    filled: true,
                    prefixIcon: Icon(Icons.search, size: 20,),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black),
//                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 0.0))
                  ),
                ),
                SizedBox(height: 20,),
                Text("Categories",style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: 35
                  ),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => HomeItemList(title: widget.arrayType[index],
                        index: index,
                        isSelected: isSelected==index,
                        onClick: (selectedIndex) {
                          setState(() {
                            isSelected =selectedIndex;
                          });
                        },) ,
                      separatorBuilder: (context, index) => SizedBox(width: 20,),
                      itemCount: widget.arrayType.length),

                ),
                SizedBox(height: 20,),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: 200
                  ),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => SubCategoryItem(subCategory: widget.subArray[index],),
                      separatorBuilder: (context, index) => SizedBox(width: 10,),
                      itemCount: widget.arrayType.length),

                ),
                SizedBox(height: 20,),
                Text("Docs", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20,),
                Container(
//                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),

//                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset('assets/images/cough.jpg', width: 50,),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(child: RichText(
                            text: TextSpan(
                                text: 'Dr. Stefeni Albert \n',
                                children: <TextSpan>[
                                  TextSpan(text: 'Heart speailist', style: TextStyle(fontSize: 15, color: Colors.black)),

                                ], style: TextStyle(fontSize: 20, color: Colors.orange)
                            ),
                          ),),
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              ),
                          color: Colors.orangeAccent,
                          textColor: Colors.white,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {},
                          child: Text(
                            "Call",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }

}