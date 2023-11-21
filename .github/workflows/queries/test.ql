/**
 * @description Find all files with extension "ts" or "tsx" that do not have any comments
 * @kind problem
 * @id javascript/files-without-comments
 * @problem.severity recommendation
 */

import javascript

predicate isJavaScriptOrTypeScriptFile(File file) {
  file.getExtension() = "ts" or file.getExtension() = "tsx"
}

predicate containsComments(File file) {
  exists(Comment comment | comment.getFile() = file)
}

from File file
where isJavaScriptOrTypeScriptFile(file) and 
      containsComments(file)
select file, "Found file with comments: " + file.getAbsolutePath()
