
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container( padding: EdgeInsets.symmetric(horizontal: 90),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
            )
            ,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Row(
                  children: [
                    Image(image: AssetImage('assets/image/img.png'),height: 100,width: 100,),
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Mr',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                            Row(
                              children: [
                                Text('TIP',style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900),textAlign: TextAlign.center,)
                              ],
                            )
                          ],
                        ),

                        Column(children: [Text('Calculator',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                          textAlign: TextAlign.center,)],)

                      ],
                    ),



                  ],
                ),

              ],
            ),

          ),
          Container(
            padding: EdgeInsets.all(15),
            width: 300,
            height: 220,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(21),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Text('Total p/person',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                    Text('000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60),),
                  ],
                ),
                Container(
                  height: 1,                  // Height of the line
                  width: 250,      // Full width
                  color: Color(0xffd2d2d2),        // Color of the line
                ),
                SizedBox(height: 20),          // Space below the line
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total bill'),
                    Text('Total tip')
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Color(0xff00c9be)),),
                        Text('000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff00c9be)),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('\$',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Color(0xff00c9be)),),
                        Text('000',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xff00c9be)),),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            child:
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Enter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('your bill')
                  ],     ),
                SizedBox(width: 20,),
                Container(padding: EdgeInsets.all(5),
                  width: 250,
                  height: 60,
                  decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: Offset(0,0)
                        )
                      ]
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )

              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(padding: EdgeInsets.symmetric(horizontal: 15),
                height: 100,
                width: double.infinity,

                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Choose',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('your tip')
                      ],     ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff00c9be),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('10',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                          Text('%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),


                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff00c9be),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('15',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                          Text('%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff00c9be),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('20',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
                          Text('%',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),

                    ),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: 270,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff00c9be),
                  ),
                  child: Center(child: Text('Custom tip',style: TextStyle(fontSize: 25,color: Colors.white),)),
                ),
              )
            ],
          ),
          Container(padding: EdgeInsets.all(16),
            height: 100,
            width: double.infinity,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Split',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('the total'),
                  ],
                ),
                SizedBox(width: 20,),
                Container(
                  width: 80,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xff00c9be),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
                  ),
                  child: Center(child: Text('-',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(child: Text('2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  width: 80,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xff00c9be),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  child: Center(child: Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),)),
                )


              ],

            ),

          ),


        ],
      ),


    );
  }
}