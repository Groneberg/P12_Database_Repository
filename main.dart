// import 'Box.dart';
// import 'Event.dart';
// import 'Item.dart';
import 'Controller.dart';

void main() {
  Controller con = Controller();
  con.mainBox = con.getTestDataBox();
  
  // print(con.mainBox.findBoxByName("Regal B1"));
  // con.mainBox.showBoxTree();
  con.runBoxSystem();
}
