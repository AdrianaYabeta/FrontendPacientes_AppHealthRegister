import 'package:appregister/pages/DisCardiologia/dis_cardiologia.dart';
import 'package:appregister/pages/DisGinecologia/dis_ginecologia.dart';
import 'package:appregister/pages/DisMedicinaGeneral/dis_medicina.dart';
import 'package:appregister/pages/DisPediatria/dis_pediatria.dart';
import 'package:appregister/pages/cardiologia.dart';
import 'package:appregister/pages/cardiologia_opcion.dart';
import 'package:appregister/pages/crear_cuenta.dart';
import 'package:appregister/pages/eleccion.dart';
import 'package:appregister/pages/ginecologia.dart';
import 'package:appregister/pages/ginecologia_opcion.dart';
import 'package:appregister/pages/iniciar_sesion.dart';
import 'package:appregister/pages/medicinageneral.dart';
import 'package:appregister/pages/medicinageneral_opcion.dart';
import 'package:appregister/pages/pediatria.dart';
import 'package:appregister/pages/pediatria_opcion.dart';
import 'package:appregister/widgets/api_ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Health Register',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: IniciarSesion(),
      routes: {
        // ignore: prefer_const_constructors
        CrearCuenta.routeName: (_) => CrearCuenta(),
        IniciarSesion.routeName: (_) => const IniciarSesion(),
        Eleccion.routeName: (_) => const Eleccion(),
        CardiologiaOpcion.routeName: (_) => const CardiologiaOpcion(),
        PediatriaOpcion.routeName: (_) => const PediatriaOpcion(),
        GinecologiaOpcion.routeName: (_) => const GinecologiaOpcion(),
        MedicinaGeneralOpcion.routeName: (_) => const MedicinaGeneralOpcion(),
        FichaCardiologia.routeName: (_) => const FichaCardiologia(),
        FichaPediatria.routeName: (_) => const FichaPediatria(),
        FichaGinecologia.routeName: (_) => const FichaGinecologia(),
        FichaMedicinaGeneral.routeName: (_) => const FichaMedicinaGeneral(),
        DisCardiologia.routeName: (_) => const DisCardiologia(),
        DisGinecologia.routeName: (_) => const DisGinecologia(),
        DisMedicina.routeName: (_) => const DisMedicina(),
        DisPediatria.routeName: (_) => const DisPediatria(),
        ApiT.routeName: (_) => const ApiT(),
      },
    );
  }
}
