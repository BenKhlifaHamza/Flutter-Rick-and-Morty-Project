import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bloc_course/busnis_logic/cubit/quote_cubit.dart';
import 'package:bloc_course/core/app_constants/app_colors.dart';
import 'package:bloc_course/views/widgets/shared_widgets/show_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomQuotes extends StatelessWidget {
  const RandomQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteCubit, QuoteState>(
        builder: (context, state) => state is QuoteLoaded
            ? SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 35,
                    color: AppColors.whiteColor,
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: AppColors.whiteColor,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ...List.generate(
                          (state).quotesList.length,
                          (index) => FlickerAnimatedText(
                                (state).quotesList[index].quote!,
                                speed: const Duration(seconds: 4),
                              ))
                    ],
                  ),
                ),
              )
            : showLoadingIndecator());
  }
}
