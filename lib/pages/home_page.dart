import 'package:clima/widget/week_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[400]),
            child: Column(children: [
              Icon(
                Icons.sunny,
                size: 56,
              ),
              Text(
                'Ensolarado',
                style: TextStyle(fontSize: 48),
              ),
              Text(
                '28°',
                style: TextStyle(fontSize: 25),
              )
            ]),
          ),
          WeekWidget(
            dia: 'SEG',
            icone: Icon(Icons.sunny),
            sensacao: 'Ensolarado',
            variacao: "21° a 28 °",
          ),
          WeekWidget(
              dia: 'TER',
              icone: Icon(Icons.sunny_snowing),
              sensacao: 'Nublado',
              variacao: '10° a 18°'),
          WeekWidget(
              dia: 'QUA',
              icone: Icon(Icons.cloudy_snowing),
              sensacao: 'Nevando',
              variacao: '0° a 10°'),
          WeekWidget(
              dia: 'QUI',
              icone: Icon(Icons.cloudy_snowing),
              sensacao: 'nublado',
              variacao: '15° a 21°'),
        ],
      ),
    );
  }
}
