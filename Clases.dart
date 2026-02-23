import 'dart:convert';

class Persona {
  String nombre;
  int edad;
  String profesion;
  String ciudad;

  Persona(this.nombre, this.edad, this.profesion, this.ciudad);

  Persona.desdeJson(String jsonString)
    : 
      nombre = jsonDecode(jsonString)['nombre'],
      edad = jsonDecode(jsonString)['edad'],
      profesion = jsonDecode(jsonString)['profesion'],
      ciudad = jsonDecode(jsonString)['ciudad'];

  void imprimirDatos() {
    print(
      'Hola, me llamo $nombre, tengo $edad años, soy $profesion y vivo en $ciudad',
    );
  }

  void saludarA(String amigo) {
    print('$nombre saluda a $amigo');
  }

  void queHaces() {
    print('$nombre está aprendiendo a programar en Dart');
  }

  void despedirseDe(String amigo) => print('$nombre se despide de $amigo');

  void mostrarProfesion() => print('$nombre es $profesion');
}

void main() {
  print('=== ACTIVIDAD 1 - DART ===\n');

  print('--- Probando constructor principal ---');
  Persona persona1 = Persona('Douglas', 23, 'Ingeniero', 'Cartagena');
  persona1.imprimirDatos();

  print('\n--- Probando constructor JSON ---');
  String datosJson =
      '{"nombre": "Kener", "edad": 25, "profesion": "Doctor", "ciudad": "Medellín"}';
  Persona persona2 = Persona.desdeJson(datosJson);
  persona2.imprimirDatos();

  print('\n--- Probando funciones tradicionales ---');
  persona1.saludarA('Fabian'); 
  persona1.queHaces();

  print('\n--- Probando funciones de flecha ---');
  persona2.despedirseDe('María'); 
  persona2.mostrarProfesion(); 

  print('\n--- Creando más personas ---');
  Persona persona3 = Persona('Luisa', 22, 'Estudiante', 'Cali');
  persona3.imprimirDatos();

  print('\n--- Probando todas las funciones con la nueva persona ---');
  persona3.saludarA('Juan Pedraza');
  persona3.queHaces();
  persona3.despedirseDe('Juan Pedraza');
  persona3.mostrarProfesion();
}
