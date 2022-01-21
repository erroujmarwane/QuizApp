import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final VoidCallback reset;
  const Result(this.result,this.reset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
      child: Column(
        children: [
          Text(
            "Result: "+result.toString(),style: const TextStyle(
                          fontSize: 30
                          )
                        ),
          ElevatedButton(
            onPressed: reset ,
            child: const Text("Reset !",style:TextStyle(
                          fontSize: 20
                          )),
            )
        ],
      ),
    );
  }
}