import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp10());
}

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tic Tac Toe",
      theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: TicTacToePage(),
    );
  }

}

class TicTacToePage extends StatefulWidget{
  @override
  _TicTacToePageState createState() => _TicTacToePageState();
}

class _TicTacToePageState extends State<TicTacToePage>{
  late List<String> board;
  late String currentPlayer;
  late String winner;
  late bool isDraw;

  void initState(){
    super.initState();
    _initializeGame();
  }

  void _initializeGame(){
    board = List.generate(9, (_) => '');
    currentPlayer = "X";
    winner = "";
    isDraw = false;
  }

  void _handleTap(int index){
    if(board[index] != '' || winner != '') return;

    setState(() {
      board[index] = currentPlayer;
      if(_checkWinner(currentPlayer)){
        winner = currentPlayer;
      } else if(_checkDraw()) {
        isDraw = true;
      }else{
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      }
    });
  }

  bool _checkWinner(String player) {
    // Check rows, columns and diagonals for a win
    for (int i = 0; i < 3; i++) {
      if (board[i * 3] == player && board[i * 3 + 1] == player && board[i * 3 + 2] == player) {
        return true;
      }
      if (board[i] == player && board[i + 3] == player && board[i + 6] == player) {
        return true;
      }
    }
    if (board[0] == player && board[4] == player && board[8] == player) {
      return true;
    }
    if (board[2] == player && board[4] == player && board[6] == player) {
      return true;
    }
    return false;
  }

  bool _checkDraw(){
    return board.every((cell) => cell != '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          winner != ""
              ? Text("Winner $winner", style: TextStyle(fontSize: 30)) :
              isDraw ? const Text("Draw", style: TextStyle(fontSize: 30),) :
                  Text('Current Player : $currentPlayer', style: const TextStyle(fontSize: 30)),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: 9,
                  itemBuilder: (BuildContext context, int index){
                    return GridTile(
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: MaterialButton(
                              onPressed: () => _handleTap(index),
                            child: Text(board[index], style: TextStyle(fontSize: 40),),
                          ),
                        ),
                    );
                  },
              ),
          ),
          MaterialButton(
            child: const Text('Restart Game'),
            onPressed: (){
              setState(() {
                _initializeGame();
              });
            },
          ),
        ],
      ),
    );
  }
}