import 'package:avaliacao3/dna_sequence.dart';

void main() {
  var dna = DNASequence.random(10);
  print(dna);
  print(dna.invertedSequence(dna.sequence));
  print(DNASequence.complement(dna.sequence));
}
