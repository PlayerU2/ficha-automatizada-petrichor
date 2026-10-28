-- SDK3 compartilha o ambiente do modulo entre formularios. O estado e as
-- funcoes de personagem precisam pertencer a UMA instancia, inclusive nos
-- callbacks XML que o rdk declara depois do bloco <script>.
local Contexto = {}

function Contexto.novo(ambiente, formulario)
    local escopo = setmetatable({}, {__index = ambiente})
    rawset(formulario, "petrichorContexto", escopo)
    return escopo
end

-- Um item pode ser criado antes de ganhar pai. Resolva o dono na chamada,
-- pela arvore de controles, em vez de guardar a ultima ficha aberta ou um
-- registro global de personagens. O SDK usa wrappers de controle em tabela
-- e getParent() (sdk/rrpgGUI.lua, busca de controles a partir da referencia).
function Contexto.doItem(ambiente, item)
    return setmetatable({}, {__index = function(_, chave)
        local controle = item
        while controle ~= nil do
            local escopo = rawget(controle, "petrichorContexto")
            if escopo ~= nil then return escopo[chave] end
            controle = controle:getParent()
        end
        return ambiente[chave]
    end})
end

return Contexto
