import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff279F99),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(40,70, 20, 10),
            width: width,
            height: height * .60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    ]),
                SizedBox(height: 40),
                Text('Statistics',
                    style: GoogleFonts.montserrat(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 25.0))),
                SizedBox(
                  height: 20,
                ),
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Today',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Yesterday',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ResusableCard(
                      text: 'Affected',
                      color: Color(0xffffb25a),
                      number: '146766',
                      width: 150,
                    ),
                    SizedBox(width: 20),
                    ResusableCard(
                      text: 'Death',
                      color: Color(0xffff5958),
                      number: '8775',
                      width: 150,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    ResusableCard(
                      text: 'Recovered',
                      color: Color(0xff4cd97a),
                      number: '5885',
                      width: 100,
                    ),
                    SizedBox(width: 10),
                    ResusableCard(
                      text: 'Active',
                      color: Color(0xff4db5ff),
                      number: '88277',
                      width: 100,
                    ),
                    SizedBox(width: 10),
                    ResusableCard(
                      text: 'Serious',
                      color: Color(0xff37bab2),
                      number: '885755',
                      width: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
              
              width: width,
              height: height * .40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Stack(
                children: [
                  Positioned(
                    top:20,
                    left: 25,
                    child: Text('Daily New Cases',style:
                          TextStyle(fontSize:25,fontWeight: FontWeight.bold))),
                  Container(
                    padding: EdgeInsets.fromLTRB(20,70, 40, 10),
                    child: BarChart(BarChartData(
                        maxY: 15.0,
                        barTouchData: BarTouchData(enabled: false),
                        titlesData: FlTitlesData(
                          show: true,
                          bottomTitles: SideTitles(
                              margin: 5.0,
                              showTitles: true,
                              
                              getTitles: (double value) {
                                switch (value.toInt()) {
                                  case 0:
                                    return 'Aug 20';
                                  case 1:
                                    return 'Aug 21';
                                  case 2:
                                    return 'Aug22';
                                  case 3:
                                    return 'Aug 23';
                                  case 4:
                                    return 'Aug 24';
                                  case 5:
                                    return 'Aug 25';
                                  default:
                                    return '';
                                }
                              }),
                              
                        ),
                         borderData: FlBorderData(
                    show: false,
            ),
                        barGroups: [
                          BarChartGroupData(
                            x: 0,
                            barRods: [
                              BarChartRodData(y: 10, colors: [
                                Colors.lightBlueAccent,
                                Colors.greenAccent
                              ])
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(y:5, colors: [
                                Colors.lightBlueAccent,
                                Colors.greenAccent
                              ])
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(y: 15, colors: [
                                Colors.lightBlueAccent,
                                Colors.greenAccent
                              ])
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(y: 3, colors: [
                                Colors.lightBlueAccent,
                                Colors.greenAccent
                              ])
                            ],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(y: 10, colors: [
                                Colors.lightBlueAccent,
                                Colors.greenAccent
                              ])
                            ],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(y: 5, colors: [
                                Colors.lightBlueAccent,
                                Colors.greenAccent
                              ])
                            ],
                          ),
                        ])),
                  ),
                ],
              ))
        ],
      )),
    );
  }
}

class ResusableCard extends StatelessWidget {
  ResusableCard({this.color, this.text, this.number, this.width});
  final Color color;
  final String text;
  final String number;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: width,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.white, fontSize: 15)),
          ),
          SizedBox(height: 20),
          Text(
            number,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }
}
