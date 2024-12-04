import 'package:fantasy/features/fantasy/presentation/views/widgets/fantasy_body.dart';
import 'package:flutter/material.dart';

class Fantasy extends StatelessWidget {
  const Fantasy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FantasyBody(),
    );
  }
}