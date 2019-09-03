#Makes a directory and rewrites over it if it already exists
mkdir -p $2

#Extracts files from NthPrime.tgz
tar xf NthPrime.tgz -C $2

#Compiles C code and names it
gcc -o $2/NthPrime/NthPrime $2/NthPrime/main.c $2/NthPrime/nth_prime.c

#Passes the number passed in to NthPrime
$2/NthPrime/NthPrime $1
