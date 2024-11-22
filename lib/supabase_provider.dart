import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabasewebcrud/const.dart';
import 'package:supabasewebcrud/fake_notes.dart';

class SupabaseProvider {
  static final SupabaseProvider _instance = SupabaseProvider._internal();

  factory SupabaseProvider() {
    return _instance;
  }

  SupabaseProvider._internal();

  Future<void> initialize() async {
    await Supabase.initialize(
      url: URL,
      anonKey: ANON_KEY,
    );
  }

  //add method fake notes
  Future<void> addFakeCitie() async {
    final supabase = Supabase.instance.client;
    final note = FakeNotes.getRandomNote();
    await supabase.from('notes').upsert([
      {
        'title': note['title'],
        'content': note['content'],
      },
    ]);
  }

  //read stream notes
  Future<List<Map<String, dynamic>>> getNotes() {
    final supabase = Supabase.instance.client;
    return supabase.from('notes').select();
  }

  SupabaseClient get client => Supabase.instance.client;
}
