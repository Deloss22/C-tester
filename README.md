# C-tester

Parallel processing, Course code: CEID_N4408, Project year: 2017-2018

This is a simple script created in order to test your project's runtime.

--How to use
  -Compile all of your project's source codes with their respective arguments (-fopenmp, -lblas etc).
  -Move script.sh on the same directory with your executable files.
  -Give execute permissions: chmod +x script.sh
  -Run it: ./script.sh arg1 arg2 argn
    arg1, arg2, argn are the executable files names.

  -Usage example
    gcc -O3 -Wall -Wextra -o lif1d lif1d.c
    gcc -O3 -Wall -Wextra -o lif1d-1a lif1d-1a.c
    (move the script to the corresponding directory)
    chmod +x script.sh
    ./script.sh lif1d lif1d-1a

--Script output
  -A file named time.txt containing all of your executable's runtime (calculation, I/O, total time). -every time the script is run the file time.txt WILL BE REPLACED BY THE NEW ONE- your can disable that by commenting (#) line 8.
  -Each of spacetime.out and omega.out files are renamed accordingly (spacetime.out, omega.out for lif1d --n 1000 --r 350 will be renamed to spacetime_lif1d_1000_350.out, omega_lif1d_1000_350.out). -A lot of files are produced- you can comment (#) lines 21 and 22 in order to avoid that.

--How it works
  -Firstly the script appends all of the executable files names by the command line arguments and iterates over them. Within the outer for loop it iterrates again over the neurons and neighbors producing the above mentioned files.
  -arrayneur and arrayneig arrays contain the appropriate values for the project's report. You can change them to your liking in order to test the script quickly.

--Bugs
  -can't seem to find any at the moment, feel free to mention :)

  Παράλληλη Επεξεργασία, Κωδικός μαθήματος: CEID_N4408, Έτος Project: 2017-2018

  Αυτό είναι ένα απλό script για να ελέγξετε τους χρόνους εκτέλεσης των προγραμμάτων σας.

  --Χρήση
    -Κάνετε compile τα source codes που θέλετε να τρέξετε με τα αντίστοιχα arguments τους (-fopenmp, -lblas etc).
    -Μεταφέρετε το script.sh στην ίδια τοποθεσία με τα εκτελέσιμα αρχεία σας.
    -Δώστε δικαιώματα εκτέλεσης: chmod +x script.sh
    -Τρέξτε το: ./script.sh arg1 arg2 argn
      arg1, arg2, argn είναι τα ονόματα των εκτελέσιμων αρχείων σας.

    -Παράδειγμα χρήσης
      gcc -O3 -Wall -Wextra -o lif1d lif1d.c
      gcc -O3 -Wall -Wextra -o lif1d-1a lif1d-1a.c
      (μεταφέρετε το script στην κατάλληλη τοποθεσία)
      chmod +x script.sh
      ./script.sh lif1d lif1d-1a

  --Script output
    -Ένα αρχείο time.txt το οποίο περιέχει όλους τους χρόνους των εκτελέσιμων σας (calculation, I/O, total time). -κάθε φορά που το script τρέχει, το αρχείο time.txt ΑΝΤΙΚΑΘΙΣΤΑΤΑΙ ΑΠΟ ΤΟ ΚΑΙΝΟΥΡΙΟ- μπορείτε να το αποφύγετε αυτό σχολιάζοντας (#) τη γραμμή 8.
    -Κάτε ένα από τα spacetime.out και omega.out μετονομάζονται αντίστοιχα (spacetime.out, omega.out για lif1d --n 1000 --r 350 θα μετονομαστούν σε spacetime_lif1d_1000_350.out, omega_lif1d_1000_350.out). -Έτσι δημιουργούνται πολλά αρχεία- μπορείτε να σχολιάσετε (#) τις γραμμές 21 και 22 για το αποφύγετε.

  --Πως λειτουργεί
    -Αρχικά το script παίρνει τα ονόματα των εκτελέσιμων απο τη γραμμή εντολών και εκτελεί το εξωτερικό for loop. Στη συνεχεία εκτελείται ένα εμφολευμένο for loop για τα στοιχεία του πίνακα arrayneur και arrayneig παράγοντας τα προαναφερθέντα αρχεία.
    -Οι πίνακες arrayneur και arrayneig είναι αρχικοποιημένοι με τα στοιχεία που χρειάζονται για την αναφορά. Μπορείτε να τα αλλάξετε εάν θέλετε να δοκιμάσετε γρήγορα το script.


  --Bugs
    -Προς το παρόν δεν εχω βρει κάτι, feel free to mention :)
