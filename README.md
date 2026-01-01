# 🚀 Go Template

[![Go Version](https://img.shields.io/badge/Go-1.24.5-blue.svg)](https://golang.org/doc/devel/release.html)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Go Report Card](https://goreportcard.com/badge/github.com/TheRealZurvan/go-template)](https://goreportcard.com/report/github.com/TheRealZurvan/go-template)
[![moonrepo](https://img.shields.io/badge/moonrepo-managed-blue.svg)](https://moonrepo.dev)
[![lefthook](https://img.shields.io/badge/lefthook-enabled-green.svg)](https://github.com/evilmartians/lefthook)
[![golangci-lint](https://img.shields.io/badge/golangci--lint-enabled-brightgreen.svg)](https://golangci-lint.run/)

This is a modern GitHub template repository for Go projects. Use this template to create a new Go application with a standardized structure, automated tooling, and best practices built-in.

## ✨ Features

- ⚡ **High Performance**: Optimized build configuration with cross-compilation support and size optimization flags.
- 🐹 **Go 1.24.5**: Latest stable Go version with module support and following Effective Go guidelines.
- 🔧 **Modern Tooling**: Pre-configured with **Moonrepo** for build system, **golangci-lint** for code quality, and **Lefthook** for Git hooks.
- 📁 **Structured**: Adopts the [Standard Go Project Layout](https://github.com/golang-standards/project-layout) for a clean and organized codebase.

## 🚀 Quick Start

### Prerequisites

- [proto](https://moonrepo.dev/proto) - A multi-language version manager that will manage all required tools.
- [Go](https://golang.org/dl/) - Programming language (managed by proto).
- [Moonrepo](https://moonrepo.dev/) - Build system (managed by proto).

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/TheRealZurvan/go-template.git
   cd go-template
   ```

2. **Setup environment**:
   ```bash
   # Install all required tools using proto
   proto install
   
   # Set up the project (download dependencies and install git hooks)
   moon :setup
   ```

## 🏃‍♂️ Usage

Instructions on how to run the project.

```bash
# Run the application directly (development)
moon :run

# Build and run the production binary
moon :build
./bin/app
```

## 🛠️ Development

### Available Scripts

| Script | Description |
|--------|-------------|
| `moon :setup` | Set up the project dependencies |
| `moon :clean` | Clean build artifacts |
| `moon :format` | Format the code and auto-fix linting issues |
| `moon :lint` | Run linter (golangci-lint) |
| `moon :test` | Run tests |
| `moon :build` | Build the project |
| `moon :run` | Run the application |

### 🧹 Code Quality

We use **golangci-lint** for linting and formatting with 40+ linters:

```bash
# Check for linting issues
moon :lint

# Auto-fix linting issues and format code
moon :format
```

### 🪝 Git Hooks & Conventional Commits

This project uses **Lefthook** for Git hooks and follows **Conventional Commits**.

- **Pre-commit**: Formats code and runs golangci-lint.
- **Commit-msg**: Validates commit message format.
- **Pre-push**: Final lint and test checks.

#### Conventional Commits Example:
```bash
# ✅ Valid commit messages
git commit -m "feat: add user authentication"
git commit -m "fix: resolve memory leak"
```

## 📁 Project Structure

```
.
├── cmd/                # Application entry points
│   └── app/            # Main application
├── internal/           # Private code (business logic, config)
├── configs/            # Configuration files (golangci-lint)
├── scripts/            # Helper scripts
├── bin/                # Built binaries (created by build)
├── .moon/              # Moonrepo configuration
└── README.md           # You are here! 📍
```

## ⚙️ Configuration

| File | Purpose | Key Features |
|------|---------|--------------|
| **moon.yml** | Moonrepo build system | Task definitions, caching, optimized builds |
| **.lefthook.yml** | Git hooks | Pre-commit linting, automated quality checks |
| **.prototools** | Tool version manager | Consistent versions across environments |
| **configs/golangci.yml** | Linting configuration | 40+ linters, formatting rules, quality checks |
| **go.mod** | Go module definition | Module path, Go version requirements |

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the project
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (**Conventional Commits**)
4. Push to the branch
5. Open a Pull Request

## 🔒 Security

Please see [SECURITY.md](SECURITY.md) for our security policy and how to report security vulnerabilities.

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Go](https://golang.org/) for the amazing programming language
- [golangci-lint](https://golangci-lint.run/) for comprehensive code quality checks
- [Moonrepo](https://moonrepo.dev/) for consistent build tooling and task management
- [Lefthook](https://github.com/evilmartians/lefthook) for fast and reliable Git hooks

---

**Happy coding! 🎉** If you find this template useful, please give it a ⭐️
