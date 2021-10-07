import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Flutter",
      home: Scaffold(
        appBar: AppBar(
          //Bouton à gauche
          leading: const IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: null,
          ),
          title: const Text("Voyage Thailande"),
          //Icons à droite
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.bookmark_border, color: Colors.white),
            ),
          ],
          backgroundColor: Colors.cyan,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            imageSection,
            titleSection,
            textSection,
            iconSection,
            hotelSection,
            buttonSection,
            const SizedBox(
              height: 50,
            ),
          ],
        )),
      ),
    );
  }
}

Widget imageSection = Image.network(
    'https://drissas.com/wp-content/uploads/2021/08/photo_thailande.jpeg');

Widget titleSection = Container(
    padding: const EdgeInsets.all(20),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Bienvenue au paradis',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            Text(
              "Réservez votre séjour en Thaïlande",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    ));

Widget textSection = Container(
  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
  child: const Text(
    '''La Thaïlande, en forme longue le Royaume de Thaïlande, est un pays d'Asie du Sud-Est dont le territoire couvre 514 000 km2. Avant 1939, il s'appelait le Royaume de Siam. Il est bordé à l'ouest par la Birmanie, au sud par la Malaisie, à l'est par le Cambodge et au nord-est par le Laos. C'est une monarchie constitutionnelle depuis 1932.
Sa capitale est Krung Thep, anciennement appelée Bangkok. La langue officielle est le thaï et la monnaie le baht.''',
    softWrap: true,
  ),
);

Widget iconSection = Container(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Icon(Icons.hotel, color: Colors.cyan),
            Text(
              'Hotels'.toUpperCase(),
              style: const TextStyle(color: Colors.cyan),
            )
          ])),
      Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Icon(Icons.airplanemode_active, color: Colors.cyan),
            Text(
              'Vols'.toUpperCase(),
              style: const TextStyle(color: Colors.cyan),
            )
          ])),
      Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const Icon(Icons.drive_eta, color: Colors.cyan),
            Text(
              'Voitures'.toUpperCase(),
              style: const TextStyle(color: Colors.cyan),
            )
          ]))
    ]));

Widget hotelSection = Container(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
            'https://drissas.com/wp-content/uploads/2021/08/photo_thailande_1.jpeg'),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
            'https://drissas.com/wp-content/uploads/2021/08/photo_thailande_2.jpeg'),
      ),
    ]));

Widget buttonSection = ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
      primary: Colors.cyan,
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      textStyle: const TextStyle(fontSize: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      )),
  child: const Text('Voir plus de logements'),
);
