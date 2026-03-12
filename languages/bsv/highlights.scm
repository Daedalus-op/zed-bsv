[
  "action" "actionvalue"
  "begin" "clocked_by" "default"
  "dependencies" "deriving" "determines"
  "end" "enum" "instance" "interface"
  "let" "match" "matches" "method" "module"
  "numeric" "package" "seq" "par" "parameter"
  "endaction" "endactionvalue" "endcase"
  "endinstance" "endinterface" "endmethod"
  "endmodule" "endpackage" "endseq" "endpar"
  "provisos" "reset_by" "rules" "endrules"
  "struct" "tagged" "type" "typeclass"
  "endtypeclass" "union"
] @keyword

[ "\"BDPI\"" ] @string

; @keyword.import
[ "import" "export" ] @keyword

; @keyword.definition
"typedef" @keyword

; @keyword.repeat
[ "while" "for" "continue" "break" ] @keyword

; @keyword.conditional
[ "if" "else" "case" ] @keyword

; @keyword.function
[ "function" "endfunction" "rule" "endrule" ] @keyword

; @keyword.return
"return" @keyword

; @type.builtin
[ "bit" "int" "Action" "ActionValue" "void" ] @type

; @boolean
[ "True" "False" ] @constant

[
  "+" "-" "!" "~" "&" "~&" "|" "~|"
  "^" "^~" "~^" "*" "/" "%" "<<" ">>"
  "<=" ">=" "<" ">" "==" "!=" "&&" "||"
  "=" "<-" "&&&"
] @operator

; @keyword.operator → @keyword
[ "matches" "valueOf" "valueof" "noAction" ] @keyword

"?" @constant

[ ";" ":" "," "::" ] @punctuation.delimiter
[ "(" ")" "[" "]" "{" "}" ] @punctuation.bracket

; @operator ternary
(condExpr [ "?" ":" ] @operator)

(typeIde) @type

(typeNat) @type

; Comments
(comment) @comment

(intLiteral) @number
(realLiteral) @number
(stringLiteral) @string

; @property stays as @property
(exprPrimary "." (identifier) @property)
(lValue "." (identifier) @property)

(exprPrimary (Identifier) @constant)

(structMember (identifier) @property)
(unionMember (Identifier) @property)

(structExpr (Identifier) @type)
(taggedUnionExpr . (Identifier) @type)
(taggedUnionPattern (Identifier) @type)

(memberBind . (identifier) @property)
(typedefEnum (Identifier) @type)
(typedefEnumElement (Identifier) @constant)
(attrName (identifier) @property)

; @parameter → @variable
(typeFormal (typeIde (identifier) @variable))
(moduleFormalParam (identifier) @variable)
(functionFormal (identifier) @variable)
(methodProtoFormal (identifier) @variable)
(methodFormal (identifier) @variable)

(subinterfaceDef . (Identifier) @type)
(typeclassIde) @type
(proviso (Identifier) @type)

(moduleProto (identifier) @type)
(moduleApp (identifier) @type)

(functionProto (identifier) @function)
(functionAssign (identifier) @function)

; @function.call → @function
(functionCall (exprPrimary (identifier) @function))
(systemTaskStmt (displayTaskName) @function)
(systemTaskStmt (dollarIdentifier) @function)
(systemFunctionCall) @function

(methodProto (identifier) @function)
(methodDef (identifier) @function)
