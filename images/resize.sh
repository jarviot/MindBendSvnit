find $1 -type f -and -iname "girl-p-500.webp" \
-exec bash -c '
cwebp -quiet -q 5 "$0" -o "$0";' {} \;
                                