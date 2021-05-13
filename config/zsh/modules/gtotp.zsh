
gtotp() {
  echo -n 'Issuer?: '
  read ISSUER

  echo -n 'User? '
  read USER

  echo -n "Secret? "
  read SECRET

  qrencode -m 2 -t utf8 <<< "otpauth://totp/$USER?secret=SECRET&issuer=$ISSUER"
}
