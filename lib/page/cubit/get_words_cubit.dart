import 'package:bloc/bloc.dart';
import 'package:clean_network/clients/clients.dart';
import 'package:clean_network/models/post/post.dart';
import 'package:clean_network/network_executer.dart';
import 'package:clean_network/result/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_words_state.dart';
part 'get_words_cubit.freezed.dart';

class GetWordsCubit extends Cubit<GetWordsState> {
  final NetworkExecuter executer;
  GetWordsCubit(this.executer) : super(const GetWordsState.initial());
  void getWords() async {
    emit(const GetWordsState.loading());
    Result result = await executer.execute<Location, Location>(
        route: const PlaceHolderClient.words(), responseType: Location());

    result.map(
      success: (success) => emit(GetWordsState.success(success.data)),
      failure: (failure) =>
          emit(GetWordsState.failed(failure.error.localizedErrorMessage!)),
    );
  }
}
