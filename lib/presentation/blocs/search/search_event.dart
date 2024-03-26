part of 'search_bloc.dart';

class SearchEvent {
  const SearchEvent();
}

class OnChangeTabSelectionEvent extends SearchEvent {
  final int selectedIndex;
  final String query;
  const OnChangeTabSelectionEvent(
      {required this.selectedIndex, required this.query});
}

class OnSearchEvent extends SearchEvent {
  final String query;
  final int selectedIndex;
  const OnSearchEvent({required this.query, required this.selectedIndex});
}
