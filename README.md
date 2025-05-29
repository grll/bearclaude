# BearClaude

A minimalistic Docker image with Claude CLI pre-installed for containerized usage.

## Usage

Pull and run the image from Docker Hub:

```bash
docker run --rm -it graille/bearclaude
```

Usually more useful with mounting a folder with some code:

```bash
docker run --rm -it -v $(pwd):/workspace graille/bearclaude
```

Also possible to use with in non interactive mode, but you would need to mount `~/.claude/.credentials.json` on linux or bring those values from keychain MacOS into `/root/.claude/.credentials.json`

Assuming I am already logged in locally on linux:

```bash
docker run --rm -it -v $(pwd):/workspace graille/bearclaude -v ~/.claude/.credentials.json:/root/.claude/.credentials.json -p "say hello"
```

## Features

- Based on `node:slim` for minimal size
- Claude CLI v24.1.0 pre-installed
- Ready to use out of the box

## Examples

Run Claude with specific commands:

```bash
docker run --rm graille/bearclaude --help
docker run --rm graille/bearclaude --version
```

Mount your project directory:

```bash
docker run --rm -it -v $(pwd):/workspace -w /workspace graille/bearclaude
```

## Build Locally

```bash
git clone https://github.com/graille/bearclaude.git
cd bearclaude
docker build -t bearclaude .
```

## License

MIT