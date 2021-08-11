import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flow_tok/widgets/Profile/modules/profile_data.dart';
import 'package:flow_tok/widgets/Profile/services/profile_service.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileService service;
  ProfileBloc(this.service) : super(ProfileInitial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if (event is ProfileStarted) {
      try {
        yield ProfileInProgress();
        final data = await service.getData();
        yield ProfileDownloadedSuccess(data);
      } on Exception catch (_) {
        yield ProfileFailed();
      }
    }
  }
}
