import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  String text;
  Function OnBtnClick;
  var btncolor;
  var bgcolor;
  CalculatorButton(this.text, this.OnBtnClick ,this.btncolor,this.bgcolor);
  @override
  Widget build(BuildContext context) {
    return
          Expanded(
            child: Container(
              padding: EdgeInsets.all(3),
              child: Expanded(
                child: FloatingActionButton(
                  backgroundColor: bgcolor,
                  onPressed: (){
                    OnBtnClick (text);
                    print(text);
                  },
                  child: Text(text,style: TextStyle(
                    fontSize: 30,
                    color: btncolor,
                  ),
                  ),
                ),
              ),
            ),
          );
  }
}