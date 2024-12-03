class AuthStates {}

class InitialAuthStates extends AuthStates {}

class FailureAuthStates extends AuthStates {
  final String errorMessage;

  FailureAuthStates({required this.errorMessage});
}

class SuccessAuthStates extends AuthStates {}

class LoadingAuthStates extends AuthStates {}
