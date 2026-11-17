#!/usr/bin/env bash
# Trích gọn spec theo mã. Sửa SPEC_DIR và định dạng mã cho dự án.
# shortcut: grep thô, nâng cấp thành script parse spec có cấu trúc khi spec > vài trăm KB.
set -eu
SPEC_DIR="${SPEC_DIR:-docs/specs}"
[ $# -ge 1 ] || { echo "usage: brief.sh <mã|--find 'cụm từ'>"; exit 1; }
if [ "$1" = "--find" ]; then grep -rniF -- "$2" "$SPEC_DIR" | head -30; exit; fi
grep -rn -B2 -A12 -- "$1" "$SPEC_DIR" | head -120
