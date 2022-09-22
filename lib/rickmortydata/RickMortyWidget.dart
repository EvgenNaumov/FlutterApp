import 'package:app/rickmortydata/RickMortyDTO.dart';
import 'package:app/service/ServiceApi.dart';
import 'package:app/service/ServiceApiDioImpl.dart';
import 'package:flutter/material.dart';

class RickMortyWidget extends StatefulWidget {
  final String title;

  const RickMortyWidget({super.key, required this.title});

  @override
  State<RickMortyWidget> createState() => _RickMortyWidget();
}

class _RickMortyWidget extends State<RickMortyWidget> {
  //late ServiceApi? service;
  final ServiceApi service = ServiceApiDioImpl();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Rick and Morty', style: TextStyle(fontSize: 12.0)),
          ),

          body: FutureBuilder<RickMorty>(
            future: service.getDataDio(),
            builder: (context, AsyncSnapshot snap) {
              if (!snap.hasData) {
                return const Center(
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: CircularProgressIndicator(color: Colors.black,),

                  ),
                );
              } else {
                return Center(
                    child: Text('${snap.data.name}'));
              }
            },
          ),
        )
    );
  }
}
