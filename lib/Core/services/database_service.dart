import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._constructor();
  DatabaseService._constructor();

  static Database? _database;

  Future<Database> getDatabase() async {
    if (_database != null) return _database!;

    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "database_otex.db");

    final exists = await databaseExists(path);
    if (!exists) {
      print("📦 Copying preloaded database...");
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load("assets/database/database_otex.db");
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      await File(path).writeAsBytes(bytes, flush: true);
      print("✅ Database copied to $path");
    }

    _database = await openDatabase(path, readOnly: true);
    print("✅ Database opened at $path");

    return _database!;
  }

  Future<List<Map<String, dynamic>>> getData(String tableName) async {
    final db = await getDatabase();
    final result = await db.query(tableName);
    print("📄 Data from $tableName: $result");
    return result;
  }

  Future<List<Map<String, dynamic>>> getProductsByCategory(int categoryId) async {
    final db = await getDatabase();
    final result = await db.query(
      'Product',
      where: 'CategoryId = ?',
      whereArgs: [categoryId],
    );
    print("📄 Products for category $categoryId: $result");
    return result;
  }

  Future<Map<String, dynamic>?> getProductById(int productId) async {
    final db = await getDatabase();
    final result = await db.query(
      'Product',
      where: 'ProductId = ?',
      whereArgs: [productId],
      limit: 1,
    );
    print("📄 Product for id $productId: $result");
    if (result.isNotEmpty) {
      return result.first;
    } else {
      return null;
    }
  }
}
