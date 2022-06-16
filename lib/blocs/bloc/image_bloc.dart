import 'package:bloc/bloc.dart';
import 'package:bloc_screen/data/image_respository.dart';
import 'package:bloc_screen/data/model/image_model.dart';
import 'package:equatable/equatable.dart';

part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  ImageBloc() : super(ImageState.initial()) {
    on<ImageEvent>((event, emit) {
      emit(ImageState(imageModelList: ImageRepository.imageList));
    });
  }
}
