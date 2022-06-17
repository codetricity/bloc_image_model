import 'package:bloc_screen/blocs/image_display/image_display_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/image/image_bloc.dart';
import 'view/screens/thumbnail_display_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ImageBloc>(
          create: (context) => ImageBloc(),
        ),
        BlocProvider<ImageDisplayBloc>(create: (context) => ImageDisplayBloc())
      ],
      child: MaterialApp(
        home: ThumbnailDisplayScreen(),
      ),
    );
  }
}
