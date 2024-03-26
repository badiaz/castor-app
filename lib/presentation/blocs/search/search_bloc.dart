import 'package:castor_spotify_app/domain/usecases/spotify_search/spotify_search_use_case.interface.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SpotifySearchUseCaseInterface spotifySearchUseCase;
  SearchBloc({required this.spotifySearchUseCase})
      : super(const SearchState()) {
    on<OnChangeTabSelectionEvent>((event, emit) {
      emit(state.copyWith(event.selectedIndex, []));
      add(OnSearchEvent(
          query: event.query, selectedIndex: event.selectedIndex));
    });

    on<OnSearchEvent>((event, emit) async {
      var searchResponse = await spotifySearchUseCase.searchSongs(
          event.query, event.selectedIndex);

      if (searchResponse != null) {
        emit(state.copyWith(state.selectedTabIndex, searchResponse));
      }
    });
  }
}
