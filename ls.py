#!/usr/bin/env python
import json
from sys import stdin
from glob import glob
import tempfile

def main(pattern):
    
    files = sorted([file for file in glob(pattern)])
    return json.dumps(dict(files=json.dumps(files)))

args = json.loads(stdin.read())
print(
    main(args.get('pattern'))
)