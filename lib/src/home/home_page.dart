import 'package:flutter/material.dart';
import 'package:ignite_game_room/data/Game.dart';
import 'package:ignite_game_room/src/home/book_slot_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Game> list = getList();
    return Scaffold(
      appBar: AppBar(title: Text("Gadgets Info"),),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return
          Container(
          color: list[index].isAvailable?const Color(0xFF90ecab): const Color(0xFFf76262),
          child: 
          ListTile(
            title:
                   Row(children: <Widget>[
            Image.asset(list[index].image,width: 80.0,height: 80.0,),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(list[index].title,style: TextStyle(fontSize: 20.0),),
              Text("Next at :"+list[index].nextTime,style: TextStyle(fontSize: 16.0),overflow: TextOverflow.ellipsis,),
              
            ],),
            
          ],),
       
            trailing: IconButton(icon: Icon(Icons.notifications_active,color: Colors.yellow,), onPressed: null),
            onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSlotPage()));
            
            },
          )
            );
        
        },
        
      ),
    );
  }

  List<Game> getList(){
    List<Game> g = new List<Game>();
    g.add(Game("assets/images/pool1.jpg","Pool 1","12:20 pm",true));
    g.add(Game("assets/images/pool2.jpg","Pool 2","12:20 pm",false));
    g.add(Game("assets/images/ps4.png","PS4 - 1","2:20 pm",true));
    g.add(Game("assets/images/ps4.png","PS4 - 2","3:20 pm",false));
    g.add(Game("assets/images/xbox.png","XBOX - 1","3:00 pm",true));
    g.add(Game("assets/images/xbox.png","XBOX - 2","1:20 pm",true));
    g.add(Game("assets/images/xbox.png","XBOX - 3","12:30",true));
    g.add(Game("assets/images/xbox.png","XBOX - 4","12:20",false));
    g.add(Game("assets/images/xbox.png","XBOX - 5","12:20",false));
    g.add(Game("assets/images/xbox.png","XBOX - 6","12:20",true));
    return g;
  }

}