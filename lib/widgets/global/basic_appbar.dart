import 'package:flutter/material.dart';
import 'package:flutter_starter_pack/extensions/buildcontext_extension.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({
    required this.title,
    this.textColor,
    this.leading,
    this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      title: Text(
        title,
        style: textColor != null
            ? context.textTheme.titleMedium!.copyWith(color: textColor)
            : context.textTheme.titleMedium,
      ),
      foregroundColor: context.colorScheme.onPrimary,
      backgroundColor: context.colorScheme.primary,
      surfaceTintColor: context.colorScheme.primary,
      leading: leading,
      actions: actions,
    );
  }

  final String title;
  final Color? textColor;
  final Widget? leading;
  final List<Widget>? actions;
}
