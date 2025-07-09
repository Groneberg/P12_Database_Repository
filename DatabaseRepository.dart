import 'Box.dart';
import 'Event.dart';
import 'Item.dart';

/// Interface for a database repository.
abstract class DatabaseRepository {
  Map<String, Box> readAllBoxes();
  Map<String, Event> readAllEvent();
  Box readBox(String name);
  Event readEvent(String name);
  Item readItem(String name);
  void createBox(Box box);
  void createEvent(Event event);
  void createItem(Item item);
  void updateBox(Box box);
  void updateEvent(Event event);
  void updateItem(Item item);
  void deleteBox(String name);
  void deleteEvent(String name);
  void deleteItem(String name);
}