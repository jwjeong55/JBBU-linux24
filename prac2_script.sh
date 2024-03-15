if [ -d "dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10" ]; then
    echo "Directory structure '/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10' exists."

    # 2) example.txt 파일 확인
    if [ -f "dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/example.txt" ]; then
        echo "File 'example.txt' exists under '/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8'."

        # 3) hw2.txt 파일 확인
        if [ -f "dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10/hw2.txt" ]; then
            echo "File 'hw2.txt' exists under '/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10'."
            echo "practice#2 success - !"
        else
            echo "File 'hw2.txt' does not exist under '/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10'."
        fi
    else
        echo "File 'example.txt' does not exist under '/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8'."
    fi
else
    echo "Directory structure '/dir1/dir2/dir3/dir4/dir5/dir6/dir7/dir8/dir9/dir10' does not exist."
fi
