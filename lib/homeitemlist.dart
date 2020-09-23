import 'package:btvn_1/Person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeItemList extends StatefulWidget {
  
  final String title;
  final Function(int ) onClick ;
  var isSelected = false;
  var index = -1;

  HomeItemList({Key key, this.title, this.index, this.isSelected, this.onClick}): super(key: key){
  }
  @override
  State<StatefulWidget> createState() => _HomeItemList();
}

class _HomeItemList extends State<HomeItemList> with AutomaticKeepAliveClientMixin {
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
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap:() => widget.onClick(widget.index),
      child: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: widget.isSelected ? Colors.orangeAccent.withOpacity(0.5) : Colors.white,
        ),
        child: Center(child: Text("${widget.title}", style:  TextStyle(color: widget.isSelected ? Colors.orange : Colors.grey),)),
      ),
    );
  }
}