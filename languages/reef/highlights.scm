; @attribute	Captures attributes
(attribute
    name: (identifier) @attribute)

(attribute_definition
    name: (identifier) @attribute)

; @boolean	Captures boolean values
(bool) @boolean

; @comment	Captures comments

(comment) @comment

; @comment.doc	Captures documentation comments
; @constant	Captures constants

(static_member_access
    member_name: (identifier) @constant)

(object_initializer
    variant: (identifier) @constant)

(union_variant_pattern
    variant: (identifier) @constant)

(union_class_variant_pattern
    variant: (identifier) @constant)

(union_tuple_variant_pattern
    variant: (identifier) @constant)

; @constant.builtin	Captures built-in constants
(bool) @constant.builtin

; @constructor	Captures constructors
; @embedded	Captures embedded content
; @emphasis	Captures emphasized text
; @emphasis.strong	Captures strongly emphasized text
; @enum	Captures enumerations
(union_definition
    name: (identifier) @enum)

; @function	Captures functions
(function_definition
    name: (identifier) @function)


; @hint	Captures hints
; @keyword	Captures keywords
[
    "attribute"
    (todo)
    "use"
    "extern"
    "where"
    "union"
    "unboxed"
    "boxed"
    "grab"
    "mut"
    "while"
    "for"
    (break)
    (continue)
    "match"
    "matches"
    "new"
    "static"
    "class"
    "pub"
    "fn"
    "field"
    "var"
    "if"
    "else"
    "return"
] @keyword

; @label	Captures labels
; @link_text	Captures link text
; @link_uri	Captures link URIs
; @number	Captures numeric values
(int) @number

; @operator	Captures operators
[
    "-"
    "!"
    "+"
    "?"
    "-"
    "*"
    "/"
    ">"
    "<"
    "<="
    "++"
    "--"
    ">="
    "&&"
    "||"
    "="
    "=="
    "!="
] @operator

; @predictive	Captures predictive text
; @preproc	Captures preprocessor directives
; @primary	Captures primary elements
; @property	Captures properties
(class_definition
    (member_list
        (field
            name: (identifier) @property)))
(union_definition
    (member_list
        (class_variant
            (field name: (identifier) @property))))
(member_access
    member_name: (identifier) @property)

(field_initializer field_name: (identifier) @property)

(field_pattern field_name: (identifier) @property)

; @punctuation	Captures punctuation
; @punctuation.bracket	Captures brackets
[
    "["
    "]"
] @punctuation.bracket
[
    "("
    ")"
] @punctuation.bracket
[
    "{"
    "}"
] @punctuation.bracket
[
    "<"
    ">"
] @punctuation.bracket

; @punctuation.delimiter	Captures delimiters
[
    ";"
    "."
    ","
    "::"
    ":::"
] @punctuation.delimiter

; @punctuation.list_marker	Captures list markers
; @punctuation.special	Captures special punctuation
; @string	Captures string literals
(string) @string

; @string.escape	Captures escaped characters in strings
(escape_sequence) @string.escape

; @string.regex	Captures regular expressions
; @string.special	Captures special strings
; @string.special.symbol	Captures special symbols

; @tag	Captures tags
; @tag.doctype	Captures doctypes (e.g., in HTML)
; @text.literal	Captures literal text
; @title	Captures titles
; @type	Captures types

(named_type_identifier
    name: (identifier) @type)
(array_type_identifier) @type
(tuple_type_identifier) @type
(fn_type_identifier) @type
(type_parameter_list (identifier) @type)

(use_segment
    (identifier) @type .)

(class_definition
    name: (identifier) @type)
(union_definition
    name: (identifier) @type)

(type_constraint
    (identifier) @type)

; @type.builtin	Captures built-in types
(builtin_type_identifier
    (builtin_type_identifier_name) @type.builtin)

; @variable Captures variables
(variable_access name: (identifier) @variable)

(variable_declaration name: (identifier) @variable)

(variable_declaration_pattern variable_name: (identifier) @variable)

; @variable.special	Captures special variables
; @variable.parameter	Captures function/method parameters
(function_definition
    (parameter_list
        (parameter name: (identifier) @variable.parameter)))

; @variant	Captures variants
(union_definition
    (member_list
        (unit_variant
            name: (identifier) @variant)))
(union_definition
    (member_list
        (tuple_variant
            name: (identifier) @variant)))
(union_definition
    (member_list
        (class_variant
            name: (identifier) @variant)))

(method_call
    method: (variable_access
        name: (identifier) @function))
(method_call
    method: (member_access
        member_name: (identifier) @function))
(method_call
    method: (static_member_access
        member_name: (identifier) @function))
