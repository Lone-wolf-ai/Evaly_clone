import 'package:evaly/feature/screens/shop/campaign/controller/campaigncontroller.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CampaignTitlebox extends StatelessWidget {
  final CustomHeaderController controller;
  final bool isSelected;
  final int index;
  final String title;

  const CampaignTitlebox({
    super.key,
    required this.controller,
    required this.isSelected,
    required this.index,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.setSelectedIndex(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          border: isSelected
              ? const Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                )
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: isSelected ? Vx.black : Vx.gray400,
          ),
        ),
      ),
    );
  }
}
