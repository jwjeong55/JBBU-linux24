
filename="practice#1"
search_str="hello linux class"

# 파일이 존재하는지 확인
if [ -f "$filename" ]; then
    # 파일 내용 읽기
    content=$(<"$filename")

    # 파일 내용에서 문자열 검색
    if [[ $content == *"$search_str"* ]]; then
        echo "Practice #1 - success"
    else
        echo "'$search_str' not found in the file."
    fi
else
    echo "File not found."
fi