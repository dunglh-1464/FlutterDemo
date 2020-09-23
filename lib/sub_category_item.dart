import 'package:btvn_1/Person.dart';
import 'package:btvn_1/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SubCategoryItem extends StatefulWidget {

  final SubCategory subCategory;

  SubCategoryItem({Key key, this.subCategory}): super(key: key){
  }
  @override
  State<StatefulWidget> createState() => _SubCategoryItem();
}

class _SubCategoryItem extends State<SubCategoryItem> with AutomaticKeepAliveClientMixin {
  bool isChecked = false;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("Itemca${widget.subCategory.imagePath}");
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        width: 150,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.orange
        ),
        child: Center(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${widget.subCategory.name}", style: TextStyle(fontSize: 18, color: Colors.white),textAlign: TextAlign.start,),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${widget.subCategory.name}", style: TextStyle(fontSize: 12, color: Colors.white),),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                        child: Image.asset("${widget.subCategory.imagePath}",),

                    ),
                  ),
                )

              ],
            )

        ),
      ),
    );
  }
}