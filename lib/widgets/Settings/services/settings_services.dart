import 'package:flow_tok/widgets/Settings/modules/settings_data.dart';

import '../../../globals.dart' as globals;

class SettingsService {
  Future<List<SettingsData>> getData() async {
    final data = globals.json;
    return Future.delayed(Duration(seconds: 1)).then(
      (_) => data.map((e) => SettingsData.fromJson(e)).toList(),
    );
  }
}
