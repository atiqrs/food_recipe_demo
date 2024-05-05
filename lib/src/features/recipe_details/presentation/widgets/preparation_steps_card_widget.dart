import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/features/recipe_details/data/models/recipes_details_response_model.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/widgets/single_step_card_widget.dart';

class PreparationStepsCard extends StatelessWidget {
  const PreparationStepsCard({super.key, this.instructions});

  final List<AnalyzedInstruction>? instructions;

  @override
  Widget build(BuildContext context) {
    final steps = instructions?.firstOrNull?.steps;
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.screenBG,
        boxShadow: [
          BoxShadow(
            color: AppColors.screenBG,
            spreadRadius: AppDimens.radius0,
            blurRadius: AppDimens.radius0,
            offset: Offset(AppDimens.offset0, AppDimens.offsetReverse10),
          ),
        ],
      ),
      child: (steps != null && steps.isNotEmpty)
          ? ListView.builder(
              padding: const EdgeInsets.only(top: AppDimens.spacing10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: steps.length,
              itemBuilder: (context, index) {
                return SingleStepCard(
                  number: steps[index].number!,
                  description: steps[index].step ?? '',
                  stepBlueTitle: index.isEven,
                );
              },
            )
          : const SizedBox(height: AppDimens.spacing20),
    );
  }
}
