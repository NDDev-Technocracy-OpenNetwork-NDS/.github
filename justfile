set shell := ["bash", "-euo", "pipefail", "-c"]

# Lists the commands.
default:
    @just --list

# Checks the command source and the profile/document local links without a build.
check:
    just --fmt --check
    lychee --offline --no-progress README.md AGENTS.md profile/README.md

# Runs the full validation.
verify: check
