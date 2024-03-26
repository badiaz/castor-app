import 'package:castor_spotify_app/presentation/blocs/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';

class MySearchDelegate extends SearchDelegate<String> {
  @override
  String get searchFieldLabel => '¿Qué quieres escuchar?';

  @override
  List<Widget> buildActions(BuildContext context) {
    if (query.isNotEmpty) {
      return [
        IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear),
        ),
      ];
    } else {
      return [];
    }
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('Resultados de búsqueda para: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    SearchBloc searchBloc = BlocProvider.of(context);
    searchBloc.add(OnSearchEvent(query: query, selectedIndex: 0));
    final List<String> suggestions = [
      'Ricardo Arjona ',
      'Pink Floyd',
      'Entre mil ciudades ',
      'Karol G',
    ];

    final filteredSuggestions = query.isEmpty
        ? suggestions
        : suggestions
            .where((suggestion) => suggestion.contains(query))
            .toList();

    if (query.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escucha lo que más te gusta',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Busca artistas, canciones, podcast y más',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }

    return TabsWidget(
      query: query,
      filteredSuggestions: filteredSuggestions,
      onPressed: (value) {
        close(context, value);
      },
    );
  }
}

class TabsWidget extends StatefulWidget {
  final List<String> filteredSuggestions;
  final Function onPressed;
  final String query;
  const TabsWidget(
      {super.key,
      required this.filteredSuggestions,
      required this.onPressed,
      required this.query});

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  int _selectedTabIndex = 0;
  late SearchBloc searchBloc;
  void _handleTabSelection(int index) {
    setState(() {
      _selectedTabIndex = index;
      searchBloc.add(
          OnChangeTabSelectionEvent(query: widget.query, selectedIndex: index));
    });
  }

  @override
  void initState() {
    searchBloc = BlocProvider.of<SearchBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> tabList = ['Canciones', 'Artistas', 'Albumes'];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: tabList.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _handleTabSelection(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _selectedTabIndex == index
                          ? HexColor('#1db954')
                          : Colors.grey[800],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(tabList[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.searchResponseList != null) {
                return ListView.separated(
                  itemCount: state.searchResponseList!.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 5),
                  itemBuilder: (context, index) {
                    return _buildListItem(
                        context,
                        state.searchResponseList![index],
                        state.selectedTabIndex);
                  },
                );
              } else {
                return const Center(child: Text('No hay datos que mostrar'));
              }
            },
          ),
        )
      ],
    );
  }

  Widget _buildListItem(
      BuildContext context, dynamic item, int selectedTabIndex) {
    Widget buildAlbumItem() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            if (item.album?.images?.isNotEmpty == true)
              Image.network(
                item.album!.images.first.url,
                width: 100,
              ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Text(
                    item.name ?? '',
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (selectedTabIndex == 0)
                  Text(
                    'Canción - ${item.album?.artists.first.name}',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ],
        ),
      );
    }

    Widget buildArtistItem() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            if (item.images?.isNotEmpty == true)
              Image.network(
                item.images.first.url,
                width: 100,
              ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Text(
                    item.name ?? '',
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    switch (selectedTabIndex) {
      case 0:
        return buildAlbumItem();
      case 1:
        return buildArtistItem();
      case 2:
        return buildArtistItem(); // Se utiliza el mismo widget para el caso de álbum y artista
      default:
        return Container(); // Manejo de casos no manejados
    }
  }
}
