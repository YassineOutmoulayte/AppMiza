import 'package:flutter/material.dart';
import 'package:miza_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primaryHeaderContainer.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';



class HomeScreen extends StatelessWidget {
  const  HomeScreen ({super.key, this.child});
 final Widget? child;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: SingleChildScrollView(
         child: Column(
           children: [
             MizaPrimaryHeaderContainer(
                child :Container()

             )
           ],
         ),
       ),
    );
  }
}

