# Makefile for TSX project with Vite

# Use npm by default, change to yarn if you prefer
PACKAGE_MANAGER := npm

# Default target
.PHONY: all
all: install build

# Install dependencies
.PHONY: install
install:
	$(PACKAGE_MANAGER) install

# Start development server
.PHONY: dev
dev:
	$(PACKAGE_MANAGER) run dev

# Build for production
.PHONY: build
build:
	$(PACKAGE_MANAGER) run build

# Run tests (if you have any)
.PHONY: test
test:
	$(PACKAGE_MANAGER) test

# Clean build artifacts
.PHONY: clean
clean:
	rm -rf dist

# Lint your code (assuming you have a linting script in package.json)
.PHONY: lint
lint:
	$(PACKAGE_MANAGER) run lint

# Format your code (assuming you have a formatting script in package.json)
.PHONY: format
format:
	$(PACKAGE_MANAGER) run format

# Preview production build
.PHONY: preview
preview:
	$(PACKAGE_MANAGER) run preview

# Update dependencies
.PHONY: update
update:
	$(PACKAGE_MANAGER) update

# Check for outdated dependencies
.PHONY: outdated
outdated:
	$(PACKAGE_MANAGER) outdated

# Run type checking
.PHONY: typecheck
typecheck:
	$(PACKAGE_MANAGER) run typecheck

# Generate documentation (assuming you have a documentation generator configured)
.PHONY: docs
docs:
	$(PACKAGE_MANAGER) run docs

# Run all checks (lint, typecheck, test)
.PHONY: check
check: lint typecheck test

# Help command to list available targets
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  install   - Install dependencies"
	@echo "  dev       - Start development server"
	@echo "  build     - Build for production"
	@echo "  test      - Run tests"
	@echo "  clean     - Remove build artifacts"
	@echo "  lint      - Lint the code"
	@echo "  format    - Format the code"
	@echo "  preview   - Preview production build"
	@echo "  update    - Update dependencies"
	@echo "  outdated  - Check for outdated dependencies"
	@echo "  typecheck - Run type checking"
	@echo "  docs      - Generate documentation"
	@echo "  check     - Run all checks (lint, typecheck, test)"
	@echo "  help      - Show this help message"

# Default target when just running 'make'
.DEFAULT_GOAL := help
