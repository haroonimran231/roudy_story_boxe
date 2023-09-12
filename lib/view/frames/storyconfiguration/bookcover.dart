import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roudy_story_box/view/frames/onboarding1/index.dart';
import 'package:roudy_story_box/view/frames/storyconfiguration/avator.dart';

import 'package:roudy_story_box/view/frames/storyconfiguration/model2.dart';

class BookCover extends StatelessWidget {
  BookCover({Key? key, required this.book}) : super(key: key);
  final Books book;

  @override
  Widget build(BuildContext context) {
    double _width = 75, _height = 100;
    return Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          children: [
            Stack(children: [
              Container(
                  padding: EdgeInsets.only(bottom: 50, right: 40),
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: AppColors.linearpowderpink,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Container(
                    width: _width / 2,
                    height: _height / 2,
                    decoration: BoxDecoration(
                        color:
                            Color(Random().nextInt(0xffffffff)).withAlpha(0xff),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15))),
                  )),
              Container(
                width: _width,
                height: _height,
                padding: EdgeInsets.all(8),
                child: AvatarImage(
                  book.image,
                  isSVG: false,
                  radius: 8,
                ),
              )
            ]),
            SizedBox(
              height: 8,
            ),
            Text(
              book.price,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
