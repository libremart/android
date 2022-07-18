import 'package:flutter/material.dart';
import 'package:bazaar/theme/typography/label/label_large_atom.dart';

enum ButtonState { disabled, enabled, da }

class ElevatedButtonAtom extends StatelessWidget {
  const ElevatedButtonAtom({
    Key? key,
    required this.text,
    this.buttonState = ButtonState.disabled,
    this.buttonIcon,
    this.onPressed,
  }) : super(
          key: key,
        );

  final String text;
  final ButtonState? buttonState;
  final IconData? buttonIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      onPressed: buttonState == ButtonState.disabled ? null : onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonIcon == null
              ? const SizedBox.shrink()
              : Icon(
                  buttonIcon,
                ),
          buttonIcon == null
              ? const SizedBox.shrink()
              : const SizedBox(
                  width: 20.0,
                ),
          LabelLarge(
            data: text,
          ),
          buttonIcon == null
              ? const SizedBox.shrink()
              : const SizedBox(
                  width: 5.0,
                ),
        ],
      ),
    );
  }
}
