import 'package:bloc_course/busnis_logic/cubit/quote_cubit.dart';
import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:bloc_course/data/models/character_model.dart';
import 'package:bloc_course/views/widgets/characters_details_widgets.dart/silver_app_bar.dart';
import 'package:bloc_course/views/widgets/characters_details_widgets.dart/silver_list.dart';
import 'package:bloc_course/views/widgets/shared_widgets/offline_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersDetailsScreen extends StatefulWidget {
  final CharacterModel characterModel;
  const CharactersDetailsScreen({super.key, required this.characterModel});

  @override
  State<CharactersDetailsScreen> createState() =>
      _CharactersDetailsScreenState();
}

class _CharactersDetailsScreenState extends State<CharactersDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<QuoteCubit>(context).getRandomQuotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: offlineWidget(
          myWidget: CustomScrollView(
        slivers: [
          silverAppBar(widget.characterModel),
          silverList(widget.characterModel, MediaQuery.of(context).size.height),
        ],
      )),
    );
  }
}
