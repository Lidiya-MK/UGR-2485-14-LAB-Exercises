import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsBloc>(
        create: (context) => PostsBloc()..add(LoadEvent()),
        child: PostsList(), 
      ),
    );
  }
}


class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class DataService {
  final _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> getPosts() async {
    try {
      final url = Uri.parse('$_baseUrl/posts');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as List;
        final posts = json.map((e) => Post.fromJson(e)).toList();
        return posts;
      } else {
        throw Exception("Failed to load posts");
      }
    } catch (e) {
      rethrow;
    }
  }
}


@immutable
abstract class PostsEvent {}

class LoadEvent extends PostsEvent {}

class PullToRefreshEvent extends PostsEvent {}

@immutable
abstract class PostsState {}

class LoadingState extends PostsState {}

class LoadedState extends PostsState {
  final List<Post> posts;

  LoadedState({required this.posts});
}

class FailedToLoadState extends PostsState {
  final String error;

  FailedToLoadState({required this.error});
}


class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final DataService _dataService = DataService();

  PostsBloc() : super(LoadingState()) {
    on<PostsEvent>((event, emit) async {
      if (event is LoadEvent || event is PullToRefreshEvent) {
        emit(LoadingState());
        try {
          final posts = await _dataService.getPosts();
          emit(LoadedState(posts: posts));
        } catch (e) {
          emit(FailedToLoadState(error: e.toString()));
        }
      }
    });
  }
}


class PostsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC Posts", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: BlocBuilder<PostsBloc, PostsState>(
        builder: (context, state) {
          if (state is LoadedState) {
            return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index]; 
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(post.id.toString()),
                    ),
                    title: Text(
                      post.title,
                      maxLines: 2,
                    ),
                    subtitle: Text(
                      post.body,
                      maxLines: 5,
                    ),
                  ),
                );
              },
            );
          } else if (state is FailedToLoadState) {
            return Center(child: Text(state.error));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
