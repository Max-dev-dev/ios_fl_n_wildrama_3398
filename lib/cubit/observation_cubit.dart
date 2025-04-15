import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ios_fl_n_wildrama_3398/models/observation_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ObservationCubit extends Cubit<List<Observation>> {
  ObservationCubit() : super([]);

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final rawList = prefs.getStringList('observations') ?? [];
    emit(rawList.map((e) => Observation.fromJson(jsonDecode(e))).toList());
  }

  Future<void> add(Observation observation) async {
    final updated = [...state, observation];
    emit(updated);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      'observations',
      updated.map((e) => jsonEncode(e.toJson())).toList(),
    );
  }

  Future<void> save() async {
    final prefs = await SharedPreferences.getInstance();
    final list = state.map((e) => jsonEncode(e.toJson())).toList();
    await prefs.setStringList('observations', list);
  }
}
