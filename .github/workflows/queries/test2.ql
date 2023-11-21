import javascript

predicate isJavaScriptOrTypeScriptFile(File file) {
  file.getExtension() = "ts" or file.getExtension() = "tsx"
}

predicate isLong(File file) {
  file.size() > 10
}

from File file
where isJavaScriptOrTypeScriptFile(file) and 
      isLong(file)
select file, "Found big file: " + file.getAbsolutePath()
