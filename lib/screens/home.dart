import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(55),
              height: height * .45,
              decoration: BoxDecoration(
                  color: Color(0xff279F99),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          )
                        ]),
                  ),
                  Positioned(
                    top: 45,
                    child: Row(
                      children: [
                        Text('Covid-19',
                            style:
                          GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white, fontSize: 20.0) ),
                           ),
                        SizedBox(width: 110),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    'assets/images/icons8-usa-48.png'),
                                fit: BoxFit.cover,
                                width: 15,
                                height: 20,
                              ),
                              SizedBox(width: 20),
                              Text(
                                'USA',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 100,
                      child: Container(
                        width: width * .8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Are you Feeling Sick?',
                              style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white, fontSize: 20.0)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'If you feel sick with any Covid-19 symptoms please call or SMS us immediatley for help',
                              style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      ),
                      
                  Positioned(
                      top: 200,
                      child: Row(
                        children: [
                          ReusableButton(
                              color: Color(0xff4cd97a),
                              label: 'Call Now',
                              icon: Icons.phone),
                          SizedBox(width: 20),
                          ReusableButton(
                              color: Color(0xffffb25a),
                              label: 'Send SMS',
                              icon: Icons.message_outlined),
                        ],
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                    child: Text('Prevention',
                        style: GoogleFonts.montserrat(textStyle:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Imagebg(
                  image: 'assets/images/covid-hand.png',
                  text: 'Use Sanitizer',
                ),
                Imagebg(
                  image: 'assets/images/mail.png',
                  text: 'Stay At Home',
                ),
                Imagebg(
                  image: 'assets/images/covid-girl-mask.png',
                  text: 'Wear a Mask',
                )
              ],
            ),
            SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  width: width * .90,
                  height: height * .15,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff279F99),
                Color(0xff73cbc7),
              ],
            ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Image(
                    image: AssetImage('assets/images/gummy-virus.png'),
                    width: 150,
                    height: 200),
                    Positioned(
                      top: 10,
                      left: 150,
                      child: Text('Do your own Test!',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),)),
                      Positioned(
                        top:50,
                        left:150,
                        child: Container(width:200,child: Text('Follow the instructions to do your own Test',style: GoogleFonts.montserrat(textStyle:TextStyle(color: Colors.white,fontSize:15)))))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Imagebg extends StatelessWidget {
  Imagebg({this.image, this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffd0e7e6)),
            ),
            Image(image: AssetImage(image), width: 80, height: 80),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(text, style: GoogleFonts.montserrat(textStyle:TextStyle(fontSize: 10)))
      ],
    );
  }
}

class ReusableButton extends StatelessWidget {
  ReusableButton({this.color, this.label, this.icon});
  final Color color;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 140,
      height: 40,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
