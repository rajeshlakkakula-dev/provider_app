

class Item{

  String item;
  bool completed;

  Item({required this.item,this.completed=false});

  void toggle(){
    completed = !completed; //true
  }

}