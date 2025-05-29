# BearClaude

A minimalistic Docker image with Claude CLI pre-installed for containerized usage.

## Usage

Pull and run the image from Docker Hub:

```bash
docker run --rm -it grll/bearclaude
```

## Features

- Based on `node:slim` for minimal size
- Claude CLI v24.1.0 pre-installed
- Ready to use out of the box

## Examples

Run Claude with specific commands:

```bash
docker run --rm grll/bearclaude --help
docker run --rm grll/bearclaude --version
```

Mount your project directory:

```bash
docker run --rm -v $(pwd):/workspace -w /workspace grll/bearclaude
```

## Build Locally

```bash
git clone https://github.com/grll/bearclaude.git
cd bearclaude
docker build -t bearclaude .
```

## License

MIT