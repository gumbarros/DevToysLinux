import 'dart:convert';
import 'package:devtoys/domain/formatters/formatter.dart';
import 'package:devtoys/domain/formatters/indentation.dart';

class JSONFormatter implements Formatter {
  @override
  String format(String json,
      {Indentation indentation = Indentation.FourSpaces,
      bool sortAlphabetically = false}) {
    var object = jsonDecode(json);

    if (sortAlphabetically) object = _sort(object);

    return JsonEncoder.withIndent(indentation.toString()).convert(object);
  }

  _sort(json) {
    if (json is Map) {
      for (var entry in json.entries) {
        if (entry.value is List || entry.value is Map)
          json[entry.key] = _sort(entry);
      }
      return _sortKeys(json);
    } else if (json is List) {
      for (var i = 0; i < json.length; i++) {
        final value = json[i];
        if (value is List || value is Map) json[i] = _sort(value);
      }
      return json;
    } else if (json.value is Map) {
      for (var entry in json.value.entries) {
        if (entry.value is List || entry.value is Map)
          json[entry.key] = _sort(entry);
      }
    } else if (json.value is List) {
      for (var i = 0; i < json.value.length; i++) {
        final value = json.value[i];
        if (value is List || value is Map) json.value[i] = _sort(value);
      }
      return json.value;
    }

    return _sortKeys(json.value);
  }

  _sortKeys(Map map) => Map.fromEntries(
      map.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
}