// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'image_bloc.dart';

class ImageState extends Equatable {
  final List<ImageModel> imageModelList;
  const ImageState({required this.imageModelList});

  factory ImageState.initial() => const ImageState(imageModelList: []);

  @override
  List<Object> get props => [imageModelList];

  @override
  bool get stringify => true;

  ImageState copyWith({
    List<ImageModel>? imageModelList,
  }) {
    return ImageState(
      imageModelList: imageModelList ?? this.imageModelList,
    );
  }
}
