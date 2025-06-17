#!/bin/bash
set -e

echo "📁 Starting extraction of all .tar.gz files..."

for file in *.tar.gz; do
    echo "📦 Extracting $file..."
    tar -xzvf "$file"
done

if ls var.tar.gz.part.* 1> /dev/null 2>&1; then
    echo "🧩 Reassembling split archive var.tar.gz.part.* ..."
    cat var.tar.gz.part.* > var_combined.tar.gz
    echo "📂 Extracting var_combined.tar.gz..."
    tar -xzvf var_combined.tar.gz
fi

echo "✅ All extractions complete!"