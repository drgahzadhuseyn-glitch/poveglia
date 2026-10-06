#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

rename_if_exists() {
  local from="$1"
  local to="$2"

  if [ -f "$from" ] && [ ! -f "$to" ]; then
    mv "$from" "$to"
    echo "Renamed: $from -> $to"
  elif [ -f "$from" ] && [ -f "$to" ]; then
    echo "Skipped: $from -> $to (target already exists)"
  else
    echo "Missing: $from"
  fi
}

rename_if_exists "assets/chapter-1.png" "assets/chapter-01.png"
rename_if_exists "assets/chapter-2.png" "assets/chapter-02.png"
rename_if_exists "assets/chapter-3.png" "assets/chapter-03.png"
rename_if_exists "assets/chapter-4.png" "assets/chapter-04.png"
rename_if_exists "assets/chapter-5.png" "assets/chapter-05.png"
rename_if_exists "assets/chapter-6.png" "assets/chapter-06.png"
rename_if_exists "assets/chapter-7.png" "assets/chapter-07.png"
rename_if_exists "assets/chapter-8.png" "assets/chapter-08.png"
rename_if_exists "assets/chapter-9.png" "assets/chapter-09.png"
rename_if_exists "assets/chapter-10.png" "assets/chapter-10.png"
rename_if_exists "assets/chapter-11.png" "assets/chapter-11.png"

printf '\nFinal files:\n'
ls assets | sort
