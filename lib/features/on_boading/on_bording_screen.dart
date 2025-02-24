import 'package:final_project/features/login/view/screens/home_screen.dart';
import 'package:final_project/features/on_boading/widgets/onbording_bottons.dart';
import 'package:final_project/features/on_boading/widgets/onbording_item.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  OnBordingScreen({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: OnBordinhModel.ListOfOnBordingData.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var item = OnBordinhModel.ListOfOnBordingData[index];
                  return OnbordingItem(image: item.image, text: item.text);
                },
              ),
            ),
            OnbordingBottons(
              onPressNext: () {
                controller.nextPage(
                    duration: Duration(microseconds: 100),
                    curve: Curves.linear);
              },
              onPressSkip: () => HomeScreen,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
