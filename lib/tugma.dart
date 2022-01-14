import 'package:flutter/material.dart';

class Tugma extends StatelessWidget {
  var rang;
  var textrang;
  var tugmaText;
  Tugma({this.rang,this.textrang,this.tugmaText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: rang,
          child: Center(child: Text(tugmaText!,style: TextStyle(color: textrang),),),
        ),
      ),
    );
  }
}
