mixin Caminar {
  void caminar() {
    print("Puede caminar");
  }
}

mixin Nadar {
  void nadar() {
    print("Puede nadar");
  }
}

mixin Volar {
  void volar() {
    print("Puede volar");
  }
}


abstract class Animal {
  String nombre;

  Animal(this.nombre);
}


abstract class Mamifero extends Animal {
  Mamifero(String nombre) : super(nombre);
}

abstract class Ave extends Animal {
  Ave(String nombre) : super(nombre);
}

abstract class Pez extends Animal {
  Pez(String nombre) : super(nombre);
}


class Delfin extends Mamifero with Nadar {
  Delfin() : super("Delfín");
}

class Murcielago extends Mamifero with Caminar, Volar {
  Murcielago() : super("Murciélago");
}

class Gato extends Mamifero with Caminar {
  Gato() : super("Gato");
}

class Paloma extends Ave with Caminar, Volar {
  Paloma() : super("Paloma");
}

class Pato extends Ave with Caminar, Volar, Nadar {
  Pato() : super("Pato");
}

class Tiburon extends Pez with Nadar {
  Tiburon() : super("Tiburón");
}

class PezVolador extends Pez with Nadar {
  PezVolador() : super("Pez Volador");
}


void main() {
  Delfin delfin = Delfin();
  print(delfin.nombre);
  delfin.nadar();

  print("-------------");

  Pato pato = Pato();
  print(pato.nombre);
  pato.caminar();
  pato.volar();
  pato.nadar();
}
