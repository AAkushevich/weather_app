import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app/data/repository/i_api_repository.dart';

class App extends StatelessWidget {
  const App({super.key,
    required this.apiRepository,
  });

  final IApiRepository apiRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: apiRepository,
      child: MultiBlocProvider(
        providers: [
          // BlocProvider(
          //     create: (_) => MainBloc()
          // ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  // NavigatorState get _navigator => _navigatorKey.currentState;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      //  textTheme: AppTheme.textTheme,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return Container(); //MainPage();
        /*MultiBlocListener(
          listeners: [
            // BlocListener<OnboardingBloc, OnboardingState>(
            //   listenWhen: (previousState, state) {
            //     return previousState.screen !=
            //         state
            //             .screen; // && previousState.avatarPath != state.avatarPath;
            //   },
            //   listener: (context, state) {
            //     switch (state.screen) {
            //       case OnboardingScreen.usernameGeneration:
            //         _navigator.pushAndRemoveUntil<void>(
            //           UsernameGenerationPage.route(),
            //               (route) => false,
            //         );
            //         break;
            //
            //       case OnboardingScreen.avatarSelection:
            //         _navigator.pushAndRemoveUntil<void>(
            //           AvatarSelectionPage.route(),
            //               (route) => false,
            //         );
            //         break;
            //
            //       case OnboardingScreen.endOnboarding:
            //         _navigator.pushAndRemoveUntil<void>(
            //           AuthenticatedRoot.route(),
            //               (route) => false,
            //         );
            //         break;
            //
            //       default:
            //         break;
            //     }
            //   },
            // ),
            // BlocListener<AuthenticationBloc, AuthenticationState>(
            //   listener: (context, state) {
            //     switch (state.status) {
            //       case AuthenticationStatus.authenticated:
            //         if (state.user.hasProfile) {
            //           _navigator.pushAndRemoveUntil<void>(
            //             AuthenticatedRoot.route(),
            //                 (route) => false,
            //           );
            //         } else {
            //           _navigator.pushAndRemoveUntil<void>(
            //             UsernameGenerationPage.route(),
            //                 (route) => false,
            //           );
            //         }
            //         break;
            //       case AuthenticationStatus.unauthenticated:
            //       case AuthenticationStatus.twofa:
            //         _navigator.pushAndRemoveUntil<void>(
            //           LoginPage.route(),
            //               (route) => false,
            //         );
            //         break;
            //       default:
            //         break;
            //     }
            //   },
            // ),
          ],
          child: MainPage(),
        );*/
      },
      // onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
