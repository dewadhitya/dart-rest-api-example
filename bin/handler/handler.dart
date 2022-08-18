import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../dummy/dummy.dart';

class AppHandler {
  Response mainHandler(Request request) {
    return Response.ok("Helloww");
  }

  Future<Response> postHandler(Request request) async {
    final payload = jsonDecode(await request.readAsString());

    if (payload['name'] == null || payload['age'] == null) {
      return Response(
        400,
        body: jsonEncode({"error_msg": "The requirement doesn't fulfilled."}),
      );
    }

    return Response(204);
  }

  Response getListHandler(Request request) {
    List<Map<dynamic, dynamic>> data = Dummy.dataList;
    
    return Response.ok(jsonEncode(data));
  }

  Future<Response> updateDataHandler(Request request) async {
    final id = request.params['id'];
    final payload = jsonDecode(await request.readAsString());

    var data = Dummy.dataList;

    Map<dynamic, dynamic> updatedData = new Map();
    bool hasData = false;

    data.map((e) {
      if (e['id'].toString() == id) {
        hasData = true;
        Map<dynamic, dynamic> newData = e;

        if (payload['name'] != null) {
          newData['name'] = payload['name'];
        }
        if (payload['age'] != null) {
          newData['age'] = payload['age'];
        }
        updatedData = newData;
      }
    }).toList();

    if (!hasData) {
      return Response.notFound(
        jsonEncode({"error_msg": "Wrong Id!"}),
      );
    }

    return Response.ok(jsonEncode({
      "payload": updatedData
    }));
  }

  Future<Response> deleteDataHandler(Request request) async {
    // final id = request.params['id'];
    // final payload = jsonDecode(await request.readAsString());

    return Response(200);
  }
}