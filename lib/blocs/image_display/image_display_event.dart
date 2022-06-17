part of 'image_display_bloc.dart';

abstract class ImageDisplayEvent extends Equatable {
  const ImageDisplayEvent();

  @override
  List<Object> get props => [];
}

class ImageDisplayFullImageEvent extends ImageDisplayEvent {}
