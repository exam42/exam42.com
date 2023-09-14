#!/bin/bash

# Check if correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 TITLE LINK URL"
    exit 1
fi

TITLE=$1
COLLEGE_CODE=$2
EXAM_URL=$3

# Create a unique filename for each college based on its title
mkdir $COLLEGE_CODE
OUTPUT_FILE="$COLLEGE_CODE/index.html"

# Use sed to replace placeholders with actual values
sed -e "s|{{TITLE}}|$TITLE|g" \
    -e "s|{{COLLEGE_CODE}}|$COLLEGE_CODE|g" \
    -e "s|{{EXAM_URL}}|$EXAM_URL|g" template.html > "$OUTPUT_FILE"

echo "File created: $OUTPUT_FILE"
