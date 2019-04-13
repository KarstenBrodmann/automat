import AlgoTools.IO;
/**
 * Endlicher Automat zur Überprüfung, ob eine beliebig
 * lange Dualzahl durch 3 teilbar ist.
 */
public class Automat {

  public static void main(String[] args) {

    int[][] delta = { // Überführungsfunktion
      {0, 1},       
      {2, 0},
      {1, 2}
    };
    int s = 0;                     // Startzustand
    char[] zeile = IO.readChars(); // Eingabezeichen

    // Überführungsfunktion zeichenweise anwenden
    for (int i = 0; i < zeile.length; i++)
      s = delta[s][zeile[i] - '0'];

    // Endzustand prüfen
    if (s == 0)
      IO.println("Eingabe ist durch 3 teilbar.");
    else
      IO.println("Eingabe ist NICHT durch 3 teilbar.");
  }

}
