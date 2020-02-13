import 'package:mongo_dart/mongo_dart.dart';

abstract class AbstractRepository{

    Db db = new Db("mongodb://root:senha@msansone.com.br:27017/mymoney?authSource=admin");

}