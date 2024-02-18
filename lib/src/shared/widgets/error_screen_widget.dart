import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    this.errorText,
    this.onButtonPressed,
  });

  final String? errorText;
  final Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Some error occur. Please retry'),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: onButtonPressed,
              child: const Text('Reload'),
            ),
          ],
        ),
      ),
    );
  }
}
