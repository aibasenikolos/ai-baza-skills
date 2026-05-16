# ИИ БАЗА — Skills для Claude Code

Два пользовательских скилла для Claude Code, заточенных под русскоязычного соло-фаундера и новичка через вайбкодинг.

## Что внутри

### `saas-validator-deep`
Автономный агент глубокой валидации SaaS-идей через Exa MCP. Юзер отвечает на 5 вопросов профиля — скилл сам циклится через анализ конкурентов, болей клиентов и юнит-экономики до 80% уверенности или честного `NOT_FOUND` отчёта. До 300 Exa-запросов на сессию. Цель — bootstrap-идеи с потенциалом ₽1М+ MRR для соло-фаундера, НЕ единороги.

**Используй когда:** ищешь SaaS-идею, проверяешь нишу, валидируешь продукт, ищешь что запилить.

### `project-planner`
Создаёт боевой `plan.md` для SaaS-проекта на 1-2 страницы. Берёт данные из ВЕРДИКТА `saas-validator-deep` если есть, добавляет дизайн-референсы, visual hook, onboarding до aha moment, retention механику, метрики, юр/тех риски, контрольную точку через 30 дней. Один файл, 19 секций, готовый план для старта разработки.

**Используй когда:** есть идея и нужен план для старта разработки, после валидации идеи, нужен ресёрч конкурентов и маркетинговых приёмов под нишу.

## Pipeline

```
[твоя идея] → saas-validator-deep → ВЕРДИКТ.md → project-planner → plan.md → Claude Code → SaaS
```

## Установка

### Одной командой

```bash
curl -fsSL https://raw.githubusercontent.com/aibasenikolos/ai-baza-skills/main/install.sh | bash
```

### Вручную

```bash
git clone https://github.com/aibasenikolos/ai-baza-skills.git
cp -r ai-baza-skills/saas-validator-deep ~/.claude/skills/
cp -r ai-baza-skills/project-planner ~/.claude/skills/
```

## Требования

- Claude Code (любая актуальная версия)
- Exa MCP для `saas-validator-deep` — [github.com/exa-labs/exa-mcp-server](https://github.com/exa-labs/exa-mcp-server)

## Использование

После установки скиллы активируются автоматически по описанию — просто опиши задачу:

- «Найди мне рабочую SaaS-идею для русского рынка» → запустится `saas-validator-deep`
- «Спланируй продукт на основе моей идеи» → запустится `project-planner`

## Лицензия

MIT — делайте что хотите, ссылка на источник приветствуется.

## Автор

[ИИ БАЗА](https://t.me/ai_base1) — закрытый Telegram-канал с видеоуроками по ИИ и вайбкодингу.
