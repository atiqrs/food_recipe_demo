import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_demo/src/app/app_router.dart';
import 'package:food_recipe_demo/src/common/resources/assets.dart';
import 'package:food_recipe_demo/src/common/resources/colors.dart';
import 'package:food_recipe_demo/src/common/resources/dimens.dart';
import 'package:food_recipe_demo/src/common/resources/strings.dart';
import 'package:food_recipe_demo/src/common/resources/styles.dart';
import 'package:food_recipe_demo/src/common/widgets/loader/custom_loader.dart';
import 'package:food_recipe_demo/src/features/home_screen/data/models/recipes_list_response_model.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/cubit/home_screen_state.dart';
import 'package:food_recipe_demo/src/features/home_screen/presentation/widgets/recipe_list_builder_widget.dart';
import 'package:food_recipe_demo/src/features/recipe_details/presentation/pages/recipe_details_screen_argument.dart';
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
  List<Data> _recipeList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    onSelectRecipeItem(int index) {
      String recipeId = _recipeList[index].id.toString();
      if (_recipeList.isNotEmpty) {
        Navigator.pushNamed(
          context,
          AppRouter.recipeDetails,
          arguments: RecipeDetailsScreenArgument(id: recipeId),
        );
      }
    }

    return BlocProvider<HomeScreenCubit>(
      create: (_) => GetIt.I()..init(),
      child: Scaffold(
        backgroundColor: AppColors.screenBG,
        body: SafeArea(
          child: BlocConsumer<HomeScreenCubit, HomeScreenState>(
            listener: (context, state) => state.maybeMap(
              stable: (_) => null,
              ready: (state) {
                setState(() {
                  _recipeList = state.model.datas!;
                });
                return null;
              },
              error: (_) {
                return null;
              },
              orElse: () => null,
            ),
            builder: (context, state) => state.maybeMap(
              loading: (_) => const CustomCircularLoader(),
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
                                BlocProvider.of<HomeScreenCubit>(context).recipeData(value);
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
                    RecipeListBuilder(_recipeList, onSelectRecipeItem),

                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(height: AppDimens.spacing24),
                        ],
                      ),
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
