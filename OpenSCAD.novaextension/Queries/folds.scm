;; Block folding
(block) @fold

;; Module declarations
(module_declaration
  body: (block) @fold)

;; Function declarations
(function_declaration
  body: (_) @fold)

;; Control structures
(if_statement
  consequence: (block) @fold
  alternative: (block)? @fold)

(for_statement
  body: (block) @fold)

;; CSG operations
(union_operation
  body: (block) @fold)

(difference_operation
  body: (block) @fold)

(intersection_operation
  body: (block) @fold)

;; Comment blocks
(comment) @fold