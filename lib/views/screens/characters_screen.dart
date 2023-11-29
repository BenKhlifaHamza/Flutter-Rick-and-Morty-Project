import 'package:bloc_course/busnis_logic/cubit/characters_cubit.dart';
import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:bloc_course/views/widgets/characters_widgets.dart/characters_list.dart';
import 'package:bloc_course/views/widgets/shared_widgets/offline_widget.dart';
import 'package:bloc_course/views/widgets/shared_widgets/show_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text(
          "Characters",
          style: TextStyle(
            color: AppColors.greyColor,
          ),
        ),
      ),
      body: BlocBuilder<CharactersCubit, CharactersState>(
          builder: (_, state) => state is CharactersLoaded
              ? offlineWidget(myWidget: charactersList((state).characters))
              : showLoadingIndecator()),
    );
  }
}
