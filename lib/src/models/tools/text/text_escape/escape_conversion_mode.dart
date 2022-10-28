import 'package:dev_widgets/src/models/described_enum.dart';

enum EscapeConversionMode implements DescribedEnum {
  escape("escape"),
  unescape("unescape");

  @override
  final String description;

  const EscapeConversionMode(this.description);
}