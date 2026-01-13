; Inject HTML syntax highlighting into FreeMarker content
((content) @injection.content
 (#set! injection.language "html")
 (#set! injection.combined))
