#!/bin/bash

check_format() {
    # Проверяем, что файл существует
    if [[ ! -f "$1" ]]; then 
        echo "Файла не существует"
        exit 1
    fi

    # Получаем расширение файла
    file_extension="${1##*.}"

    # Проверяем, что файл имеет расширение txt
    if [[ "$file_extension" != "txt" ]]; then 
        echo "Неверный формат файла. Допустим только формат txt."
        exit 1
    fi

    echo "Формат файла верный"
    exit 0
}

# Проверяем формат каждого переданного файла
for file in "$@"; do
    check_format "$file"
done
