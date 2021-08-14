part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent {}

class SettingsStarted extends SettingsEvent {
  
}
class SettingsDataUpdate extends SettingsEvent {}