# 🚀 Go Template

[![Go Version](https://img.shields.io/github/go-mod/go-version/TheRealZurvan/go-template)](https://golang.org/doc/devel/release.html)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Go Report Card](https://goreportcard.com/badge/github.com/TheRealZurvan/go-template)](https://goreportcard.com/report/github.com/TheRealZurvan/go-template)
[![mise](https://img.shields.io/badge/mise-managed-blue.svg)](https://mise.jdx.dev)
[![lefthook](https://img.shields.io/badge/lefthook-enabled-green.svg)](https://github.com/evilmartians/lefthook)
[![golangci-lint](https://img.shields.io/badge/golangci--lint-enabled-brightgreen.svg)](https://golangci-lint.run/)
[![act](https://img.shields.io/badge/act-CI_simulation-blueviolet.svg)](https://github.com/nektos/act)

This is a modern GitHub template repository for Go projects. Use this template to create a new Go application with a
standardized structure, automated tooling, and best practices built-in.

## ✨ Features

- ⚡ **High Performance**: Optimized build configuration with cross-compilation support and size optimization flags.
- 🐹 **Go**: Modern Go version with module support and following Effective Go guidelines.
- 🔧 **Modern Tooling**: Pre-configured with **mise** for tool and task management, **golangci-lint** for code quality, *
  *Lefthook** for Git hooks, and **act** for local CI simulation.
- 📁 **Structured**: Adopts the [Standard Go Project Layout](https://github.com/golang-standards/project-layout) for a
  clean and organized codebase.

## 🚀 Quick Start

### Prerequisites

- [mise](https://mise.jdx.dev) - A multi-language version manager and task runner.
- [Go](https://golang.org/dl/) - Programming language (managed by mise).
- [act](https://github.com/nektos/act) - Run your GitHub Actions locally.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/TheRealZurvan/go-template.git
   cd go-template
   ```

2. **Setup environment**:
   ```bash
   # Install all required tools using mise
   mise install
   
   # Set up the project (download dependencies and install git hooks)
   mise run setup
   ```

## 🏃‍♂️ Usage

Instructions on how to run the project.

```bash
# Run the application directly (development)
mise run run

# Build and run the production binary
mise run build
./bin/app
```

## 🛠️ Development

### Available Scripts

| Script            | Description                                 |
|-------------------|---------------------------------------------|
| `mise run setup`  | Set up the project dependencies             |
| `mise run clean`  | Clean build artifacts                       |
| `mise run format` | Format the code and auto-fix linting issues |
| `mise run lint`   | Run linter (golangci-lint)                  |
| `mise run test`   | Run tests                                   |
| `mise run build`  | Build the project                           |
| `mise run run`    | Run the application                         |
| `mise run act`    | Simulate CI locally with act                |

### 🧹 Code Quality

We use **golangci-lint** for linting and formatting with 40+ linters:

```bash
# Check for linting issues
mise run lint

# Auto-fix linting issues and format code
mise run format
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
├── scripts/            # Helper scripts
├── bin/                # Built binaries (created by build)
├── .github/            # GitHub Actions and act configuration
├── mise.toml           # Mise configuration
└── README.md           # You are here! 📍
```

## ⚙️ Configuration

| File               | Purpose               | Key Features                                  |
|--------------------|-----------------------|-----------------------------------------------|
| **mise.toml**      | Mise task runner      | Task definitions, environment variables       |
| **.lefthook.yml**  | Git hooks             | Pre-commit linting, automated quality checks  |
| **.golangci.yml**  | Linting configuration | 40+ linters, formatting rules, quality checks |
| **go.mod**         | Go module definition  | Module path, Go version requirements          |
| **.tool-versions** | Tool version manager  | Consistent versions for mise                  |

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
- [mise](https://mise.jdx.dev/) for tool and task management
- [Lefthook](https://github.com/evilmartians/lefthook) for fast and reliable Git hooks
- [act](https://github.com/nektos/act) for local CI simulation

---

**Happy coding! 🎉** If you find this template useful, please give it a ⭐️
