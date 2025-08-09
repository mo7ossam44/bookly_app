abstract class GetBookState {}

class GetBookStateSucess extends GetBookState {}

class GetBookStateLoading extends GetBookState {}

class GetBookStateFaliure extends GetBookState {
  final String errMessage;
  GetBookStateFaliure(this.errMessage);
}
