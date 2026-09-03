#!/usr/bin/env bash
set -e

echo "=== mdBook loyihasini qurish boshlandi ==="
mdbook build

echo "=== gh-pages tarmog'iga yuklanmoqda ==="
TEMP_DIR=$(mktemp -d)
cp -a dist/. "$TEMP_DIR/"

git -C "$TEMP_DIR" init -b gh-pages
git -C "$TEMP_DIR" config user.name "$(git config user.name || echo 'muhiddin0')"
git -C "$TEMP_DIR" config user.email "$(git config user.email || echo 'kabraliev2005@gmail.com')"
git -C "$TEMP_DIR" add -A
git -C "$TEMP_DIR" commit -m "Deploy mdBook updates: $(date '+%Y-%m-%d %H:%M:%S')"
git -C "$TEMP_DIR" remote add origin https://github.com/Muhiddin0/foundation-cs50.git
git -C "$TEMP_DIR" push origin gh-pages -f

rm -rf "$TEMP_DIR"
echo "=== Muvaffaqiyatli yuklandi! Sayt: https://muhiddin0.github.io/foundation-cs50/ ==="
