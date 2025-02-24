import 'package:flutter/material.dart';

class OnbordingBottons extends StatelessWidget {
  const OnbordingBottons({super.key,  this.onPressNext,  this.onPressSkip});
  final VoidCallback? onPressNext;
  final VoidCallback? onPressSkip;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [//
        Expanded(
          child: ElevatedButton(
              onPressed:onPressSkip ,
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(
                      Size(MediaQuery.of(context).size.width, 50))),
              child: const Text(
                
                "skip",
                style: TextStyle(color: Colors.blue),
              )),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: onPressNext,
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                minimumSize: WidgetStatePropertyAll(
                    Size(MediaQuery.of(context).size.width, 50))),
            child: const Text(
              "next ➜",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
