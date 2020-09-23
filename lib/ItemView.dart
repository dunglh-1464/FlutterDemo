import 'package:btvn_1/Person.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ItemList extends StatefulWidget {
  final Person person;

  ItemList({Key key, this.person}): super(key: key){
    print("constructor: ${person.name}");
  }
  @override
  State<StatefulWidget> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> with AutomaticKeepAliveClientMixin {
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
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  print("valueCheckbox${value}");
                  isChecked = value;
                });
              },
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("${widget.person.name}"),
                Text("${widget.person.phoneNumber}")
              ],
            ),
          )
        ],
      ),
    );
  }
}