part of 'image_display_bloc.dart';

class ImageDisplayState extends Equatable {
  final ImageModel imageModel;
  const ImageDisplayState({required this.imageModel});

  factory ImageDisplayState.initial() => ImageDisplayState(
      imageModel: ImageModel(url: 'https://picsum.photos/seed/picsum/200/300'));

  @override
  List<Object> get props => [imageModel];

  ImageDisplayState copyWith({
    ImageModel? imageModel,
  }) {
    return ImageDisplayState(
      imageModel: imageModel ?? this.imageModel,
    );
  }

  @override
  bool get stringify => true;
}
