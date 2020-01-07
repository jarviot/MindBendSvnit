find $1 -type f -and \( -iname "*.jpg" -o -iname "*webp" \) \
-exec bash -c '
webp_path=$(sed 's/\.[^.]*$/.webp/' <<< "$0");
if [ ! -f "$webp_path" ]; then 
  cwebp -quiet -q 70 "$0" -o "$webp_path";
fi;' {} \;

# converting PNG images
find $1 -type f -and -iname "*.png" \
-exec bash -c '
webp_path=$(sed 's/\.[^.]*$/.webp/' <<< "$0");
if [ ! -f "$webp_path" ]; then 
  cwebp -quiet -q 70 -lossless "$0" -o "$webp_path";
fi;' {} \;