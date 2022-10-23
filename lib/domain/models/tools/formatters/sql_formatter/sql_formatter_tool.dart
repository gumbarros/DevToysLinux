import 'package:dev_widgets/domain/helpers/formatters/sql_formatter/sql_formatter.dart';
import 'package:dev_widgets/domain/models/groups/group.dart';
import 'package:dev_widgets/domain/models/groups/formatters_group.dart';
import 'package:dev_widgets/domain/models/tools/tool.dart';
import 'package:dev_widgets/infrastructure/navigation/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SqlFormatterTool implements Tool {
  @override
  IconData get icon => Icons.storage;

  @override
  String get homeTitle => "sql_formatter".tr;

  @override
  Group get group => FormattersGroup();

  @override
  String get route => Routes.sqlFormatter;

  @override
  String get description => "sql_formatter_description".tr;

  @override
  String get name => "sqlformat";

  @override
  String get menuTitle => "sql_formatter_menu_name".tr;

  SqlFormatter get formatter => SqlFormatter();
}
