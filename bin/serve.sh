#!/usr/bin/env bash
# Local preview server. See bin/ruby32_liquid_compat.rb for why this needs
# RUBYOPT instead of a plain `bundle exec jekyll serve` on Ruby 3.2+.
set -euo pipefail
cd "$(dirname "$0")/.."
RUBYOPT="-r$(pwd)/bin/ruby32_liquid_compat.rb" bundle exec jekyll serve "$@"
