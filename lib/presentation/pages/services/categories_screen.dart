import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/presentation/widgets/services/categorie_card.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  final List<ServiceCategorie> categories;

  const CategoriesScreen(this.categories);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<ServiceCategorie> filteredCategories = [];
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
            child: _buildGridView(),
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
    filteredCategories = widget.categories;
    focusNode = FocusNode();
    super.initState();
  }

  Widget _buildGridView() {
    final _breakpoint = Breakpoint.fromMediaQuery(context);
    if (filteredCategories.isNotEmpty) {
      return Scrollbar(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (_breakpoint.columns / 8).ceil(),
            childAspectRatio: 5 / 2,
          ),
          itemCount: filteredCategories.length,
          itemBuilder: (context, id) {
            return CategorieCard(filteredCategories[id]);
          },
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(50),
        child: Text(
          "Aucune catégorie de service trouvée avec : '$filter'",
          style: Theme.of(context).textTheme.bodyText1,
        ),
      );
    }
  }

  Widget _buildSearchBar(BuildContext context) {
    return AppBar(
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
      filteredCategories = widget.categories.where((categorie) {
        if (value == null || value.isEmpty) {
          return true;
        }
        return keywords.every((keyword) {
          return (categorie.name ?? "").toLowerCase().contains(keyword);
        });
      }).toList();
    });
  }
}
