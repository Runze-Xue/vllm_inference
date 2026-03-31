#!/bin/bash
curl -s http://127.0.0.1:8000/v1/models \
  -H "Authorization: Bearer change-this-token" | python -m json.tool