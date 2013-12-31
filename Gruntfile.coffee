module.exports = (grunt) ->
  config =
    pkg: grunt.file.readJSON 'package.json'
    
    coffee:
      compile:
        files:
          'titlegen.js': 'titlegen.coffee'

  grunt.initConfig config

  grunt.loadNpmTasks 'grunt-contrib-coffee'

  grunt.registerTask 'default', ['coffee']
