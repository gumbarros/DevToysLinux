import 'package:dev_widgets/presentation/helpers.dart';
import 'package:dev_widgets/presentation/widgets/io_editor/io_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class InputToolBar extends StatelessWidget {
  final TextEditingController inputController;

  final String? toolbarTitle;

  const InputToolBar(
      {super.key, required this.inputController, this.toolbarTitle});

  @override
  Widget build(BuildContext context) {
    return IOToolbar(title: toolbarTitle ?? "input".tr, actions: [
      ElevatedButton.icon(
        icon: const Icon(Icons.paste),
        label: Text("paste".tr),
        onPressed: () async {
          inputController.text = await Clipboard.getData("text/plain")
              .then((value) => value?.text ?? "");
        },
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.copy),
        label: Text("copy".tr),
        onPressed: () async => await copyToClipboard(inputController.text),
      ),
      ElevatedButton.icon(
        icon: const Icon(Icons.clear),
        label: Text("clear".tr),
        onPressed: () => inputController.clear(),
      ),
    ]);
  }
}