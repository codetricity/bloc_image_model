import 'package:bloc/bloc.dart';
import 'package:bloc_screen/data/model/image_model.dart';
import 'package:equatable/equatable.dart';

part 'image_display_event.dart';
part 'image_display_state.dart';

class ImageDisplayBloc extends Bloc<ImageDisplayEvent, ImageDisplayState> {
  ImageDisplayBloc() : super(ImageDisplayState.initial()) {
    on<ImageDisplayFullImageEvent>((event, emit) {
      emit(ImageDisplayState(imageModel: event.imageModel));
    });
  }
}
