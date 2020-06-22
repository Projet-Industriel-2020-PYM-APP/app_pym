import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:app_pym/presentation/widgets/services/service_card.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_bloc/flutter_bloc.dart';

class ServicesOfCategoriePage extends StatelessWidget {
  final ServiceCategorie categorie;

  const ServicesOfCategoriePage(this.categorie, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorie.name),
        elevation: 0,
      ),
      body: buildServices(context, categorie),
    );
  }

  BlocProvider<ServicesOfCategorieBloc> buildServices(
      BuildContext context, ServiceCategorie categorie) {
    return BlocProvider<ServicesOfCategorieBloc>(
      create: (_) {
        final ServicesOfCategorieBloc bloc = sl<ServicesOfCategorieBloc>();
        bloc.add(FetchServicesOfCategorieEvent(categorie));
        return bloc;
      },
      child: Center(
        child: BlocBuilder<ServicesOfCategorieBloc, ServicesOfCategorieState>(
          builder: (BuildContext context, ServicesOfCategorieState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Service> services) =>
                  ServicesOfCategorieScreen(services, categorie),
              error: (e) => Center(
                child: Text(e.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ServicesOfCategorieScreen extends StatefulWidget {
  final ServiceCategorie categorie;
  final List<Service> services;

  const ServicesOfCategorieScreen(this.services, this.categorie);

  @override
  _ServicesOfCategorieScreenState createState() =>
      _ServicesOfCategorieScreenState();
}

class _ServicesOfCategorieScreenState extends State<ServicesOfCategorieScreen> {
  List<Service> filteredServices = [];
  String filter = "";
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchBar(context),
        Expanded(
          child: GestureDetector(
            onTap: focusNode.unfocus,
            child: _buildGridView(context),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    filteredServices = widget.services;
    focusNode = FocusNode();
    super.initState();
  }

  Widget _buildGridView(BuildContext context) {
    final _breakpoint = Breakpoint.fromMediaQuery(context);
    if (filteredServices.isNotEmpty) {
      return Scrollbar(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (_breakpoint.columns / 8).ceil(),
            childAspectRatio: 5 / 2,
          ),
          itemCount: filteredServices.length,
          itemBuilder: (context, id) {
            return ServiceCard(filteredServices[id]);
          },
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(50),
        child: Text(
          "Aucun service trouvé avec : '$filter'",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      );
    }
  }

  Widget _buildSearchBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: TextField(
        focusNode: focusNode,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          focusedBorder: const UnderlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              focusNode.unfocus();
            },
          ),
        ),
        onChanged: _onInput,
      ),
    );
  }

  void _onInput(String value) {
    setState(() {
      filter = value.toLowerCase();
      final keywords = filter.split(' ');
      filteredServices = widget.services.where((service) {
        if (value == null || value.isEmpty) {
          return true;
        }
        return keywords.every((keyword) {
          return (service.title ?? "").toLowerCase().contains(keyword) ||
              (service.address ?? "").toLowerCase().contains(keyword) ||
              (service.subtitle ?? "").toLowerCase().contains(keyword) ||
              (service.telephone ?? "").toLowerCase().contains(keyword) ||
              (service.website ?? "").toLowerCase().contains(keyword);
        });
      }).toList();
    });
  }
}
