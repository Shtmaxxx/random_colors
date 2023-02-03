import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_colors/pages/cubit/main_page_cubit.dart';
import 'package:random_colors/pages/widgets/app_checkbox.dart';

/// Main Page widget
class MainPage extends StatelessWidget {
  /// Main Page constructor
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainPageCubit, MainPageState>(
        builder: (context, state) {
          final mainPageCubit = context.read<MainPageCubit>();

          return GestureDetector(
            onTap: () => mainPageCubit.generateColor(
              randomAlpha: state.randomAlpha,
              redColor: state.redColor,
              greenColor: state.greenColor,
              blueColor: state.blueColor,
            ),
            behavior: HitTestBehavior.opaque,
            child: ColoredBox(
              color: state.currentColor,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppCheckbox(
                              value: state.randomAlpha,
                              title: 'Random alpha',
                              onChanged: (value) =>
                                  mainPageCubit.toggleRandomAlpha(value: value),
                            ),
                            AppCheckbox(
                              value: state.greenColor,
                              title: 'Green color',
                              onChanged: (value) =>
                                  mainPageCubit.toggleGreenColor(value: value),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppCheckbox(
                              value: state.redColor,
                              title: 'Red color',
                              onChanged: (value) =>
                                  mainPageCubit.toggleRedColor(value: value),
                            ),
                            AppCheckbox(
                              value: state.blueColor,
                              title: 'Blue Color',
                              onChanged: (value) =>
                                  mainPageCubit.toggleBlueColor(value: value),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Hey there',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
