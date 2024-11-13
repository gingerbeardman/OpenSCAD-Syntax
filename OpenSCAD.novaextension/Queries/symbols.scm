;; Modules
(module_declaration
  name: (identifier) @name
  body: (block) @subtree) @module

;; Functions
(function_declaration
  name: (identifier) @name) @function

;; Variables
(assignment
  name: (identifier) @name) @variable