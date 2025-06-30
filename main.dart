/// Interface for a database repository.
abstract class DatabaseRepository {
  List<String> read(String text);
  void create();
  void update();
  void delete();
}