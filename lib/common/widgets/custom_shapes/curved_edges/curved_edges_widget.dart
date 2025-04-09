import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../containers/circular_container.dart';
import 'curved_edges.dart';

class MizaCurvedEdgeWidgets extends StatelessWidget {
  const MizaCurvedEdgeWidgets({
    super.key,this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MizaCustomCurvedEdges(),
        child:child
    );
  }
}

