 import 'package:flutter/material.dart';
 class HomePage extends StatefulWidget {
   @override
    _HomePageState createState() => _HomePageState();
 }
 class _HomePageState extends State<HomePage> {

        // # link up image
   AssetImage circle=AssetImage("images/circle.png");
    AssetImage cross  = AssetImage("images/cross.png");
    AssetImage edit =AssetImage("images/edit.png");

    bool isCross=true;
    String message;
    List<String>gameState;



//  # Initization the  State of box with empty;;



@override
  void initState() {
    
    super.initState();
    this.gameState=[
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",

    ];
    this.message="Game_Starts...";


  }

//  #play game Method;

 playGame(int inDex){

   if(gameState[inDex]=="empty"){

 setState(() {
   if(this.isCross){
     this.gameState[inDex]="cross";
   }else{
     this.gameState[inDex]="circle";

   }
   this.isCross=!this.isCross;
    this.checkWin();
 });

   }


 }

//  #Reset game Method;

  reSet(){
    setState(() {
      
    
    this.gameState=[
       "empty",
       "empty",
       "empty",
       "empty",
       "empty",
       
       "empty",
       "empty",
       "empty",
       "empty",

    ];
     this.message="Game_Reseted..";
    });
  }
//  #Get image method;
    AssetImage GetImage(String value){
        

        switch (value) {
          case('cross'):
          return cross;
            
            break;
             case('empty'):
          return edit;
            
            break;

             case('circle'):
          return circle;
            
            break;




         
        }
        this.message="Play_Next_Person";

    }

//  #check for win logic;
       
checkWin() {
    if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      // if any user Win update the message state
      setState(() {
        this.message = '${this.gameState[0]} wins';
      });
    } else if ((gameState[3] != 'empty') &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        this.message = '${this.gameState[3]} wins';
      });
    } else if ((gameState[6] != 'empty') &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[6]} wins';
      });
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
      });
    } else if ((gameState[1] != 'empty') &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        this.message = '${this.gameState[1]} wins';
      });
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[2]} wins';
      });
    } else if ((gameState[0] != 'empty') &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
      });
    } else if ((gameState[2] != 'empty') &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        this.message = '${this.gameState[2]} wins';
      });
    } else if (!gameState.contains('empty')) {
      setState(() {
        this.message = 'Game Draw';
      });
    }
  }











    @override
    Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(

         title: Text("Tic-Tac-Toe"),
         backgroundColor: Colors.black,
         brightness: Brightness.dark,
         
       ),
       body:Column(
         
        mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,

       children: <Widget>[
         Expanded(
           child: GridView.builder(
            padding: EdgeInsets.all(3.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 1.0,
              mainAxisSpacing: 1.0,
              
            ),

            itemCount: gameState.length,
            itemBuilder: (context,i)=>SizedBox(
              width:150.0,
              height: 150.0,
              child:MaterialButton(
                onPressed:(){
                this.playGame(i);  
                },
                child: Image(
                  image:this.GetImage(this.gameState[i]),
                ),
              ) ,

            ),
           ),
         ),
         Container(
           padding: EdgeInsets.all(20.0),
           child: Text(
             this.message,style: TextStyle(
               fontStyle: FontStyle.italic,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
             

             ),
           ),
           
         ),
         MaterialButton(
            color: Colors.black,
            minWidth: 300.0,
            height: 50.0,
            child: Text(
              "Reset Game",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              
            ),
              onPressed: () {
              this.reSet();
              },
         ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Done By Krishna",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
       ],
       ),
     );
   }
 } 