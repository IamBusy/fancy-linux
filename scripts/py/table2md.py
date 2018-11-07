#!/usr/bin/env python
# encoding: utf-8


"""
@author: william
@contact: 1342247033@qq.com
@site: http://www.xiaolewei.com
@file: manager.py
@time: 11/07/2018 14:03
"""
import sys


if __name__ == '__main__':
    lines = []
    res = []
    for line in sys.stdin:
        line = line.strip()
        if len(line) == 0:
            continue
        res.append('|' + line.replace('	', '|') + '|')
        if len(res) == 1:
            header = res[0]
            tbh = '|'
            for field in line.split('	'):
                tbh += '------|'
            res.append(tbh)

    for line in res:
        print(line)
