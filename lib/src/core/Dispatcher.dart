library swirl.dispatcher;

import "dart:async";
import "dart:io";

import "package:Swirl/src/core/Joint.dart";
import "package:Swirl/src/core/network/Entity.dart";

abstract class Dispatcher {
  Entity networkEntity;
  Joint joint;

  Future HTTPForward(HttpRequest request) {
    return joint.onRequest(request);
  }
}
