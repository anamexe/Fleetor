import 'package:flutter/material.dart';

enum SingingCharacter { Out, Drone, Technical, Reason }

class RejectBookingPage extends StatefulWidget {
  const RejectBookingPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<RejectBookingPage> createState() => _RejectBookingPageState();
}

class _RejectBookingPageState extends State<RejectBookingPage> {
  SingingCharacter? _character = SingingCharacter.Reason;
  List<String> reasonsForCancellation = [
    "Out of Range",
    "Drone not available",
    "Technical issue",
    "Reasons not listed here"
  ];
  int? _selectedValueIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 24.0, right: 24.0, left: 24.0, bottom: 24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Select reason for cancellation',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      )),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,left: 24.0,bottom: 34.0,),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: reasonsForCancellation.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: GestureDetector(
                        // splashColor:Color(0xff219994),
                        onTap: (){
                          setState(() {
                            _selectedValueIndex=index;
                          });
                        },
                        child: Row(
                          children: [
                            index == _selectedValueIndex ? Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32.0),
                          // color: Color(0xff219994),
                          border: Border.all(
                              color: Color(0xff219994),
                              width: 8
                          )
                      ),
                      width: 24.0,
                      height: 24.0,
                    ):Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.0),
                                  // color: Color(0xff219994),
                                  border: Border.all(
                                      color: Color(0xff219994),
                                      width: 1
                                  )
                              ),
                              width: 24.0,
                              height: 24.0,
                            ),

                            SizedBox(width: 8.0,),
                            Text(reasonsForCancellation[index],
                            style: TextStyle(
                              fontFamily: "InterRegular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xff000000),
                            ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Column(
              //   children: <Widget>[
              //     RadioListTile<SingingCharacter>(
              //       activeColor: Color(0xff219994),
              //       title: Text('Out of Range',style: TextStyle(
              //         fontFamily: 'InterRegular',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 14.0,
              //         color: Color(0xff000000),
              //       )),
              //       value: SingingCharacter.Out,
              //       groupValue: _character,
              //       onChanged: (SingingCharacter? value) {
              //         setState(() {
              //           _character = value;
              //         });
              //       },
              //     ),
              //     RadioListTile<SingingCharacter>(
              //       activeColor: Color(0xff219994),
              //       title: const Text('Drone not available',style: TextStyle(
              //         fontFamily: 'InterRegular',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 14.0,
              //         color: Color(0xff000000),
              //       )),
              //       value: SingingCharacter.Drone,
              //       groupValue: _character,
              //       onChanged: (SingingCharacter? value) {
              //         setState(() {
              //           _character = value;
              //         });
              //       },
              //     ),
              //     RadioListTile<SingingCharacter>(
              //       activeColor: Color(0xff219994),
              //       title: const Text('Technical issue',style: TextStyle(
              //         fontFamily: 'InterRegular',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 14.0,
              //         color: Color(0xff000000),
              //       )),
              //       value: SingingCharacter.Technical,
              //       groupValue: _character,
              //       onChanged: (SingingCharacter? value) {
              //         setState(() {
              //           _character = value;
              //         });
              //       },
              //     ),
              //     RadioListTile<SingingCharacter>(
              //       activeColor: Color(0xff219994),
              //       title: const Text('Reasons not listed here',style: TextStyle(
              //           fontFamily: 'InterRegular',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 14.0,
              //         color: Color(0xff000000),
              //       )),
              //       value: SingingCharacter.Reason,
              //       groupValue: _character,
              //       onChanged: (SingingCharacter? value) {
              //         setState(() {
              //           _character = value;
              //         });
              //       },
              //     ),
              //   ],
              // ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0,right: 24.0),
                  child: Container(
                    // width: 327.0,
                    height: 48.0,
                    // padding: EdgeInsets.only(left: 24.0,right: 24.0),
                    // color: Color(0xff25A19D),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [
                              Color(0xff051615),
                              Color(0xffCDCDCD),
                            ])),
                    child: Center(
                        child: Text(
                      'Reject Service',
                      style: TextStyle(
                        fontFamily: 'InterSemiBold',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Color(0xffffffff),
                      ),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Divider(),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 327.0,
              height: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Color(0xffffffff),
              ),
              child: Center(
                  child: Text(
                'Back',
                style: TextStyle(
                  fontFamily: 'InterRegular',
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  color: Color(0xff219994),
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
