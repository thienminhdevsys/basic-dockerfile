## Project: Basic Dockerfile

- **Source:** roadmap.sh
- **Phase:** Phase 3 — DevOps Foundation
- **Goal:** Tạo Dockerfile cơ bản, hiểu image/container lifecycle
- **Status:** Done
- **Key files:** Dockerfile

## What I built
A basic Dockerfile using alpine:latest that prints "Hello, [NAME]!"
Supports passing a custom name via build argument.

## Usage
# Default (prints "Hello, Captain!")
docker build -t hello-captain .
docker run hello-captain

# Custom name
docker build --build-arg NAME="Minh" -t hello-captain .
docker run hello-captain

## Learned
- Dockerfile syntax: FROM, RUN, CMD, ARG, ENV
- Shell form vs Exec form — why exec form is recommended
- ARG vs ENV — ARG dies after build, ENV persists in container
- How to pass build-time variables with --build-arg
- docker build / docker run / docker rmi / docker image prune

## Blockers
- RUN vs CMD confusion — fixed after understanding build vs runtime
- ARG not expanding in exec form — fixed by adding ENV
