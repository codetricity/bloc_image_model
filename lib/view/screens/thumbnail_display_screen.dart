import 'package:bloc_screen/view/screens/full_image_display_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/image/image_bloc.dart';
import '../../blocs/image_display/image_display_bloc.dart';

class ThumbnailDisplayScreen extends StatelessWidget {
  const ThumbnailDisplayScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    itemCount:
                        context.read<ImageBloc>().state.imageModelList.length,
                    itemBuilder: ((context, index) {
                      var imageModel =
                          context.read<ImageBloc>().state.imageModelList[index];
                      return InkWell(
                          onTap: () {
                            context
                                .read<ImageDisplayBloc>()
                                .add(ImageDisplayFullImageEvent());
                            print('pressed image');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    FullImageDisplayScreen()));
                          },
                          child: Image.network(imageModel.url));
                    }),
                  )),
            ],
          );
        },
      ),
    );
  }
}
