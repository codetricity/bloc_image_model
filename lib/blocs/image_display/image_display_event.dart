part of 'image_display_bloc.dart';

abstract class ImageDisplayEvent extends Equatable {
  ImageDisplayEvent();
  // ImageModel imageModel =
  //     ImageModel(url: 'https://picsum.photos/seed/picsum/200/300');

  @override
  List<Object> get props => [];
}

class ImageDisplayFullImageEvent extends ImageDisplayEvent {
  final ImageModel imageModel;
  ImageDisplayFullImageEvent({required this.imageModel});
}
