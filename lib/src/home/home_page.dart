import 'package:flutter/material.dart';
import 'package:ignite_game_room/data/Game.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Game> list = getList();
    return Scaffold(
      appBar: AppBar(title: Text("Gadget Info"),),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {  
          return Row(children: <Widget>[
            Container(
              child: Image.asset('assets/images/'),
            )
          ],);
        },
      ),
    );
  }

  List<Game> getList(){
    List<Game> g = new List<Game>();
    g.add(Game("assets/images/pool1.jpg","Pool 1","12:20 pm",true));
    g.add(Game("assets/images/pool2.jpg","Pool 2","12:20 pm",true));
    g.add(Game("assets/images/ps4.jpg","PS4 - 1","2:20 pm",true));
    g.add(Game("assets/images/ps4.jpg","PS4 - 2","3:20 pm",true));
    g.add(Game("assets/images/xbox.png","XBOX - 1","3:00 pm",true));
    g.add(Game("assets/images/xbox.png","XBOX - 2","1:20 pm",true));
    g.add(Game("assets/images/xbox.png","XBOX - 3","12:30",true));
    g.add(Game("assets/images/xbox.png","XBOX - 4","12:20",true));
    g.add(Game("assets/images/xbox.png","XBOX - 5","12:20",true));
    g.add(Game("assets/images/xbox.png","XBOX - 6","12:20",true));
    return g;
  }

}