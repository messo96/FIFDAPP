import 'package:flutter/material.dart';

import 'Team.dart';

class Teams extends StatelessWidget {
  final List<Team> list = [
    Team(
        "Kiss My Disc",
        "https://www.sportgrigiorosso.it/images/news_generiche/altrisport/frisbee/001_kissmydisc_logo_001.jpg",
        "Cremona"),
    Team(
        "CUSB",
        "https://itadisc.it/wp-content/uploads/2017/10/Cus-Bologna.png",
        "Bologna"),
    Team("Extradry", "https://www.extradry.eu/img/logo.png", "Venezia")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TEAMS"),
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) =>
              buildCard(context, index)),
    );
  }

  Widget buildCard(BuildContext context, int index) {
    final Team team = list[index];
    return Card(
        child: InkWell(
            onTap: () {},
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Text(team.name),
                    const Spacer(),
                    Image.network(team.uri_logo, width: 100, height: 100)
                  ],
                ),
                Text(team.city)
              ],
            )));
  }
}
