#!/bin/bash
set -ex

# Run from project root
# - Args get passed to pytest phase
# Non-zero exit code on fail

# Assume minimal env (pandas); no extras (neo4j, gremlin, ...)

python -m pytest --version

python -B -m pytest -vv \
    cu_cat/tests/test_gap_encoder.py \
    cu_cat/tests/test_table_vectorizer.py \
