# impulse-skeleton

Welcome to **impulse-skeleton**! This is a starter template for creating your own schema using the impulse-reforged framework.

## What is a Schema?

A **schema** is essentially your custom gamemode built on top of the impulse-reforged framework. Think of it this way:
- **Garry's Mod** provides the base game (sandbox)
- **impulse-reforged** provides the framework (inventory, characters, economy, etc.)
- **Your schema** provides the unique gameplay, items, teams, and features

## Quick Start

### 1. Installation
1. Make sure impulse-reforged is installed in your gamemodes folder
2. Copy this impulse-skeleton folder to your gamemodes folder
3. Rename it to your schema name (e.g., `impulse-myrp`, `impulse-citylife`)
4. Set your server's gamemode to your new schema name, e.g., `impulse-myrp`

### 2. Understanding the Structure

```
impulse-skeleton/
├── schema/               # Your schema's core files
│   ├── sh_schema.lua    # Basic schema information
│   ├── config/          # Configuration files
│   │   └── maps/        # Per-map configurations
│   ├── items/           # Item definitions
│   ├── teams/           # Team/class definitions
│   ├── vendors/         # NPC vendors
│   ├── buyables/        # Items that can be bought
│   ├── benches/         # Crafting benches
│   ├── mixtures/        # Crafting recipes
│   └── scripts/         # Custom scripts
│       ├── hooks/       # Hook implementations
│       ├── meta/        # Meta table extensions
│       └── vgui/        # Custom UI elements
├── plugins/             # Schema-specific plugins
├── entities/            # Custom entities
│   ├── entities/        # Scripted entities
│   ├── weapons/         # Custom weapons
│   └── effects/         # Visual effects
├── content/             # Content files (materials, models, sounds)
│   ├── materials/       # Textures and materials
│   ├── models/          # 3D models
│   └── sound/           # Sound files
└── README.md           # This file!
```

### 3. Content Directory Tips

The `content/` directory is special! You can use it to:
- **Separate content** from other gamemodes for easier management
- **Upload to Workshop** using gmpublisher or crowbar
- **Update content** independently without touching code
- Keep your schema organized by separating code from assets

**Pro tip**: Create a separate addon for your content and use the content folder as your working directory for gmpublisher/crowbar!

## Examples Included

This skeleton includes working examples of:
- Basic items (consumables, weapons, wearables)
- Team/faction system
- Simple plugin structure
- Vendor setup
- Crafting bench and recipes
- Custom entities
- Map-specific configurations

## Starting Your Schema

1. Edit `schema/sh_schema.lua` to set your schema's name and info
2. Configure `schema/config/sh_config.lua` for your server settings
3. Create your first item in `schema/items/` using the examples
4. Set up your teams in `schema/teams/`
5. Add custom features in `plugins/`

**Remember**: Start small! Get basic items and teams working before adding complex features.

## MIT License

Copyright (c) 2025 Riggs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
