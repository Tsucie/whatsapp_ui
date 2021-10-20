import 'package:flutter/material.dart';
import 'package:whatsapp_ui_rizkyadji/data/call_item_model.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: callItemData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage:  NetworkImage(callItemData[i].avatarUrl),
            ),
            title: Text(
                  callItemData[i].name,
                  style:  TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:  Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                Icon(Icons.call_received, color: callItemData[i].colorItem,),
                SizedBox(width: 10.0,),
                Text(
                    callItemData[i].time,
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ],
              )
            ),
            trailing: callItemData[i].name == "Ibuk"
              ? Icon(Icons.videocam, color: Theme.of(context).primaryColor,)
              : Icon(Icons.call, color: Theme.of(context).primaryColor,),
          )
        ],
      ),
    );
  }
}