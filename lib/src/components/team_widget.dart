import 'package:flutter/material.dart';
import 'package:winable/src/model/team.dart';
import 'package:winable/src/ui/app_colors.dart';

class TeamWidget extends StatelessWidget {
  final Team team;
  final Color? color;
  final double width;
   const TeamWidget(this.team,{Key? key,this.color, this.width = 60 }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
          width: 60,
          // height: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                team.logoUrl,
                width: 38,
                height: 38,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                team.name,
                softWrap: true,
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: 'Dm Sans',
                  color: color ??  Theme.of(context).colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        );
  }
}
