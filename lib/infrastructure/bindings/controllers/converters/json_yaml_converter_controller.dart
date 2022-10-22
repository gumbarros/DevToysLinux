import 'package:devtoys/domain/models/tools/converters/json_yaml_converter_tool.dart';
import 'package:devtoys/infrastructure/bindings/controllers/get_tool.dart';
import 'package:devtoys/presentation/converters/controllers/json_yaml_converter_controller.dart';
import 'package:get/get.dart';

class JsonYamlConverterControllerBinding extends Bindings {
  @override
  void dependencies() {
    final tool = getTool<JsonYamlConverterTool>();

    Get.lazyPut<JsonYamlConverterController>(
        () => JsonYamlConverterController(tool));
  }
}