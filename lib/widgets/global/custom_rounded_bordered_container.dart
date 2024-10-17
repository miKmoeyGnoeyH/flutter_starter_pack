import 'package:flutter/material.dart';
import 'package:flutter_starter_pack/extensions/buildcontext_extension.dart';

class RoundedBorderedContainer extends StatelessWidget {
  const RoundedBorderedContainer({
    this.width,
    this.height,
    this.color,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      decoration: BoxDecoration(
        color: color ?? context.appColors.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.appColors.onSurface.withOpacity(0.5),
          width: 0.2,
        ),
      ),
      child: child,
    );
  }

  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
}
