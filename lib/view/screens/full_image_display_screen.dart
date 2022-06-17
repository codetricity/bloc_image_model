import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/image_display/image_display_bloc.dart';

class FullImageDisplayScreen extends StatelessWidget {
  const FullImageDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<ImageDisplayBloc, ImageDisplayState>(
      builder: (context, state) {
        return Image.network(state.imageModel.url);
      },
    ));
  }
}
