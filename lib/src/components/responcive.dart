import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../util/Dimanctions.dart';


class Responsive extends StatefulWidget {

  Widget content;
  Function? tabContainer;
  Function? mobileContainer;
  Function? webContainer;

  Responsive({Key? key,required this.content, this.tabContainer,this.mobileContainer,this.webContainer}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (build,constraints){
    if (kDebugMode) {
      print("webContainer:${constraints.minWidth>tabletWidth && widget.webContainer!=null}");
      print("TabContainer:${constraints.minWidth>mobileWidth && widget.tabContainer!=null}");
    }

      if(constraints.minWidth>tabletWidth && widget.webContainer!=null) return widget.webContainer!(widget.content);

      if(constraints.minWidth>mobileWidth && widget.tabContainer!=null) return widget.tabContainer!(widget.content);

      return widget.mobileContainer!=null? widget.mobileContainer!(widget.content) : widget.content;

    });
  }
}

