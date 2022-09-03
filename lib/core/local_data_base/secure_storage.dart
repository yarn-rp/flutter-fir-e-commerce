// import 'dart:convert';

// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:recarguita/core/local_data_base/local_data_base_contract.dart';
// import 'package:recarguita/core/local_data_base/storable.dart';

// typedef FromJsonFunction<T> = T Function(Map<String, dynamic> json);

// class SecureStorage<T extends Storable> implements LocalDatabase<T> {
//   SecureStorage(
//     this._storage, {
//     required this.fromJsonFunction,
//     this.equals,
//     this.policy = CachePolicy.FIFO,
//   });

//   final FlutterSecureStorage _storage;
//   final FromJsonFunction<T> fromJsonFunction;

//   @override
//   Future<void> add(T element, {String? key}) => _storage.write(
//         key: key ?? element.id,
//         value: json.encode(
//           element.toJson(),
//         ),
//       );

//   @override
//   Future<void> addAll(List<T> elementList) async => elementList.forEach(add);

//   final bool Function<T>(T e1, T e2)? equals;

//   @override
//   Future<Iterable<T>> getAll() => _storage.readAll().then(
//         (items) => items.entries.map<T>(
//           (e) => fromJsonFunction(
//             json.decode(e.value) as Map<String, dynamic>,
//           ),
//         ),
//       );

//   //TODO: remove this in a future
//   @Deprecated('Secure storages do not have indexes')
//   @override
//   Future<T?> getAt(int index) {
//     throw UnimplementedError();
//   }

//   //TODO: remove this in a future
//   @Deprecated('Secure storages do not have indexes')
//   @override
//   Future<Iterable<T>> getInRange(int startIndex, int endIndex) {
//     // TODO: implement getInRange
//     throw UnimplementedError();
//   }

//   @override
//   Future<Iterable<T>> getWhere(TestFunction<T> test) => _storage.readAll().then(
//         (items) => items.values
//             .map<T>(
//                 (e) => fromJsonFunction(json.decode(e) as Map<String, dynamic>))
//             .where(test),
//       );

//   @override
//   final CachePolicy policy;

//   @override
//   Future<void> remove(T element, {String? key}) async {
//     if (key != null) {
//       return _storage.delete(key: key);
//     } else {
//       final _allItems = await _storage.readAll();
//       final _keysToRemove = _allItems.entries.where((e) {
//         final value =
//             fromJsonFunction(json.decode(e.value) as Map<String, dynamic>);

//         if (equals != null) {
//           return equals!(value, element);
//         } else {
//           return value == element;
//         }
//       }).map((e) => e.key);
//       for (final element in _keysToRemove) {
//         await _storage.delete(key: element);
//       }
//     }
//   }

//   @override
//   Future<void> removeAt(int index) {
//     // TODO: implement removeAt
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> removeWhere(TestFunction<T> test) {
//     // TODO: implement removeWhere
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> updateAt(int index, T e) {
//     // TODO: implement updateAt
//     throw UnimplementedError();
//   }

//   @override
//   Future<void> updateWhere(TestFunction<T> test, T e) {
//     // TODO: implement updateWhere
//     throw UnimplementedError();
//   }
// }
