#!/bin/bash

# 사용법 출력 함수
usage() {
    echo "Usage: $0 <student_program>"
    exit 1
}

# 명령어 인자 확인
if [ $# -ne 1 ]; then
    usage
fi

# 학생 프로그램 변수에 할당
student_program="$1"

# 입력 파일과 출력 파일
input_file="input.bin"
output_file1="out1"
output_file2="out2"


# 프로그램 실행 및 출력 파일 생성
./$student_program $input_file $output_file1 $output_file2

# 결과 평가
if [ -f "$output_file1" ] && [ -f "$output_file2" ]; then
    # 출력 파일들이 생성되었을 때
    diff_result=$(diff "$output_file1" "$output_file2")

    if [ -z "$diff_result" ]; then
        echo "정답-!"
    else
        echo "출력 파일이 일치하지 않습니다: 복사 기능이 정확하지 않은 것으로 보입니다."
    fi
else
    echo "출력 파일이 생성되지 않았습니다: 학생의 프로그램에 문제가 있을 수 있습니다."
fi
