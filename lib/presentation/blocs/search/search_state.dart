part of 'search_bloc.dart';

class SearchState extends Equatable {
  final int selectedTabIndex;
  final List<dynamic>? searchResponseList;

  const SearchState({this.selectedTabIndex = 0, this.searchResponseList});

  SearchState copyWith(
          int? selectedTabIndex, List<dynamic>? searchResponseList) =>
      SearchState(
          selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
          searchResponseList: searchResponseList ?? this.searchResponseList);

  @override
  List<Object?> get props => [selectedTabIndex, searchResponseList];
}
