#!/usr/bin/env bash
# Installer for ai-baza-skills (Claude Code skills)
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/aibasenikolos/ai-baza-skills/main/install.sh | bash
#
# What it does:
#   - clones the repo to a temp dir
#   - copies saas-validator-deep and project-planner into ~/.claude/skills/
#   - cleans up

set -e

REPO_URL="https://github.com/aibasenikolos/ai-baza-skills.git"
SKILLS_DIR="$HOME/.claude/skills"
TMP_DIR="$(mktemp -d)"

echo ""
echo "ИИ БАЗА — установка скиллов для Claude Code"
echo "============================================="
echo ""

if [ ! -d "$SKILLS_DIR" ]; then
    echo "Создаю $SKILLS_DIR"
    mkdir -p "$SKILLS_DIR"
fi

echo "Клонирую репозиторий..."
git clone --depth 1 "$REPO_URL" "$TMP_DIR/repo"

for skill in saas-validator-deep project-planner; do
    SRC="$TMP_DIR/repo/$skill"
    DST="$SKILLS_DIR/$skill"

    if [ -d "$DST" ]; then
        echo "  - $skill уже установлен, обновляю"
        rm -rf "$DST"
    else
        echo "  - устанавливаю $skill"
    fi

    cp -r "$SRC" "$DST"
done

rm -rf "$TMP_DIR"

echo ""
echo "Готово. Скиллы установлены:"
echo "  - $SKILLS_DIR/saas-validator-deep"
echo "  - $SKILLS_DIR/project-planner"
echo ""
echo "Перезапусти Claude Code, чтобы скиллы подхватились."
echo ""
