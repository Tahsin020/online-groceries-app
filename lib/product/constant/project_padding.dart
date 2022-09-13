import 'package:flutter/cupertino.dart';

class ProjectPadding extends EdgeInsets{
  const ProjectPadding.allLow() : super.all(25);
  const ProjectPadding.allMid() : super.all(15);
  const ProjectPadding.allVertical() : super.symmetric(vertical: 20);
  const ProjectPadding.bottomLow() : super.only(bottom: 100);
}