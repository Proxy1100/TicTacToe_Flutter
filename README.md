# TicTacToe_Flutter Documentation
 This project is for  explain concepts and Logic for TicTacToe Game


The Better Way to Build a Logic Game is understanding the Whole Logic to Winning Stratery and Loseing Statergy 


Logic for TicTacToe


       
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





===================================================================================================== Installation Instructions

git clone https://github.com/Kabulkrish/TicTacToe_Flutter

Requirements

1)Flutter 2)Dart

How to Use

1)You need to Download the Project on Your Local Machine (OR ) Clone the Project to LocalMachine

2)Open the cloned Project by using your Editor 3)Fire Up your Emulator 4)Run the Project .


===================+++++++++++++++++++++++++++++++++++++++============================================
ScreenShot 1 ..................

![alt text](https://github.com/Kabulkrish/TicTacToe_Flutter/blob/master/screenshots/1.png)



ScreenShot 2 .....................


![alt text](https://github.com/Kabulkrish/TicTacToe_Flutter/blob/master/screenshots/2.png)
