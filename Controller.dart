import 'Box.dart';
// import 'Event.dart';
// import 'Item.dart';

import 'dart:io';

class Controller {
  Box mainBox = Box("mainBox", "");
  Box currentBox = Box("currentBox", "");

  // TODO später löschen | ist nur für test geschrieben
  bool isRunning = true;
  String input = "";
  
  void addBoxMainBox(Box box) {
    this.mainBox.addBox(box);
  }

  // TODO später schleife und verschachtelung beachten
  // TODO funktionsnamen später ändern
  void deleteBoxFromList(String key) {
    this.mainBox.boxes.remove(key);
  }

  // TODO später löschen | ist nur für testdaten geschrieben
  Box getTestDataBox() {
    // Ebene 1: Hauptlager
    Box hauptLager = Box('HauptLager', 'Zentrales Lager für alle Güter.');

    // Ebene 2: Abteilungen im Hauptlager
    Box abteilungA = Box(
      'Abteilung A',
      'Bereich für Elektronik und Kleingeräte.',
    );
    Box abteilungB = Box('Abteilung B', 'Bereich für Bücher und Medien.');
    Box abteilungC = Box(
      'Abteilung C',
      'Bereich für Werkzeuge und Heimwerkerbedarf.',
    );

    hauptLager.addBox(abteilungA);
    hauptLager.addBox(abteilungB);
    hauptLager.addBox(abteilungC);

    // Ebene 3: Regale in Abteilung A
    Box regalA1 = Box('Regal A1', 'Regal für Laptops und Zubehör.');
    Box regalA2 = Box('Regal A2', 'Regal für Smartphones und Tablets.');

    abteilungA.addBox(regalA1);
    abteilungA.addBox(regalA2);

    // Ebene 4: Fächer in Regal A1
    Box fachA1_1 = Box('Fach A1.1', 'Fach für Laptop-Modell X.');
    Box fachA1_2 = Box('Fach A1.2', 'Fach für Laptop-Modell Y.');
    Box fachA1_3 = Box('Fach A1.3', 'Fach für Laptop-Zubehör.');

    regalA1.addBox(fachA1_1);
    regalA1.addBox(fachA1_2);
    regalA1.addBox(fachA1_3);

    // Ebene 5 (optional, macht den Baum tiefer): Artikel in Fach A1.1
    Box artikelX1 = Box('Artikel X1', 'Ein bestimmtes Laptop-Modell.');
    Box artikelX2 = Box('Artikel X2', 'Weiteres Laptop-Modell gleicher Art.');

    fachA1_1.addBox(artikelX1);
    fachA1_1.addBox(artikelX2);

    // Weitere Elemente hinzufügen, um die Struktur zu vervollständigen
    Box regalB1 = Box('Regal B1', 'Regal für Romane.');
    Box romanA = Box('Der Schatten des Windes', 'Ein fesselnder Roman.');
    regalB1.addBox(romanA);
    abteilungB.addBox(regalB1);

    Box regalC1 = Box('Regal C1', 'Regal für Schraubendreher-Sets.');
    abteilungC.addBox(regalC1);
    Map<String, Box> boxes = {};
    boxes[hauptLager.name] = hauptLager;
    return hauptLager;
  }

  // TODO später löschen | ist nur für test geschrieben
  void runBoxSystem() {
      do {
    print("Welcome to the Box Management System!");
    print("1. Show Main Box");
    print("2. Show Current Box");
    print("3. Add Box to Main Box");
    print("4. Delete Box from Main Box");
    print("5. Find Box by Name");
    print("6. Exit");

    stdout.write("Please enter your choice: ");
    input = stdin.readLineSync() ?? "";

    switch (input) {
      case "1":
        this.mainBox.showBoxTree();
        break;
      case "2":
        this.currentBox.showBoxTree();
        break;
      case "3":
        stdout.write("Enter box name: ");
        String boxName = stdin.readLineSync() ?? "";
        stdout.write("Enter box description: ");
        String boxDescription = stdin.readLineSync() ?? "";
        this.addBoxMainBox(Box(boxName, boxDescription));
        break;
      case "4":
        stdout.write("Enter box name to delete: ");
        String boxToDelete = stdin.readLineSync() ?? "";
        this.deleteBoxFromList(boxToDelete);
        break;
      case "5":
        stdout.write("Enter box name to find: ");
        String boxNameToFind = stdin.readLineSync() ?? "";
        Box? foundBox = this.mainBox.findBoxByName(boxNameToFind);
        if (foundBox != null) {
          print("Found Box: ${foundBox.toString()}");
        } else {
          print("Box not found.");
        }
        break;
      case "6":
        isRunning = false;
        break;
      default:
        print("Invalid choice, please try again.");
    }
    
  } while (isRunning);

  }
}
