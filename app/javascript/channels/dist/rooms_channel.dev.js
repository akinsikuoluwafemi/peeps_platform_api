"use strict";

var _consumer = _interopRequireDefault(require("./consumer"));

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

_consumer["default"].subscriptions.create("RoomsChannel", {
  connected: function connected() {
    alert('Connected to rooms channel'); // Called when the subscription is ready for use on the server
  },
  disconnected: function disconnected() {// Called when the subscription has been terminated by the server
  },
  received: function received(data) {// Called when there's incoming data on the websocket for this channel
  }
});