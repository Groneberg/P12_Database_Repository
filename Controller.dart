import 'Box.dart';
// import 'Event.dart';
// import 'Item.dart';

class Controller {
  Map<String, Box> boxes = {};

  void addBoxToList(Box box) {
    this.boxes[box.name] = box;
  }

  // TODO später schleife und verschachtelung beachten
  void deleteBoxFromList(String key) {
    this.boxes.remove(key);
  }

  // TODO später löschen | ist nur für testdaten geschrieben
  Map<String, Box> getTestMap() {
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
    return boxes;
  }

}