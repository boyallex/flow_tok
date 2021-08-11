part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}


class ProfileInitial extends ProfileState {}

class ProfileInProgress extends ProfileState {}
class ProfileDownloadedSuccess extends ProfileState {
  ProfileData data;
  ProfileDownloadedSuccess(this.data);
  
}
class ProfileFailed extends ProfileState {}
