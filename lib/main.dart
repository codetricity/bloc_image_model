import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/bloc/image_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageBloc(),
      child: MaterialApp(
        home: Scaffold(
          body: BlocBuilder<ImageBloc, ImageState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(children: [
                      TextButton(
                        child: Text('Get Images'),
                        onPressed: () {
                          context.read<ImageBloc>().add(showImageListEvent());
                        },
                      )
                    ]),
                  ),
                  Expanded(
                      flex: 5,
                      child: ListView.builder(
                        itemCount: context
                            .read<ImageBloc>()
                            .state
                            .imageModelList
                            .length,
                        itemBuilder: ((context, index) {
                          var imageModel = context
                              .read<ImageBloc>()
                              .state
                              .imageModelList[index];
                          return Image.network(imageModel.url);
                        }),
                      )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
