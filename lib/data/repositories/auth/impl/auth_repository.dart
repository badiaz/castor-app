import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:castor_spotify_app/data/repositories/auth/auth_repository_interface.dart';
import 'package:castor_spotify_app/domain/entities/auth/auth_entity.dart';

class AuthRepository implements AuthRepositoryInterface {
  static const String baseUrl = "https://accounts.spotify.com";
  static String? clientId = dotenv.env['SPOTIFY_CLIENT_ID'];
  static String? clientSecret = dotenv.env['SPOTIFY_CLIENT_SECRET'];

  String buildAuthorizationUrl(
    String redirectUri,
    String scope,
    String state,
  ) {
    return "$baseUrl/authorize"
        "?client_id=$clientId"
        "&response_type=code"
        "&redirect_uri=$redirectUri://"
        "&state=$state";
  }

  String buildAuthorizationHeader() {
    String authorizationStr = "$clientId:$clientSecret";
    var bytes = utf8.encode(authorizationStr);
    var base64Str = base64.encode(bytes);
    return 'Basic $base64Str';
  }

  @override
  Future<String> fetchAuthorizationCode(
    String redirectUri,
    String scope,
    String state,
  ) async {
    final urlDireccion = buildAuthorizationUrl(redirectUri, scope, state);
    final response = await FlutterWebAuth2.authenticate(
      url: urlDireccion,
      callbackUrlScheme: redirectUri,
    );
    final error = Uri.parse(response).queryParameters['error'];
    if (error == null) {
      final code = Uri.parse(response).queryParameters['code'];
      return code ?? '';
    } else {
      throw Exception('Error al autenticar: $error');
    }
  }

  @override
  Future<AuthEntity> fetchToken({String code = ''}) async {
    var urlToToken = Uri.parse('$baseUrl/api/token');
    var client = http.Client();

    var response = await client.post(urlToToken, body: {
      'grant_type': "authorization_code",
      'code': code,
      'redirect_uri': 'valid-scheme://',
    }, headers: {
      'Authorization': buildAuthorizationHeader()
    });

    if (response.statusCode == 200) {
      return AuthEntity.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
