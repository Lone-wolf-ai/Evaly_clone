import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductSubtitle extends StatelessWidget {
  const ProductSubtitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Flexible(child: title.text.ellipsis.size(13).maxLines(1).make());
  }
}
