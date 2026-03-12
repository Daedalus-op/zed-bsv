(moduleDef
  (moduleProto "module" @context (identifier) @name)
) @item

(functionDef
  (functionProto "function" @context (identifier) @name)
) @item

(methodDef
  "method" @context (identifier) @name
) @item

(rule
  "rule" @context (identifier) @name
) @item

(interfaceDecl
  "interface" @context (typeDefType (typeIde (Identifier) @name))
) @item

(typeDef
  (typedefSynonym
    "typedef" @context
    (typeDefType (typeIde (Identifier) @name))
  )
) @item

(typeDef
  (typedefStruct
    "struct" @context
    (typeDefType (typeIde (Identifier) @name))
  )
) @item

(typeDef
  (typedefEnum
    "enum" @context
    (Identifier) @name
  )
) @item
