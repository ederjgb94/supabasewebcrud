import 'dart:math';

class FakeNotes {
  static List<Map<String, String>> notes = [
    {
      'title': 'Ir al supermercado',
      'content': 'Comprar leche, pan y huevos',
    },
    {
      'title': 'Ir al gimnasio',
      'content': 'Hacer 30 minutos de cardio',
    },
    {
      'title': 'Llamar a mamá',
      'content': 'Recordarle que la quiero',
    },
    {
      'title': 'Estudiar inglés',
      'content': 'Hacer ejercicios de listening',
    },
    {
      'title': 'Ir al médico',
      'content': 'Revisión anual',
    },
    {
      'title': 'Ir al dentista',
      'content': 'Revisión anual',
    },
    {
      'title': 'Ir al cine',
      'content': 'Ver la última película de Marvel',
    },
    {
      'title': 'Ir al parque',
      'content': 'Hacer un picnic',
    },
    {
      'title': 'Ir al teatro',
      'content': 'Ver una obra de teatro',
    },
    {
      'title': 'Ir al museo',
      'content': 'Ver la exposición de arte moderno',
    },
    {
      'title': 'Ir al zoológico',
      'content': 'Ver a los animales',
    },
    {
      'title': 'Ir al acuario',
      'content': 'Ver a los peces',
    },
    {
      'title': 'Ir al parque de diversiones',
      'content': 'Montar en la montaña rusa',
    },
    {
      'title': 'Ir al parque de atracciones',
      'content': 'Montar en la noria',
    },
  ];

  static Map<String, String> getRandomNote() {
    final random = Random();
    return notes[random.nextInt(notes.length)];
  }
}
