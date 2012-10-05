{exec} = require 'child_process'

task 'compile', 'Compile Coffee source', ->
  exec 'coffee --compile --output build/ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'copy-images', 'Copy images', ->
  exec 'xcopy src\\public\\images build\\public\\images /Y /E /I', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'copy-stylesheets', 'Copy stylesheets', ->
  exec 'xcopy src\\public\\stylesheets build\\public\\stylesheets /Y /E /I', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'copy-views', 'Copy views', ->
  exec 'xcopy src\\views build\\views /Y /E /I', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'copy-assets', 'Copy assets', ->
    invoke 'copy-images'
    invoke 'copy-stylesheets'
    invoke 'copy-views'

task 'build', 'Build the project', ->
  invoke 'compile'
  invoke 'copy-assets'
