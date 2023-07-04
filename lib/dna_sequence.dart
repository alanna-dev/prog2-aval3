// ignore_for_file: unused_local_variable

import 'dart:math';

class DNASequence {
  final String sequence;

  @override
  String toString() => sequence;

  DNASequence(this.sequence) {
    if (!_isValidSequence(sequence)) throw FormatException('Invalid Sequence');
  }

  factory DNASequence.random(int length) {
    var random = Random();
    var bases = ['A', 'C', 'G', 'T'];

    var randomSequence = List.generate(length, (_) {
      var randomIndex = random.nextInt(bases.length);
      return bases[randomIndex];
    }).join();

    return DNASequence(randomSequence);
  }

  static bool _isValidSequence(String sequence) {
    var validNucleotides = {'A', 'C', 'G', 'T'};
    for (var character in sequence.split('')) {
      if (!validNucleotides.contains(character)) return false;
    }
    return true;
  }

  factory DNASequence.complement(String sequence) {
    List listOfComplementSequence = [];
    String complementNucleotides = '';
    int sequenceLenght = sequence.length;
    int t = 0;
    int a = 0;
    int g = 0;
    int c = 0;
    for (int i = 0; i < sequenceLenght; i++) {
      // 'A', 'C', 'G', 'T'
      if (sequence[i] == 'A') {
        complementNucleotides = 'T';
        t++;
      } else if (sequence[i] == 'T') {
        complementNucleotides = 'A';
        t++;
      } else if (sequence[i] == 'C') {
        complementNucleotides = 'G';
        c++;
      } else if (sequence[i] == 'G') {
        complementNucleotides = 'C';
        g++;
      }
      listOfComplementSequence.add(complementNucleotides);
    }
    String complementSequence = listOfComplementSequence.join();
    return DNASequence(complementSequence);
  }

  String invertedSequence(String txt) => txt.split('').reversed.join();

  nucleotidesOccurrences(sequence) {
    int sequenceLenght = sequence.length;
    int t = 0;
    int a = 0;
    int g = 0;
    int c = 0;
    for (int i = 0; i < sequenceLenght; i++) {
      // 'A', 'C', 'G', 'T'
      if (sequence[i] == 'A') {
        a++;
      } else if (sequence[i] == 'T') {
        t++;
      } else if (sequence[i] == 'C') {
        c++;
      } else if (sequence[i] == 'G') {
        g++;
      }
    }
    print('Ocorrencias: A= $a vezes, T= $t vezes, G= $g vezes,C= $c vezes');
  }
}
