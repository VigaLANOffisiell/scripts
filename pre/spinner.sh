#!/bin/bash
#Copyright VigåLAN 2018 GNU gpl. v3

antall_spins=3 # Hvor mange ganger spinn mønsteret skal kjøres før scriptet går videre.
spinhastighet=0.05 # Jo høyrere dette tallet, jo senere snurrer spinneren rundt

tput sc #Lagre på hvilke linje og hvilken linjeposisjon tekstmarkkøren er.
tput civis #Skjul tekstmarkkør/understrekningen i terminalen

while [[ "$antall_spins" -ne 0 ]]; do #while loop som kjøres helt til antall spinn blir 0
  echo -n '-'
  tput rc # flytt markør tilbake til den lagrede posisjonen
  sleep $spinhastighet

  echo -n '\'
  tput rc
  sleep $spinhastighet

  echo -n '|'
  tput rc
  sleep $spinhastighet

  echo -n '/'
  tput rc
  sleep $spinhastighet

  (( antall_spins-- )) #trekk i fra 1 på antall spins
done

tput cnorm #vis markøren igjen sånn at den ikke er usynlig etter skriptet er ferdig
