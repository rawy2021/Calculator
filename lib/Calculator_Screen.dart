import 'package:calculator/Calculator_Button.dart';
import 'package:flutter/material.dart';
class CalculatorScreen extends StatefulWidget {
  static const String routeName ='CalculatorScreen';
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}
class _CalculatorScreenState extends State<CalculatorScreen> {
  String ResultText='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Calculator ',style: TextStyle(fontSize: 30,),textAlign: TextAlign.center,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 357,
                  height: 150,
                  padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(),
                  ),
                  child: Expanded(child: Text(ResultText,style: TextStyle(fontSize: 50,)),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('C',onOperatorClick,Colors.amber,Colors.blue),
                CalculatorButton('+',onOperatorClick,Colors.amber,Colors.black12),
                CalculatorButton('%',onOperatorClick,Colors.amber,Colors.black12),
                CalculatorButton('sin',onOperatorClick,Colors.amber,Colors.black12),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('7',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('8',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('9',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('*',onOperatorClick,Colors.amber,Colors.black12),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('4',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('5',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('6',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('/',onOperatorClick,Colors.amber,Colors.black12),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton('1',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('2',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('3',onDigitClick,Colors.white,Colors.green),
                CalculatorButton('-',onOperatorClick,Colors.amber,Colors.black12),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                        CalculatorButton('.',onDigitClick,Colors.amber,Colors.black12),
                        CalculatorButton('0',onDigitClick,Colors.white,Colors.green),
                        Container(
                          width: 170,
                          height: 110,
                          padding: EdgeInsets.symmetric(vertical: 14,horizontal: 2),
                          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 2),
                          child: FloatingActionButton(
                            backgroundColor: Colors.black12,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),

                            ),
                            onPressed: (){
                              onEqualButton (res);
                              print(res);
                            },
                            child: Text('=',style: TextStyle(
                              fontSize: 35,
                              color: Colors.amber,
                            ),
                            ),
                          ),
                        ),
                         ],
            ),
          ),
        ],
      ),
    );
  }
  String res='';
  String operator='';
  void onOperatorClick (String clickedOP){
    if(operator.isEmpty){
      res = ResultText;
    }else{
      String rhs = ResultText;
      res=calculate(res,operator,rhs);
    }
    operator=clickedOP;
    ResultText='';
    print(clickedOP);
    setState(() {

    });
  }
  void onEqualButton (String text){
    String rhs = ResultText;
    res=calculate(res,operator,rhs);
    ResultText = res;
    setState(() {
      res ='';
      operator='';
    });
  }
  void onDigitClick(BtnText){
    print(BtnText);
    ResultText+=BtnText;
    setState((){
    });
  }
}
String calculate(String lhs, String operator, String rhs) {
  double n1 = double.parse(lhs);
  double n2 = double.parse(rhs);
  double res= 0;
  if(operator == '+'){
    res=n1+n2;
  }else if(operator == '-'){
    res = n1-n2;
  }else if(operator == '/'){
    res = n1/n2;
  }else if(operator == '*'){
    res = n1*n2;
  }else if(operator == '%'){
    res=res%res;
  }else if(operator == 'C'){
    operator='0';
    res = 0;
  }
  return res.toString();
}
