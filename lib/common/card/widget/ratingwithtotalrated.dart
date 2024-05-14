import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class RatingwithTotalrates extends StatelessWidget {
  const RatingwithTotalrates({
    super.key,
    required this.rate,
    required this.totalrated,
    this.itemsize=14
  });

  final double rate;
  final String totalrated;
  final double itemsize;
  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        RatingBar.builder(
          initialRating: rate,
          allowHalfRating: true,
          itemSize: itemsize,
          maxRating: 5,
          minRating: 1,
          itemBuilder: (_, index) => const Icon(
            Icons.star,
            color: Colors.amber,
            
          ),
          onRatingUpdate: (double value) {},
        ),
        5.widthBox,
        '($totalrated)'.text.gray500.sm.make()
      ],
    );
  }
}
