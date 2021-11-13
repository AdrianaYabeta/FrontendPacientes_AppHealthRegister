
import 'package:appregister/pages/DisMedicinaGeneral/api_medicina.dart';
import 'package:appregister/pages/DisMedicinaGeneral/dism.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisMedicina extends StatefulWidget {
  static const routeName = 'dismedicina';
  const DisMedicina({Key? key}) : super(key: key);

  @override
  _DisMedicinaState createState() => _DisMedicinaState();
}

class _DisMedicinaState extends State<DisMedicina> {
  ApiMedicina service = ApiMedicina();
  late Future<List<DispMedicina>> futureAlbums;

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
          title: Text('𝗗𝗶𝘀𝗽𝗼𝗻𝗶𝗯𝗶𝗹𝗶𝗱𝗮𝗱𝗲𝘀 𝗠𝗲𝗱𝗶𝗰𝗶𝗻𝗮 𝗚𝗲𝗻𝗲𝗿𝗮𝗹'),
        ),
        body: Center(
            child: FutureBuilder<List<DispMedicina>>(
                future: futureAlbums,
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('\nDoctor: ' + snapshot.data[index].doctor),
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
