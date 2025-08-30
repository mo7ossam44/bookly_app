import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/manger/get_featured_books_cubit/get_featured_books_states.dart';

class GetFeaturedBooksCubit extends Cubit<GetFeaturedBooksStates> {
  GetFeaturedBooksCubit(this.homeRepo) : super(FeaturedBookLoading());

  final HomeRepo homeRepo;

  Future<void> getFeaturedBooksCubit() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBox();
    result.fold(
      (faliure) {
        emit(FeaturedBookFaliure(errMessag: faliure.errMessag));
      },
      (books) {
        emit(FeaturedBookLoaded(books));
      },
    );
  }
}
