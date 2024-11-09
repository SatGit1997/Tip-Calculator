

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var billAmtController = TextEditingController();
  var customTipController = TextEditingController();


  int perCount = 1;
  int tipPercent = 0;
  num totalBillAmt = 0;
  num totalAmt = 0;
  num totalTipAmt = 0;
  num perPersonAmt = 0;
  bool isCustomTip = false;
  num customTipAmt = 0;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(flex: 1,
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/image/img.png')),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Mr',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                            ),
                              children: [
                                TextSpan(
                                  text: 'TIP',style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900
                                )
                                )
                              ]
                            )
                          ),
                          Text('Calculator',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),)
                        ],
                      )
                    ],
                    )),
              SizedBox(height: 30,),
              Expanded(flex: 3,
                  child:
                  Card(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white
                      ),
                      child:
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Total p/person',
                            style:TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500
                            ) ,),
                          Text.rich(
                            TextSpan(
                              text: '\$',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                              children: [
                                TextSpan(
                                  text: '${perPersonAmt == 0.0 ? "000" : perPersonAmt.toStringAsFixed(2)}',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                                 )
                                )
                              ]
                            )
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black12,
                          ),
                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text('Total bill',
                                    style: TextStyle(
                                    fontSize: 18
                                  ),),
                                  Text.rich(
                                      TextSpan(
                                          text: '\$',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                          color: Color(0xff01c1b5)
                                      ),
                                          children: [
                                            TextSpan(
                                                text: "${totalBillAmt == 0.0 ? "000" : totalBillAmt.toStringAsFixed(2)}",style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                                color: Color(0xff01c1b5)
                                            )
                                            )
                                          ]
                                      )
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text('Total tip',
                                    style: TextStyle(
                                        fontSize: 18,
                                    ),),
                                  Text.rich(
                                      TextSpan(
                                          text: '\$',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                          color: Color(0xff01c1b5)
                                      ),
                                          children: [
                                            TextSpan(
                                                text: '${totalTipAmt == 0.0 ? "000" :totalTipAmt.toStringAsFixed(2)}',style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                                color: Color(0xff01c1b5)
                                            )
                                            )
                                          ]
                                      )
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),

                    )),
              SizedBox(height: 30,),
              Expanded(flex: 1,
                  child:
                  Row(
                    children: [
                      Expanded(
                          child:Text.rich(
                            TextSpan(
                              text: 'Enter\n',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w900,

                              ),
                              children: [
                                TextSpan(
                                    text: 'your bill',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400
                                    )
                                )
                              ]
                            )
                          )
                      ),
                      Expanded(flex: 3,
                          child: TextField(
                            controller: billAmtController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixText: "\$",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                  width: 1,
                                  style: BorderStyle.none
                                )
                              )
                            ),
                          )
                      )
                    ],
                  )),
              SizedBox(height: 30,),
              Expanded(flex: 2,
                  child:
                  Row(
                    children: [
                      Expanded(
                          child:
                          Text.rich(
                              TextSpan(
                                  text: 'Choose\n',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w900,

                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'your tip',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400
                                        )
                                    )
                                  ]
                              )
                          )
                      ),
                      Expanded(flex: 3,
                          child:
                          Column(
                        children: [
                            Expanded(
                            child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Row(
                                children: [
                                  Expanded(
                                    child:
                                    InkWell(onTap:(){
                                      tipPercent = 10;
                                      updateTheResult();
                                    }
                                      ,
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                      
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Color(0xff01c1b5)
                                        ),
                                        child:
                                        Center(
                                          child: Text.rich(
                                              TextSpan(
                                                  text: '10',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.white
                                      
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                        text: '%',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500
                                                        )
                                                    )
                                                  ]
                                              )
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: InkWell(onTap: (){
                                      tipPercent = 15;
                                      updateTheResult();
                                    },
                                      child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Color(0xff01c1b5)
                                          ),
                                          child:
                                          Center(
                                            child: Text.rich(
                                                TextSpan(
                                                    text: '15',
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight: FontWeight.w900,
                                                        color: Colors.white

                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: '%',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w500
                                                          )
                                                      )
                                                    ]
                                                )
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: InkWell(onTap: (){
                                      tipPercent = 20;
                                      updateTheResult();
                                    },
                                      child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Color(0xff01c1b5)
                                          ),
                                          child:
                                          Center(
                                            child: Text.rich(
                                                TextSpan(
                                                    text: '20',
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight: FontWeight.w900,
                                                        color: Colors.white

                                                    ),
                                                    children: [
                                                      TextSpan(
                                                          text: '%',
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w500
                                                          )
                                                      )
                                                    ]
                                                )
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                            SizedBox(width: 10,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    TextField(
                                      controller: customTipController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          suffixText: "\%",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.black38,
                                                  width: 1,
                                                  style: BorderStyle.none
                                              )
                                          )
                                      ),
                                    ),
                                    isCustomTip ? Container() : InkWell(onTap:(){
                                      isCustomTip = true;
                                      setState(() {

                                      });
                                    },
                                      child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Color(0xff01c1b5)
                                      ),
                                      child: Center(
                                        child: Text('Custom Tip',style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),),
                                      ),
                                                                  ),
                                    ),
                                  ],
                                ),
                              ),
                          )
                        ],
                      ))

                    ],
                  )),
              SizedBox(height: 25,),
              Expanded(
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child:Text.rich(
                                TextSpan(
                                    text: 'Split\n',
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.w900,

                                    ),
                                    children: [
                                      TextSpan(
                                          text: 'the total',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400
                                          )
                                      )
                                    ]
                                )
                            )
                        ),
                        Expanded(flex: 3,
                          child:
                          Row(
                          children: [
                            Expanded(
                              child: InkWell(onTap: (){
                                if(perCount>1){
                                  perCount--;
                                  updateTheResult();
                                }
                              },
                                child: Container(
                                    width: double.infinity,
                                    height: double.infinity,

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)
                                        ),
                                        color: Color(0xff01c1b5)
                                    ),
                                    child:
                                    Center(child: Text('-',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        color: Colors.white
                                      ),))
                                ),
                              ),
                            ),
                            Expanded(flex: 2,
                              child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white
                                  ),
                                  child:
                                  Center(child:
                                  Text('$perCount',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w900,
                                    ),))
                              ),
                            ),
                            Expanded(
                              child: InkWell(onTap: (){
                                perCount++;
                                updateTheResult();
                              },
                                child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomRight:Radius.circular(15)),
                                        color: Color(0xff01c1b5)
                                    ),
                                    child:
                                    Center(child: Text('+',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                    ),))
                                ),
                              ),
                            ),
                          ],
                        ),
                        )

                      ],
                    ),
                  )),
              SizedBox(height: 20,),
            ],
          ),
        ),
        backgroundColor: Color(0xfff5f3f4)
      ),
    );
  }

  void updateTheResult(){
    if(billAmtController.text!="") {
      totalBillAmt = double.parse(billAmtController.text.toString());
      totalTipAmt = totalBillAmt * (tipPercent/100);
      totalAmt = totalBillAmt + totalTipAmt;
      perPersonAmt = totalAmt/perCount;
      setState(() {});
    } else{
      perCount = 1;
    }
    }
    void customTipChange(){
    customTipAmt = double.parse(customTipController.text.toString());
    customTipAmt = totalBillAmt * (tipPercent/100);
    setState(() {

    });
    }
  }
