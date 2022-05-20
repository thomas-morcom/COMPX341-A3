nodeModules='node_modules'
str="// Name: Thomas Morcom  ID: 1539104"

find . -type f -name '*.ts' | while read -r f; do
    if [[ $f != *"$nodeModules"* ]]; then
        counter=$((counter+1))
        echo "Edited file: $f"
        sed -i "1 s|.*|$str|" "$f"
    fi
done
