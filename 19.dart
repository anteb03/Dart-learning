//mixins

mixin Musician {
  void playInstrument(String instrumentName); // Abstract method.

  void playPiano() {
    playInstrument('Piano');
  }
  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician {

  @override
  void playInstrument(String instrumentName) { 
    print('Plays the $instrumentName beautifully');
  }
}


//-----

mixin NameIdentity {
  String get name;

  @override
  int get hashCode => name.hashCode;
}

class Person with NameIdentity {
  final String name;

  Person(this.name);
}

//---

abstract interface class Tuner {
  void tuneInstrument();
}

mixin Guitarist implements Tuner {
  void playSong() {
    tuneInstrument();

    print('Strums guitar majestically.');
  }
}

class PunkRocker with Guitarist {

  @override
  void tuneInstrument() {
    print("Don't bother, being out of tune is punk rock.");
  }
}

void main(){

}