

import 'package:appregister/pages/DisPediatria/api_pediatria.dart';
import 'package:appregister/pages/DisPediatria/dispp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisPediatria extends StatefulWidget {
  static const routeName = 'dispediatria';
  const DisPediatria({Key? key}) : super(key: key);

  @override
  _DisPediatriaState createState() => _DisPediatriaState();
}

class _DisPediatriaState extends State<DisPediatria> {
  ApiPediatria service = ApiPediatria();
  late Future<List<DispPediatria>> futureAlbums;

  @override
  void initState() {
    super.initState();
    futureAlbums = service.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('𝗗𝗶𝘀𝗽𝗼𝗻𝗶𝗯𝗶𝗹𝗶𝗱𝗮𝗱𝗲𝘀 𝗣𝗲𝗱𝗶𝗮𝘁𝗿𝗶𝗮'),
        ),
        body: Center(
            child: FutureBuilder<List<DispPediatria>>(
                future: futureAlbums,
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Doctor: ' + snapshot.data[index].doctor),
                          subtitle: Text('\nHorario de Atencion:  \n' +
                              snapshot.data[index].startTime +
                              '\n\nDias de Atencion: \n' +
                              snapshot.data[index].dias),
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                        child: Text('Ocurrio un error: ${snapshot.error}'));
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
