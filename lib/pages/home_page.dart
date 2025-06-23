import 'package:flutter/material.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/widgets/home/left_side_widget.dart';
import 'package:shouaib_mohamed_portfolio/widgets/home/right_side_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width * 0.03,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 1400) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LeftSideWidget(),
                    20.ph,
                    Expanded(child: RightSideWidget()),
                  ],
                ),
              );
            }
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [LeftSideWidget()]),
                20.pw,
                RightSideWidget(),
              ],
            );
          },
        ),
      ),
    );
  }
}
