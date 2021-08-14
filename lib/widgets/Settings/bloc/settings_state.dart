part of 'settings_bloc.dart';

@immutable
abstract class SettingsState {}

class SettingsInitial extends SettingsState {}
class SettingsInProgress extends SettingsState {}
class SettingsDownloaded extends SettingsState {
  List<SettingsData> data;
  SettingsDownloaded(this.data);
}
class SettingsFailed extends SettingsState {
  
}