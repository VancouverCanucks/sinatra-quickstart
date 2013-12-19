var jsFiles = [
  'public/js/vendor/bootstrap.min.js',
  'public/js/app/main.js'
];

module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    buildDir: 'public/js',
    
    banner: [''],
    
    concat: {
      js: {
        src: jsFiles,
        dest: '<%= buildDir %>/application.min.js'
      }
    },
    uglify: {
      my_target: {
        files: {
          '<%= buildDir %>/application.min.js': ['<%= buildDir %>/application.min.js']
        }
      },
      options: {
        mangle: false
      }
    }
  });
  
  grunt.registerTask('default', 'build');
  grunt.registerTask('build', ['build:js']);
  grunt.registerTask('build:js', ['concat:js', 'uglify']);
  
  grunt.loadNpmTasks('grunt-sed');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-concat');
}