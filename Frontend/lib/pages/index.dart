
import 'package:flutter/material.dart';
import 'package:my_app_two/theme/color.dart';

class IndexPageState extends StatefulWidget {
  @override
  State<IndexPageState> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Listing Users"),
      ),
      body : getBody(),
    );
  }
  Widget getBody(){
    return ListView.builder(itemBuilder: (context,index){
      return getCard();
    });
  }
  Widget getCard(){
    return Card(
      child: ListTile(
        title: Row(
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: primary
              ),
            )
          ],
        )
      ),
    );
  }

}
