import 'package:civicleaf/api/api.dart';
import 'package:quickvolunteer/model/user.dart';

class FetchModify {
  Api events = new Api('events');
  Api users = new Api('users');
  Future<List<Event>> getEvents() async {
    return (await events.getDataCollection()).documents.map((doc) => Event.fromFirestore(doc)).toList();
  }

  Future<List<User>> getUsers() async {
    return (await events.getDataCollection()).documents.map((doc) => User.fromFirestore(doc)).toList();
  }
}