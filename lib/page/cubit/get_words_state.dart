part of 'get_words_cubit.dart';

@freezed
class GetWordsState with _$GetWordsState {
  const factory GetWordsState.initial() = _Initial;
  const factory GetWordsState.loading() = _Loading;
  const factory GetWordsState.success(Location model) = _Success;
  const factory GetWordsState.failed(String message) = _Failed;
}
