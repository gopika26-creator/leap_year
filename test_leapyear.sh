#!/bin/bash

echo "=========================================="
echo "   Compiling Java Program..."
echo "=========================================="
javac leapyear.java

if [ $? -ne 0 ]; then
    echo "Compilation failed!"
    exit 1
fi

echo "Running Test Cases..."
echo ""

TEST_YEARS=(2000 1900 2024 2023)
EXPECTED=(
    "2000 is a Leap Year"
    "1900 is NOT a Leap Year"
    "2024 is a Leap Year"
    "2023 is NOT a Leap Year"
)

PASSED=0
TOTAL=${#TEST_YEARS[@]}

for i in "${!TEST_YEARS[@]}"; do
    YEAR="${TEST_YEARS[$i]}"
    EXPECT="${EXPECTED[$i]}"
    
    OUTPUT=$(java LeapYear "$YEAR")
    
    if [ "$OUTPUT" == "$EXPECT" ]; then
        echo "[PASS] Year $YEAR -> $OUTPUT"
        PASSED=$((PASSED + 1))
    else
        echo "[FAIL] Year $YEAR -> Got: '$OUTPUT', Expected: '$EXPECT'"
    fi
done

echo ""
echo "=========================================="
echo " Test Summary: $PASSED / $TOTAL passed"
echo "=========================================="
