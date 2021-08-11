part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}


class ProfileInitial extends ProfileState {}

class ProfileInProgress extends ProfileState {}
class ProfileDownloadedSuccess extends ProfileState {
  List<ProfileData> data;
  ProfileDownloadedSuccess({required this.data});
  
}
class ProfileFailed extends ProfileState {}
