//mixins pt2

//on clause - forcing class that uses a mixin to be also a subclass of the type in the on clause

class Musician {
  void musicianMethod() {
    print('Playing music!');
  }
}

mixin MusicalPerformer on Musician { 
  void performerMethod() {
    print('Performing music!');
    super.musicianMethod();
  }
}

class SingerDancer extends Musician with MusicalPerformer { } 


mixin class Musician2{

}

class Novice with Musician2{} //we use Musician2 as a mixin

class Novice2 extends Musician2{} //we use Musician2 as a class

//Mixins can't have extends or with clauses, so neither can a mixin class.
//Classes can't have an on clause, so neither can a mixin class

void main() {
  SingerDancer().performerMethod();
}