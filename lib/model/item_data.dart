


import 'dart:collection';

import 'package:flutter/foundation.dart';

import 'item.dart';

class ItemData with ChangeNotifier{

   List<Item> _items = [];

  get items => UnmodifiableListView(_items);

  get size => _items.length;

  void addItem(Item item){

    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item){
    _items.remove(item);
  }

  void toggleItem(Item item){

    item.toggle();
    notifyListeners();

  }






}