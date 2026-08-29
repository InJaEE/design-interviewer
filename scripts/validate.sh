#!/bin/sh
set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
skill_validator=/Users/user/.codex/skills/.system/skill-creator/scripts/quick_validate.py

for skill_dir in "$repo_dir"/skills/*; do
  python3 "$skill_validator" "$skill_dir"
done

ruby -e '
  require "yaml"
  root = ARGV.fetch(0)
  patterns = %w[interviewers rubric templates evals].map { |dir| File.join(root, dir, "**", "*.yaml") }
  Dir[*patterns].sort.each do |file|
    YAML.load_file(file)
    puts "valid #{file.delete_prefix(root + "/")}" 
  end
' "$repo_dir"

git -C "$repo_dir" check-ignore -q .interview-data/candidates/example/state.yaml
git -C "$repo_dir" diff --check

echo "Harness validation passed."
