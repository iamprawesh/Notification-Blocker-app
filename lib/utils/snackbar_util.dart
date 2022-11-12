import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class CustomSnackbar {
  CustomSnackbar.error({required String text, required BuildContext context}) {
    AnimationController localAnimationController;
    showTopSnackBar(
        context,
        CustomSnackBar.info(
          backgroundColor: Colors.red,
          message: text,
        ),
        animationDuration: Duration(seconds: 2),
        padding: const EdgeInsets.all(2)
        // onAnimationControllerInit: (controller) =>
        // localAnimationController = controller,
        );
  }

  CustomSnackbar.info({required String text, required BuildContext context}) {
    AnimationController localAnimationController;

    showTopSnackBar(
      context,
      CustomSnackBar.info(
        message: "$text",
      ),
      // persistent: true,
      // onAnimationControllerInit: (controller) =>
      // localAnimationController = controller,
    );
  }
  CustomSnackbar.success(
      {required String text, required BuildContext context}) {
    AnimationController localAnimationController;

    showTopSnackBar(
      context,
      CustomSnackBar.info(
        message: "$text",
      ),
    );
  }
  CustomSnackbar.completedAction(
      {required String text, required BuildContext context}) {
    AnimationController localAnimationController;

    showTopSnackBar(
      context,
      CustomSnackBar.success(
        message: "$text",
      ),
    );
  }
}
