import 'package:dev_widgets/domain/helpers/converters/json_yaml_converter.dart';
import 'package:dev_widgets/domain/models/groups/group.dart';
import 'package:dev_widgets/domain/models/groups/converters_group.dart';
import 'package:dev_widgets/domain/models/tools/tool.dart';
import 'package:dev_widgets/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JsonYamlConverterTool implements Tool {
  @override
  IconData get icon => Icons.compare_arrows;

  @override
  String get homeTitle => "json_yaml_converter".tr;

  @override
  String get route => Routes.jsonYamlConverter;

  @override
  String get description => "json_yaml_converter_description".tr;

  @override
  Group get group => ConvertersGroup();

  @override
  String get name => "jsonYaml";

  @override
  String get menuTitle => "json_yaml_converter".tr;

  JsonYamlConverter get converter => JsonYamlConverter();
}
