#!/bin/bash

count_files_in_folder() {
    folder="$1"
    file_count=0

    if [ -d "$folder" ]; then
        file_count=$(find "$folder" -maxdepth 1 -type f | wc -l)
    else
        echo "Error: $folder is not a valid directory."
    fi

    echo "$file_count"
}

run_tests() {
    local arg_folder="$1"
    local expect_folder="$2"
    local command_to_run="$3"

    all_passed=true
    passed_test_case=0
    total_test_case=$(count_files_in_folder "$arg_folder")

    if [ "$total_test_case" -gt 0 ]; then
        for arg_file in "$arg_folder"/*; do
            arg_filename=$(basename "$arg_file")
            expect_file="$expect_folder/$arg_filename"

            if [ -f "$expect_file" ]; then
                echo "Comparing $arg_filename"

                # Run the command with the contents of the argument file
                output=$("$command_to_run" "$(cat "$arg_file")")

                # Get the expected output from the expect output file
                expected_output=$(cat "$expect_file")

                # Compare the command's output with the expected output
                if [ "$output" = "$expected_output" ]; then
                    passed_test_case=$((passed_test_case + 1))
                    echo "   Test case $passed_test_case: Okay"
                else
                    echo "   Test case $((passed_test_case + 1)): Output does not match the expected output:"
                    echo "   Expected: "
                    echo "$expected_output"
                    echo "   Actual:   "
                    echo "$output"
                    all_passed=false
                    break
                fi
            else
                echo "Expect output file not found for $arg_filename"
                all_passed=false
            fi
        done

        if $all_passed; then
            echo "All test cases passed!"
            exit 0
        else
            echo "Some test cases did not pass."
            echo "Passed $passed_test_case out of $total_test_case test cases."
            exit 1
        fi
    else
        echo "No test cases found in $arg_folder."
        exit 1
    fi
}

# Call the function to run the tests
run_tests "./test/input-argument" "./test/expected-output" "./exql"
