import 'dart:convert';

import 'package:flutter_notification_listener/flutter_notification_listener.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteService {
  SqliteService._();

  static Database? _database;
  static const String dbName = 'database.db';

  static Future<Database> get database async {
    _database ??= await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    return openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), dbName),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(NotificationEventQuery.createTable);
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
  }
}

class NotificationEventQuery {
  NotificationEventQuery._();

  static String tableName = 'notificationEvent';

  static const String _id = 'id';
  static const String _key = 'key';
  static const String _raw = 'raw';
  static const String _uid = 'uid';
  static const String _text = 'text';
  static const String _flags = 'flags';
  static const String _title = 'title';
  static const String _uniqueId = 'uniqueId';
  static const String _channelId = 'channelId';
  static const String _timestamp = 'timestamp';
  static const String _packageName = 'packageName';

  static String createTable = '''
  CREATE TABLE $tableName (
    $_uniqueId TEXT PRIMARY KEY, 
    $_key TEXT, 
    $_uid INTEGER,
    $_id INTEGER, 
    $_channelId TEXT, 
    $_timestamp INTEGER, 
    $_packageName TEXT, 
    $_title TEXT, 
    $_text TEXT,
    $_flags INTEGER,
    $_raw TEXT
  )''';

  static Future<void> insert(NotificationEvent event) async {
    // Get a reference to the database.
    final db = await SqliteService.database;

    final payload = {
      _uniqueId: event.uniqueId,
      _key: event.key,
      _uid: event.uid,
      _id: event.id,
      _channelId: event.channelId,
      _timestamp: event.timestamp,
      _packageName: event.packageName,
      _title: event.title,
      _text: event.text,
      _flags: event.flags,
      _raw: jsonEncode(event.raw),
    };

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      tableName,
      payload,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the dogs from the dogs table.
  static Future<List<NotificationEvent>> getAll() async {
    // Get a reference to the database.
    final db = await SqliteService.database;

    // Query the table for all the dogs.
    final List<Map<String, dynamic>> eventMaps =
        await db.query(tableName, orderBy: '$_timestamp DESC');

    // Convert the list of each dog's fields into a list of `Dog` objects.
    // final List<NotificationEvent> results = [];

    // for (final item in eventMaps) {
    //   final event = NotificationEvent(
    //     id: item[_id],
    //     key: item[_key],
    //     uid: item[_uid],
    //     text: item[_text],
    //     flags: item[_flags],
    //     title: item[_title],
    //     uniqueId: item[_uniqueId],
    //     channelId: item[_channelId],
    //     timestamp: item[_timestamp],
    //     packageName: item[_packageName],
    //   );
    // }

    return [
      for (final item in eventMaps)
        NotificationEvent(
          id: item[_id],
          key: item[_key],
          uid: item[_uid],
          text: item[_text],
          flags: item[_flags],
          title: item[_title],
          uniqueId: item[_uniqueId],
          channelId: item[_channelId],
          timestamp: item[_timestamp],
          packageName: item[_packageName],
        ),
    ];
  }
}
