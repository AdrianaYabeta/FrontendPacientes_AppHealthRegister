import 'package:appregister/pages/DisCardiologia/api_cardiologia.dart';
import 'package:appregister/pages/DisCardiologia/disp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisCardiologia extends StatefulWidget {
  static const routeName = 'discardiologia';
  const DisCardiologia({Key? key}) : super(key: key);

  @override
  _DisCardiologiaState createState() => _DisCardiologiaState();
}

class _DisCardiologiaState extends State<DisCardiologia> {
  ApiPediatria service = ApiPediatria();
  late Future<List<DispTicket>> futureAlbums;

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
          title:
              Text('𝗗𝗶𝘀𝗽𝗼𝗻𝗶𝗯𝗶𝗹𝗶𝗱𝗮𝗱𝗲𝘀 𝗖𝗮𝗿𝗱𝗶𝗼𝗹𝗼𝗴𝗶𝗮'),
        ),
        body: Center(
            child: FutureBuilder<List<DispTicket>>(
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
