import 'package:cinemapedia/presentation/delegates/search_movie_delegates.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.movie_creation_outlined, color: colors.primary),
              const SizedBox(width: 5),
              Text('Cinemapedia', style: titleStyle),
              Spacer(),
              IconButton(onPressed: () {

                final movieRepository =  ref.read(movieRepositoryProvider);
                

                showSearch(
                  context: context, 
                  delegate: SearchMovieDelegates(searchMovies: movieRepository.searchMovies ));
              },
              icon: Icon(Icons.search_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
