import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';



class MizaPrimaryHeaderContainer extends StatelessWidget {
  const MizaPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MizaCurvedEdgeWidgets(
      child: Container(
        color: MizaColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150,right:-250 ,child: MizaCicularContainer(backgroundColor: MizaColors.textWhite.withOpacity(0.3),)),
              Positioned(top: 100,right: -300,child: MizaCicularContainer(backgroundColor: MizaColors.textWhite.withOpacity(0.3),)),
              child,
            ],
          ),
        ),
      ),
    );
  }
}



