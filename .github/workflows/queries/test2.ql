/**
 * @description Find all files with extension "ts" or "tsx" that do not have any comments
 * @kind problem
 * @id javascript/files-without-comments
 * @problem.severity recommendation
 */

/*import javascript

predicate isJavaScriptOrTypeScriptFile(File file) {
  file.getExtension() = "ts" or file.getExtension() = "tsx"
}

predicate isLong(File file) {
  file.length > 10
}

from File file
where isJavaScriptOrTypeScriptFile(file) and 
      isLong(file)
select file, "Found big file: " + file.getAbsolutePath()*/
