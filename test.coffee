#!/usr/bin/env coffee

fs = require 'fs'
titlegen = require './titlegen.coffee'

console.log '------------SNES!-----------'

snes = titlegen.create()
snes.feed(fs.readFileSync('./titles/games/snes.txt', 'utf-8').split('\n'))

i=0
while i < 20
  console.log snes.next()
  i += 1

console.log '\n-------------N64!-----------'

n64 = titlegen.create()
n64.feed(fs.readFileSync('./titles/games/n64.txt', 'utf-8').split('\n'))

i=0
while i < 20
  console.log n64.next()
  i += 1
