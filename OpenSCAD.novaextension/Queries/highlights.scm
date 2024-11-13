;; Keywords
[
  "module"
  "function"
  "if"
  "else"
  "for"
  "intersection_for"
  "let"
] @keyword

;; Operators
[
  "union"
  "difference"
  "intersection"
  "render"
] @operator

;; Special modifiers
(modifier_character) @operator.special

;; Primitives
(primitive_call
  function: [
    "cube"
    "sphere"
    "cylinder"
    "polyhedron"
    "circle"
    "square"
    "polygon"
    "text"
  ] @function.builtin)

;; Transformations
(transform_call
  function: [
    "translate"
    "rotate"
    "scale"
    "resize"
    "mirror"
    "multmatrix"
    "color"
    "offset"
    "minkowski"
    "hull"
  ] @function.builtin)

;; Other built-in functions
(function_call
  function: [
    "linear_extrude"
    "rotate_extrude"
    "surface"
    "projection"
    "import"
    "include"
    "use"
    "echo"
  ] @function.builtin)

;; Math functions
(function_call
  function: [
    "abs" "sin" "cos" "tan"
    "asin" "acos" "atan" "atan2"
    "pow" "sqrt" "exp" "len"
    "log" "ln" "str" "min"
    "max" "ceil" "floor" "round"
    "lookup"
  ] @function.builtin)

;; Constants
[
  "true"
  "false"
  "undef"
] @constant.builtin

;; Special variables
((identifier) @constant.builtin
 (#match? @constant.builtin "^\\$"))

;; Strings
(string) @string

;; Numbers
(number) @constant.numeric

;; Comments
(comment) @comment

;; Function definitions
(module_declaration
  name: (identifier) @function)
(function_declaration
  name: (identifier) @function)

;; Parameters
(parameter
  name: (identifier) @parameter)