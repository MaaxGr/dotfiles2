
qrcode() {
  echo -n 'QR-Code content: '

  read CONTENT
  qrencode -m 2 -t utf8 <<< "CONTENT"
}
