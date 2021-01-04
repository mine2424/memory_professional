import 'package:flutter/material.dart';

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.075);
Color mCC = Colors.green.withOpacity(0.65);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;

BoxDecoration nMbox = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: const Offset(10, 10),
        blurRadius: 10,
      ),
      BoxShadow(
        color: mCL,
        offset: const Offset(-10, -10),
        blurRadius: 10,
      ),
    ]);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL,
          offset: const Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3),
    ]);

BoxDecoration nMboxInvertActive = nMboxInvert.copyWith(color: mCC);

BoxDecoration nMbtn = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: const Offset(2, 2),
        blurRadius: 2,
      )
    ]);

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: nMbox,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('VISA',
                  style: TextStyle(
                      color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
              Icon(
                Icons.more_horiz,
                color: fCD,
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('* * * *',
                  style: TextStyle(
                      color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
              Text('* * * *',
                  style: TextStyle(
                      color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
              Text('* * * *',
                  style: TextStyle(
                      color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
              Text('8014',
                  style: TextStyle(
                      color: fCD, fontSize: 18, fontWeight: FontWeight.w700)),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Card Holder',
                      style: TextStyle(
                          color: fCL,
                          fontSize: 12,
                          fontWeight: FontWeight.w700)),
                  Text('Lindsey Johnson',
                      style: TextStyle(
                          color: fCD,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Expires',
                      style: TextStyle(
                          color: fCL,
                          fontSize: 12,
                          fontWeight: FontWeight.w700)),
                  Text('08 / 21',
                      style: TextStyle(
                          color: fCD,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
