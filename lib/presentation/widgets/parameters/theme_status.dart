import 'package:app_pym/presentation/blocs/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeStatus extends StatelessWidget {
  const ThemeStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text("Theme"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 'Dark',
                        groupValue: state.value,
                        onChanged: (String _) async {
                          context
                              .bloc<ThemeBloc>()
                              .add(const ThemeEvent.toDark());
                        },
                      ),
                      const Text("Sombre", textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 'Adaptive',
                        groupValue: state.value,
                        onChanged: (String _) async {
                          context
                              .bloc<ThemeBloc>()
                              .add(const ThemeEvent.toAdaptive());
                        },
                      ),
                      const Text("Adaptative", textAlign: TextAlign.center),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Radio(
                        value: 'Light',
                        groupValue: state.value,
                        onChanged: (String value) async {
                          context
                              .bloc<ThemeBloc>()
                              .add(const ThemeEvent.toLight());
                        },
                      ),
                      const Text("Clair", textAlign: TextAlign.center),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
