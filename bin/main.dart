import 'package:avaliacao3/dna_sequence.dart';

void main() {
  var dna = DNASequence.random(10);
  print('Sequencia: $dna');
  print('Sequencia invertida: ${dna.invertedSequence(dna.sequence)}');
  print('Complemento do DNA: ${DNASequence.complement(dna.sequence)}');
  print(dna.nucleotidesOccurrences(dna.sequence));
}

/*autores:
Alanna Gilcielle Mesquita de Farias
Francisco Ronny Ribeiro da Silva
*/
