import 'package:devtoys/domain/models/described_enum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helpers {
  static List<DropdownMenuItem<T>> getDropdownMenuItems<T extends DescribedEnum>(
      List<T> enums) {
    return enums
        .map(
            (e) => DropdownMenuItem<T>(value: e, child: Text(e.description.tr)))
        .toList();
  }
}