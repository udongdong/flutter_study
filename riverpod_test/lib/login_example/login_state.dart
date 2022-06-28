import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LoginState {
  none,
  email,
  naver,
  facebook,
  apple
}

final loginStateProvider = StateNotifierProvider<LoginStateNotifier, LoginState>((ref) {
  return LoginStateNotifier();
});

class LoginStateNotifier extends StateNotifier<LoginState>{
  LoginStateNotifier():super(LoginState.none);

  void doEmailLogin(){
    state = LoginState.email;
  }
}

final loginTypeProvider = Provider<String>((ref) {
  final loginState = ref.watch(loginStateProvider);

  switch(loginState){
    case LoginState.email:
      return 'email 로그인';
    case LoginState.facebook:
    case LoginState.naver:
    case LoginState.apple:
      return 'SNS 로그인';
    case LoginState.none:
    default:
      return '비로그인';
  }
});