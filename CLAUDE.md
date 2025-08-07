# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a database documentation project that implements "docs as code" approach using Docker, tbls, Liam ERD, and VitePress. The system automatically generates database documentation from a MySQL database schema and provides both tabular documentation and ER diagrams through a web interface.

## Key Components

- **Database**: MySQL database with Flyway migrations in `sql/migration/`
- **Documentation Generation**: tbls for schema documentation, Liam ERD for ER diagrams
- **Static Site**: VitePress for serving documentation website
- **Docker**: Containerized database and tbls execution
- **Git Hooks**: Lefthook for pre-commit formatting and schema generation

## Essential Commands

### Database Operations
```bash
# Start database container
pnpm db:serve

# Stop and remove database with volumes
pnpm db:down

# Rebuild database from scratch
pnpm db:rebuild

# Generate schema documentation using tbls
pnpm db:schema
```

### Documentation
```bash
# Start VitePress development server
pnpm docs:dev

# Build documentation site
pnpm docs:build

# Preview built documentation
pnpm docs:preview

# Generate ER diagram from schema
pnpm er:build

# Serve ER diagram locally
pnpm er:serve
```

### Code Formatting
```bash
# Format all SQL files using sql-formatter
pnpm sql:fix
```

## Architecture

### Database Schema Management
- Migration files in `sql/migration/` follow Flyway naming conventions
- DDL files: `V{version}__{description}.sql` for versioned migrations  
- DML files: Data seeding organized by environment (`local/`, `stg/`, `prd/`)
- Views: `R__views.sql` as repeatable migrations

### Documentation Pipeline
1. Database schema → tbls → generates markdown docs in `docs/schema/`
2. Schema JSON → Liam ERD → generates ER diagrams in `docs/out/`
3. VitePress builds static site from docs/ directory

### Configuration Files
- `.tbls.yml`: tbls configuration for schema documentation generation
- `.sql-formatter.json`: SQL formatting rules (MySQL dialect, uppercase keywords)
- `lefthook.yml`: Git hooks for SQL formatting and schema regeneration
- `.vitepress/config.ts`: VitePress site configuration

## Development Workflow

1. Make database schema changes in `sql/migration/`
2. Run `pnpm sql:fix` to format SQL (or let git hooks handle it)
3. Run `pnpm db:rebuild` to apply migrations
4. Run `pnpm db:schema` to regenerate documentation
5. Run `pnpm er:build` to update ER diagrams
6. Use `pnpm docs:dev` to preview changes

## Important Notes

- The database runs on port 3306 with credentials: `user:Password@db:3306/sample_rdb`
- Schema documentation is generated in Japanese (see dict section in .tbls.yml)
- Pre-commit hooks automatically format SQL and rebuild documentation
- ER diagrams show relationships up to distance 2 between tables
- Excel schema export available in `excel/schema.xlsx`