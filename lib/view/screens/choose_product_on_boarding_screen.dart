import 'package:flutter/material.dart';
import 'package:trendy_shop/data/data_source/static/static.dart';
import 'package:trendy_shop/utils/styles/text.dart';

class ChoseProductOnBoardingScreen extends StatelessWidget {
  const ChoseProductOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          itemCount: onBoardingList.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.matrix(<double>[
                    0.5,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0.5,
                    0,
                    0,
                    0,
                    0,
                    0,
                    0.5,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ]),

                  child: Image.asset(
                    onBoardingList[index].imgUrl!,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          onBoardingList[index].title!,
                          style: h2Bold,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.3,
                        ),
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            onBoardingList[index].body!,
                            style: h4Bold,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
