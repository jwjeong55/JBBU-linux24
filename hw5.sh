#!/bin/bash

# 실행 파일의 경로
EXECUTABLE="./hw5.out"

if [ ! -f "$EXECUTABLE" ]; then
    echo "ERROR: hw5.out을 찾을 수 없습니다."
    exit 1
fi

output=$(./hw5.out 3)
if [ "$output" != "Error type2." ]; then
    echo "Error type2에 문제가 있습니다."
fi

output=$(./hw5.out)
if [ "$output" != "Error type2." ]; then
    echo "Error type2에 문제가 있습니다."
fi

output=$(./hw5.out 3 5 7)
if [ "$output" != "Error type1." ]; then
    echo "Error type1에 문제가 있습니다."
fi


output=$(./hw5.out 3 5 7 9)
if [ "$output" != "Error type1." ]; then
    echo "Error type1에 문제가 있습니다."
fi

output=$(./hw5.out 30 50)
expected_output=1500

if [ "$output" != "$expected_output" ]; then
    echo "에러: 예상 결과와 다릅니다. 예상 결과: $expected_output, 실제 결과: $output"
else
    echo "테스트 통과"
fi