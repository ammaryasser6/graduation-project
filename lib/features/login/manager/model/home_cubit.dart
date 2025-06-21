import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:final_project/features/login/manager/model/vote_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Dio _dio = Dio();
  List<Values>? voteList;

  void getVoteList() async {
    emit(GetVoteListLoading());
    try {
      final response =
          await _dio.get("http://egelectionapi.runasp.net/api/Voting");
      final user = VoteModel.fromJson(response.data);

      if (response.statusCode == 200) {
        for (var vote in (user.values ?? [])) {
          voteList?.add(vote);
        }
        emit(GetVoteListSuccess());
      } else {
        emit(GetVoteListError());
      }
    } catch (e) {
      emit(GetVoteListError());
    }
  }
}
