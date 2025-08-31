import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manger/get_newest_books_cubit/get_newest_book_state.dart';

class GetNewestBookCubit extends Cubit<GetNewestBookState> {
  GetNewestBookCubit(this.homeRepo) : super(GetNewestBookStateLoading());

  final HomeRepo homeRepo;

  Future<void> getNewestBooksCubit() async {
    emit(GetNewestBookStateLoading());
    var result = await homeRepo.fetchNewestBox();
    result.fold(
      (faliure) {
        emit(GetNewestBookStateFaliure(faliure.errMessag));
      },
      (books) {
        emit(GetNewestBookStateLoaded(books));
      },
    );
  }
}
