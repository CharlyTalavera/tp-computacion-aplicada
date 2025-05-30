!#/bin/bash

# Ignoramos /proc/kcore, caso contrario al intentar comprimir demora mucho tiempo
tar --exclude=/proc/kcore czf proc.tar.gz /proc
tar czf etc.tar.gz /etc
tar czf opt.tar.gz /opt
tar czf root.tar.gz /root
tar czf - /var/ | split -b 49M - var.tar.gz.part.
