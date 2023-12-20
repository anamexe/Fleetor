import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AcceptBookingPage extends StatelessWidget {
  const AcceptBookingPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24.0,right:24.0,left: 24.0),
            child: Text('AGRAS MG-1S SERIES: Booking',
                style: TextStyle(
                  fontFamily: 'InterBold',
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                )),
          ),
          SizedBox(
            height: 24.0,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Price',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    ),
                    Text('8000',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Divider(),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Time',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    ),
                    Text('2 Hr',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Divider(),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Category',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    ),
                    Text('FilmShooting',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Divider(),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Date',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    ),
                    Text('12-11-2023',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Divider(),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Address',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    ),
                    Text('Toli Chowki, Hyderabad',
                        style: TextStyle(
                          fontFamily: 'InterRegular',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        )
                    )
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                Divider(),
                SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){},
            child: Container(
              width: 327.0,
              height: 48.0,
              // color: Color(0xff25A19D),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color(0xff2001D1C),
                    Color(0xff25A19D),
                  ]
                )
              ),
              child: Center(
                  child: Text('Accept',
                    style: TextStyle(
                      fontFamily: 'InterSemiBold',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Color(0xffffffff),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Divider()
        ],
      ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                width: 327.0,
                height: 48.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  color: Color(0xffffffff),
                ),
                child: Center(
                    child: Text('Reject Service',
                      style: TextStyle(
                        fontFamily: 'InterSemiBold',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: Color(0xffF90909),
                      ),
                    )),
              ),
            ),
          ),
    )
    );
  }
}
