module.exports = (grunt) -> 
  grunt.initConfig
    ngtemplates:
      default:
        src: 'bootstrap-material/*.tpl.html'
        dest: 'bootstrap-material-select-ui.js'
        options:
          standalone: true
          module: 'flock.select2.themes'
    uglify:
      default:
        files: 
          'bootstrap-material-select-ui.min.js': ['bootstrap-material-select-ui.js']
      

  grunt.loadNpmTasks 'grunt-angular-templates'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ['ngtemplates:default', 'uglify:default']
