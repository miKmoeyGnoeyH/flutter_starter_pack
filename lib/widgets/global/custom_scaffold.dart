import 'package:flutter/material.dart';
import 'package:flutter_starter_pack/extensions/buildcontext_extension.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    this.appBar,
    this.body,
    this.hasScrollBody = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: context.colorScheme.surface,
        child: SafeArea(
          top: false,
          child: CustomScrollView(
            slivers: [
              if (appBar != null) appBar!,
              SliverFillRemaining(
                hasScrollBody: hasScrollBody,
                child: body,
              ),
            ],
          ),
        ),
      ),
    );
  }

  final Widget? appBar;
  final Widget? body;
  final bool hasScrollBody;
}
