"use strict";

$(function() {
//  alert("Pause");
  if (window.top != window.self) {
    $("#demo").text("This window is NOT the topmost window!")
              .css("color", "red");
  }
  else {
    $("#demo").css("color", "green")
              .text("This window is the topmost window!");
  }
});