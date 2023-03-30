import 'package:flutter/material.dart';

class WeekWidget extends StatefulWidget {
  String dia;
  Icon icone;
  String sensacao;
  String variacao;
  WeekWidget(
      {super.key,
      required this.dia,
      required this.icone,
      required this.sensacao,
      required this.variacao});

  @override
  State<WeekWidget> createState() => _WeekWidgetState();
}

class _WeekWidgetState extends State<WeekWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        ListTile(
          leading: Text(widget.dia),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [widget.icone, Text(widget.sensacao)],
          ),
          trailing: Text(widget.variacao),
        ),
      ],
    );
  }
}
