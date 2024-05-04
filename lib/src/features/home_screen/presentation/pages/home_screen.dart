import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_demo/src/common/resources/assets.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_state.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/widgets/recipe_card.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  final _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('HomeScreen: _HomeScreenState');

    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeScreenCubit>(
          create: (context) => GetIt.I()..init(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.screenBG,
        body: SafeArea(
          child: BlocConsumer<HomeScreenCubit, HomeScreenState>(
            listener: (context, state) => state.maybeMap(
              stable: (_) => null,
              ready: (state) {
                return null;
              },
              error: (_) {
                return null;
              },
              orElse: () => null,
            ),
            builder: (context, state) => state.maybeMap(
              loading: (_) => Container(),
              error: (state) => Container(),
              orElse: () {
                return CustomScrollView(
                  controller: _scrollController,
                  slivers: <Widget>[
                    // Yummy banner image
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(AppDimens.spacing18),
                            color: AppColors.bannerBG,
                            child: SizedBox(
                              height: AppDimens.buttonHeight32,
                              child: SvgPicture.asset(AppAssets.imageYummy, fit: BoxFit.contain),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Search widget
                    SliverAppBar(
                      pinned: true,
                      automaticallyImplyLeading: false,
                      shadowColor: AppColors.primaryColorTransparent,
                      backgroundColor: AppColors.screenBG,
                      flexibleSpace: Column(
                        children: [
                          const SizedBox(height: AppDimens.spacing8),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: AppDimens.spacing18),
                            child: TextFormField(
                              controller: _searchController,
                              focusNode: _searchFocusNode,
                              onChanged: (value) {
                                // Search method
                              },
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.primaryColorTransparent15,
                                  suffixIconColor: AppColors.iconColorGray,
                                  border:
                                      OutlineInputBorder(borderRadius: BorderRadius.circular(AppDimens.borderRadius8)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(AppDimens.borderRadius8),
                                    borderSide: const BorderSide(
                                      color: AppColors.borderSelectedGray,
                                      width: AppDimens.inputTextFieldThickness,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.only(
                                    top: AppDimens.spacing8,
                                    bottom: AppDimens.spacing8,
                                    left: AppDimens.spacing16,
                                    right: AppDimens.spacing16,
                                  ),
                                  hintText: AppStrings.searchHint,
                                  hintStyle: AppStyles.hintStyle,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(AppDimens.borderRadius8),
                                    borderSide: const BorderSide(
                                      color: AppColors.borderSelectedGray,
                                      width: AppDimens.inputTextFieldThickness1,
                                    ),
                                  ),
                                  suffixIcon: const Icon(Icons.search)),
                              cursorColor: AppColors.textHintColorGray,
                              style: AppStyles.valueStyle,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        const RecipeCard(
                          imageLink: AppStrings.mockRecipeImageLink,
                          title: AppStrings.mockRecipeTitle,
                          ingredients: AppStrings.mockRecipeIngredients,
                          time: AppStrings.mockRecipeTime,
                          isSaved: true,
                        ),
                        const RecipeCard(
                          imageLink: AppStrings.mockRecipeImageLink,
                          title: AppStrings.mockRecipeTitle,
                          ingredients: AppStrings.mockRecipeIngredients,
                          time: AppStrings.mockRecipeTime,
                          isSaved: false,
                        ),
                      ]),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
