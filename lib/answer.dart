import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answered;
  final String answer;
  const Answer(this.answered,this.answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      child: ElevatedButton(
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                    // ),
                    onPressed: answered ,
                    child:  Text(
                     answer,
                      style: const TextStyle(
                        fontSize: 20
                      ),
                      )
        
      ),
    );
  }
}