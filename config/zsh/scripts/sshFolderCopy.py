#!/usr/bin/python3
import os
import argparse

parser = argparse.ArgumentParser(description='Description of your program')
parser.add_argument("source-server")
parser.add_argument("source-folder")
parser.add_argument("target-server")
parser.add_argument("target-folder")
args = vars(parser.parse_args())

os.system(f"ssh {args['source-server']} 'cd {args['source-folder']} && ls -lah && tar -czvf file.tar.gz .'")
os.system(f"scp {args['source-server']}:{args['source-folder']}/file.tar.gz .")
os.system(f"ssh {args['source-server']} 'rm {args['source-folder']}/file.tar.gz'")
os.system(f"scp file.tar.gz {args['target-server']}:{args['target-folder']}/")
os.system(f"rm file.tar.gz")
os.system(f"ssh {args['target-server']} 'cd {args['target-folder']} && tar -xf file.tar.gz && rm file.tar.gz'")
