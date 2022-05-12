import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_2/colors.dart';
import 'package:flutter_design_2/home_page.dart';
import 'package:get/get.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString('json/video_info.json')
        .then((value) {
      videoInfo = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColor.homePageComponentL,
          AppColor.homePageComponentS
        ], begin: FractionalOffset(0, 0.4), end: FractionalOffset.topRight)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 70, left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: AppColor.homePageText,
                      ),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: AppColor.homePageText,
                    )
                  ]),
                  SizedBox(
                    height: 30,
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
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColor.homePageComponentM,
                                  AppColor.homePageComponentM.withOpacity(0.5)
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: AppColor.homePageText,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '68 min',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.homePageText,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColor.homePageComponentM,
                                  AppColor.homePageComponentM.withOpacity(0.5)
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              size: 20,
                              color: AppColor.homePageText,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Resistent band, kettebell',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.homePageText,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(top: 30, left: 30),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Circuit 1: Legs Toning',
                        style: TextStyle(
                            color: AppColor.homePageComponentL,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.loop,
                            size: 30,
                            color: AppColor.homePageComponentS,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '3 sets',
                            style: TextStyle(
                              color: AppColor.homePageComponentS,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: videoInfo.length,
                          itemBuilder: (_, int index) {
                            return GestureDetector(
                              onTap: () {
                                debugPrint(index.toString());
                              },
                              child: Container(
                                height: 135,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                videoInfo[index]['thumbnail'],
                                              ))),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              videoInfo[index]['title'],
                                              style: TextStyle(
                                                  color: AppColor
                                                      .homePageComponentL,
                                                  fontSize: 18),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              videoInfo[index]['time'],
                                              style: TextStyle(
                                                  color: AppColor
                                                      .homePageComponentS,
                                                  fontSize: 16),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: AppColor.homePageComponentS
                                                .withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '15s rest',
                                              style: TextStyle(
                                                  color: AppColor
                                                      .homePageComponentM,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              for (int i = 0; i < 100; i++)
                                                i.isEven
                                                    ? Container(
                                                        width: 3,
                                                        height: 3,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                            color: AppColor
                                                                .homePageComponentM),
                                                      )
                                                    : Container(
                                                        width: 2,
                                                        height: 2,
                                                        color: Colors.white,
                                                      )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
