
import 'package:appregister/pages/DisGinecologia/api_ginecologia.dart';
import 'package:appregister/pages/DisGinecologia/dispg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisGinecologia extends StatefulWidget {
  static const routeName = 'disginecologia';
  const DisGinecologia({Key? key}) : super(key: key);

  @override
  _DisGinecologiaState createState() => _DisGinecologiaState();
}

class _DisGinecologiaState extends State<DisGinecologia> {
  ApiGinecologia service = ApiGinecologia();
  late Future<List<DispGinecologia>> futureAlbums;

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
          title: Text('𝗗𝗶𝘀𝗽𝗼𝗻𝗶𝗯𝗶𝗹𝗶𝗱𝗮𝗱𝗲𝘀 𝗚𝗶𝗻𝗲𝗰𝗼𝗹𝗼𝗴𝗶𝗮'),
        ),
        body: Center(
            child: FutureBuilder<List<DispGinecologia>>(
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

