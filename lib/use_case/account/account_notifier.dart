import 'package:flutter/material.dart';
import 'package:memory_professional/repository/auth_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'account_state.dart';

enum StartUpType { loggedInUser, incompleteUser }

class AccountNotifier extends StateNotifier<AccountState> with LocatorMixin {
  AccountNotifier({@required this.context})
      : super(const AccountState(isLoading: false));

  BuildContext context;

  AuthRepository get _authRepository => read<AuthRepository>();

  Future<StartUpType> startUp() async {
    final currentUser = _authRepository.authUser();
    if (currentUser != null) {
      print('userId ${currentUser.uid}');

      return StartUpType.loggedInUser;
    }
    return StartUpType.incompleteUser;
  }

  Future<String> loggedInUserId() async {
    final userId = _authRepository.loggedInUserId();
    return userId;
  }
}
