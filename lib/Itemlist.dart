

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/model/item_data.dart';

class ItemList extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return Consumer<ItemData>(builder: (context, data, child){

      return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.size,
        
        itemBuilder: (context, index){
          
          final item = data.items[index];
          
          return GestureDetector(
            onLongPress: () => data.removeItem(item),
            child: Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text(item.item[0]),
                ),
                title: Row(
                  children: [
                    Text(item.item),
                    Checkbox(value: item.completed, onChanged: (c) => data.toggleItem(item))
                  ],
                ),
              ),
            ),
          );
          
          
          
          
        },
        
      );

    });


  }


}