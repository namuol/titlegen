#!/usr/bin/env coffee

fs = require 'fs'
titlegen = require './titlegen.coffee'

titlegen.feed(fs.readFileSync('./titles/games/snes.txt', 'utf-8').split('\n'))

console.log titlegen()
console.log titlegen()
console.log titlegen()
console.log titlegen()
console.log titlegen()
console.log titlegen()
console.log titlegen()