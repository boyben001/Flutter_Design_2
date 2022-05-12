import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_2/colors.dart';
import 'package:flutter_design_2/video_info.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [

  ];
  _initData(){
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value){

      info = json.decode(value);
    });
  }
  @override
  void initState(){
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(children: [
              Text(
                'Training',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(child: Container()),
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black38,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.calendar_today_outlined,
                size: 20,
                color: Colors.black38,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: Colors.black38,
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Your program',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: (){
                    Get.to(()=>VideoInfo());
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: AppColor.homePageComponentM,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      AppColor.homePageComponentL,
                      AppColor.homePageComponentM.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 5,
                      color: AppColor.homePageComponentS,
                    )
                  ]),
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next workout',
                      style:
                          TextStyle(color: AppColor.homePageText, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Legs Toning',
                      style:
                          TextStyle(color: AppColor.homePageText, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'and Glutes Workout',
                      style:
                          TextStyle(color: AppColor.homePageText, fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                      Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 20,
                            color: AppColor.homePageText,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '60 mins',
                            style: TextStyle(
                                color: AppColor.homePageText, fontSize: 14),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.homePageComponentL,
                                  blurRadius: 5,
                                  offset: Offset(2, 4),
                                )
                              ]),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 60,
                            color: AppColor.homePageText,
                          )),
                    ]),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('img/card.jpg'),
                            fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset(4, 8),
                              color: AppColor.homePageComponentM),
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(-1, -2),
                              color: AppColor.homePageComponentM)
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 200, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('img/figure.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                            color: AppColor.homePageComponentM,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Keep it up\n',
                              style: TextStyle(
                                  color: AppColor.homePageComponentS,
                                  fontSize: 16),
                              children: [
                                TextSpan(
                                  text: 'stick to your plan',
                                )
                              ]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Area of focus',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Expanded(
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width,
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                        itemCount: (info.length.toDouble()/2).toInt(),
                        itemBuilder: (_, index) {
                          int fir = 2*index;
                          int sec = 2*index + 1;
                          return Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 5),
                                width: (MediaQuery.of(context).size.width-90)/2,
                                height: (MediaQuery.of(context).size.width-90)/2,
                                margin: EdgeInsets.only(left: 30,bottom: 15, top: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          offset: Offset(5, 5),
                                          color: AppColor.homePageComponentS
                                              .withOpacity(0.4)),
                                      BoxShadow(
                                          blurRadius: 5,
                                          offset: Offset(-5, -5),
                                          color: AppColor.homePageComponentS
                                              .withOpacity(0.4))
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          info[fir]['img']
                                      ),
                                    )),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[fir]['title'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColor.homePageComponentL),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 5),
                                width: (MediaQuery.of(context).size.width-90)/2,
                                height: (MediaQuery.of(context).size.width-90)/2,
                                margin: EdgeInsets.only(left: 30,bottom: 15, top: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 5,
                                          offset: Offset(5, 5),
                                          color: AppColor.homePageComponentS
                                              .withOpacity(0.4)),
                                      BoxShadow(
                                          blurRadius: 5,
                                          offset: Offset(-5, -5),
                                          color: AppColor.homePageComponentS
                                              .withOpacity(0.4))
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          info[sec]['img']
                                      ),
                                    )),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[sec]['title'],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColor.homePageComponentL),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
