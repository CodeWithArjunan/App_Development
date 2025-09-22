import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height/2,
              width: double.infinity,
              child: Center(
                child: MaterialButton(
                  onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>GamePage()));
                  },
                  height: 150,
                  color: Colors.white,
                  minWidth: 150,
                  shape: CircleBorder(),
                  child: Text("Start",style: TextStyle(color: Colors.black)),
                 ),
              )
            ),
            Container( 
              color: Colors.blue,
              height: MediaQuery.of(context).size.height/2,
              width: double.infinity,
              child: Center(
                child: MaterialButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
                  },
                  height: 150,
                  color: Colors.white,
                  minWidth: 150,
                  shape: CircleBorder(),
                  child: Text("Start",style: TextStyle(color: Colors.black)),
                 ),
              ),)
          ],
        ),
      ),
    );
  }
}

class GamePage extends StatefulWidget{
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  double rcheight=0;
  double bcheight=0;

  bool inizial=false;

  int playerAval=0;
  int playerBval=0;

  @override
  Widget build(BuildContext context) {
    if(inizial==false){
    rcheight=MediaQuery.of(context).size.height/2;
    bcheight= MediaQuery.of(context).size.height/2;
    
    inizial=true;
    }

    return Scaffold(
      body:Column(
        children: [

          //Player A

          MaterialButton(
            onPressed: (){
              setState(() {
                rcheight=rcheight+40;
                bcheight-=40;

                playerAval+=5;
              });
              double screenheight=MediaQuery.of(context).size.height;
              double maxheight=MediaQuery.of(context).size.height-60;

              print(screenheight);
              print(maxheight);

              if(maxheight<rcheight){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> WinPage("A")));
                inizial=false;
              }
            }, 
            padding: EdgeInsets.zero,
            child: Container(
              height: rcheight,
              width: double.infinity,
              color: Colors.red,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children:[ Expanded(
                  child:  Text(
                    "Player A",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                ),
                Text(playerAval.toString(), style: TextStyle(color: Colors.black, fontSize: 25))
                ],
              ),
            ),
          ),

          //Player B

           MaterialButton(
            onPressed: (){
              setState(() {
                bcheight=bcheight+40;
                rcheight-=40;

                playerBval+=5;
              });
                 double screenheight=MediaQuery.of(context).size.height;
              double maxheight=MediaQuery.of(context).size.height-60;

              print(screenheight);
              print(maxheight);

              if(maxheight<bcheight){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> WinPage("B")));
                inizial=false;
              }
            },
            padding: EdgeInsets.zero,
             child: Container(
              height: bcheight,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(10),
              child: Row(
                children:[ Expanded(
                  child:  Text(
                    "Player B",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                ),
                Text(playerBval.toString(), style: TextStyle(color: Colors.black, fontSize: 25))
                ],
              ),
                       ),
           )
        ],
      ),
    );
  }
}

class WinPage extends StatefulWidget{
  @override
  String Winner="";
  WinPage(this.Winner);

  @override
  State<WinPage> createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Wing PAge"),
        backgroundColor: Colors.red,
        
      ),
      body: Center(
        
        child: Text("The Winner is Player "+ widget.Winner),
      ),
    );
    
  }
}