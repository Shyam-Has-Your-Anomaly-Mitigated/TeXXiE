#!/usr/bin/env bash

# Invariable Variables.
OUTPUT="checksum.txt";

# Variable Variables.
COUNT=0;
MAX=COUNT;

# Internal Field Seperator
IFS=$'\n';

# Count For "Estimation Time".
for f in $(find -type f ! -name "$OUTPUT"); do COUNT=$((COUNT+=1)); done;

# Maximum Time.
MAX=$COUNT;

# Main().
echo "Total Algorithms Used: 14">$OUTPUT;
for f in $(find -type f ! -name "$OUTPUT");do # Traverse Directory Structures Recursively
   printf "$MAX:$((COUNT--))\t$f\n";
   printf "\n$f\n">>$OUTPUT;
   echo "     SYSV: $(cut -d ' ' -f -1 <<<$(sum -s $f))"                          >>$OUTPUT;#sum -s
   echo "      BSD: $(cut -d ' ' -f -1 <<<$(sum -r $f))"                          >>$OUTPUT;#sum -r
   echo "      CRC: $(cut -d ' ' -f -1 <<<$(cksum $f))"                           >>$OUTPUT;#cksum
   echo "      MD4: $(openssl md4 $f       | rev | cut -d ' ' -f -1 | rev)"       >>$OUTPUT;#openssl md4
   echo "      MD5: $(openssl md5 $f       | rev | cut -d ' ' -f -1 | rev)"       >>$OUTPUT;#openssl md5
   echo "RIPEMD160: $(openssl ripemd160 $f | rev | cut -d ' ' -f -1 | rev)"       >>$OUTPUT;#openssl ripemd160
#   echo "     SHA0: $(openssl sha $f       | rev | cut -d ' ' -f -1 | rev)"       >>$OUTPUT;#openssl sha
   echo "     SHA1: $(cut -d ' ' -f -1 <<<$(shasum -a 1 $f))"                     >>$OUTPUT;#openssl sha1
   echo "   SHA224: $(cut -d ' ' -f -1 <<<$(shasum -a 224 $f))"                   >>$OUTPUT;#openssl dgst -sha224
   echo "   SHA256: $(cut -d ' ' -f -1 <<<$(shasum -a 256 $f))"                   >>$OUTPUT;#openssl dgst -sha256
   echo "   SHA384: $(cut -d ' ' -f -1 <<<$(shasum -a 384 $f))"                   >>$OUTPUT;#openssl dgst -sha384
   echo "   SHA512: $(cut -d ' ' -f -1 <<<$(shasum -a 512 $f))"                   >>$OUTPUT;#openssl dgst -sha512
   echo "SHA512224: $(cut -d ' ' -f -1 <<<$(shasum -a 512224 $f))"                >>$OUTPUT;#shasum -a 512224
   echo "SHA512256: $(cut -d ' ' -f -1 <<<$(shasum -a 512256 $f))"                >>$OUTPUT;#shasum -a 512256
   echo "WHIRLPOOL: $(openssl dgst -whirlpool $f | rev | cut -d ' ' -f -1 | rev)" >>$OUTPUT;#openssl dgst -whirlpool
done;
#   if [ $f == "./$OUTPUT" ]; then echo "IGNORING $f"; continue; fi;

#echo>>$OUTPUT;

exit 0;######################################################################### dis compression
# EDIT: removed all of the checksum injection & other experiments...
