import 'package:clean_network/page/cubit/get_words_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordsPage extends StatelessWidget {
  const WordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          BlocBuilder<GetWordsCubit, GetWordsState>(builder: (context, state) {
        return state.map<Widget>(
            initial: (_) => Container(),
            loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            success: (success) => ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) => Card(
                      child: Text(success.model.location!.name),
                    )),
            failed: (failure) => Text(failure.message));
      }),
    );
  }
}
