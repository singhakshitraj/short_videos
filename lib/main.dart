import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/bloc/loading/loading_bloc.dart';
import 'package:scroll_app/bloc/reply/reply_bloc.dart';
import 'package:scroll_app/presentation/master_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoadingBloc()),
        BlocProvider(create: (_) => ReplyBloc()),
      ],
      child: const MaterialApp(
        home: MasterPage(),
      ),
    );
  }
}
