import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IOToolbar extends StatelessWidget {
  const IOToolbar({
    Key? key,
    required this.title,
    this.actions,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Get.theme.textTheme.titleMedium),
          Flexible(
            child: Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0,
              children: actions
                      ?.map((element) =>
                          element.marginOnly(left: 8.0, right: 8.0))
                      .toList() ??
                  [],
            ),
          )
        ],
      ),
    );
  }
}