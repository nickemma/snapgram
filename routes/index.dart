import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  // var database = MySql();
  return Response(body: "result.toString()");
}
