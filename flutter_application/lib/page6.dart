import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  final List<Item> listItems = [
    Item("post 1", "author 1"),
    Item("post 2", "author 2"),
    Item("post 3", "author 3"),
    Item("post 4", "author 4"),
    Item("post 5", "author 5"),
    Item("post 6", "author 6"),
    Item("post 7", "author 7"),
    Item("post 8", "author 8"),
    Item("post 9", "author 9"),
    Item("post 10", "author 10"),
  ];

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  /*
    ListView vs. SingleChildLayout
      ListView as an optimisation to the combination of SingleChildScrollView + Column.
      By using ListView, only the items that are visible are mounted and painted.
      So for complex layouts with a small number of items, the performance gain  of using 
      ListView may not be worth the trouble, in which case we can use SingleChildScrollView.
    https://stackoverflow.com/questions/62146197/what-is-the-difference-between-listview-and-singlechildscrollview-in-flutter
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scrollable List"),
        ),
        body: ListView.builder(
            itemCount: this.widget.listItems.length,
            itemBuilder: (context, index) {
              var item = this.widget.listItems[index];
              return Card(
                child: ListTile(
                    title: Text(item.post, style: TextStyle(fontSize: 45)),
                    subtitle: Text(
                      item.author,
                      style: TextStyle(fontSize: 25),
                    )),
              );
            }));
  }
}

class Item {
  final String post;
  final String author;
  Item(this.post, this.author);
}
