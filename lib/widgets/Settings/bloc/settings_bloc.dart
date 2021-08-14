import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flow_tok/widgets/Profile/bloc/profile_bloc.dart';
import 'package:flow_tok/widgets/Settings/modules/settings_data.dart';
import 'package:flow_tok/widgets/Settings/services/settings_services.dart';
import 'package:meta/meta.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsService service;
  SettingsBloc(this.service) : super(SettingsInitial());


  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    if (event is SettingsStarted) {
      try {
        yield SettingsInProgress();
        final data = await service.getData();
        yield SettingsDownloaded(data);
      } catch(_) {
        yield SettingsFailed();
      }
    }
  }
}
