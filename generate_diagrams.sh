for file in _diagrams/*.dot
do
  filename=$(basename "$file")
  dot -Tpng "$file" > "images/${filename%.*}.png"
done
