import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 8, //placeholder
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Column(
                  children: <Widget>[
                    const Text("placeholder"), //placeholder
                    FlatButton(
                      onPressed: null,
                      child: const Text("RESERVER"),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
    //return buildBody(context);
  }

//   BlocProvider<ServicesBloc> buildBody(BuildContext context) {
//     return BlocProvider<ServicesBloc>(
//       create: (_) => sl<ServicesBloc>()..add(AppStarted()),
//       child: Center(
//         child: BlocBuilder<ServicesBloc, ServicesState>(
//           builder: (BuildContext context, ServicesState state) {
//             if (state is Unloaded) {
//               return SplashScreen(); // TODO
//             } else if (state is Loading) {
//               return LoadingScreen(); // TODO
//             } else if (state is Loaded) {
//               return AcualiteScreen(user: state.posts); // TODO
//             }
//             return null;
//           },
//         ),
//       ),
//     );
//   }
}
