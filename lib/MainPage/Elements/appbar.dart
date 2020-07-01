import 'package:flutter/material.dart';



class TopBar extends StatelessWidget implements PreferredSizeWidget {

  bool run;
  String title;

  TopBar(this.run, this.title);

  @override
  Widget build(BuildContext context) {
    if (run) {
      return AppBar(
        flexibleSpace: FlexibleSpaceBar(
          title: Text(title,
          style: TextStyle(fontSize: 24,),),
          centerTitle: true,
          background: Container(color: Colors.indigo[500],),
        ),
        backgroundColor: Colors.indigo[500],

      );
    } else {
      return null;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}






Drawer Sandwich (bool run, BuildContext context) {
  if (run) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Menu",
                  style: MenuBarStyle(),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.indigo[600],
            ),
          ),
          ListTile(
            title: Text("Option 1"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Option 2"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }else{
    return null;
  }
}

TextStyle MenuBarStyle () {
  return TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}


