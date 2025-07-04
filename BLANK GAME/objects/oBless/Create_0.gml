//Na frente de tudo
depth = -999999999999999999999999999999999999999999999999

randomize()
name = "Nome Irado";                        // Nome da bless
description = "Descrição Daora";            // Descrição para UI
buff_function = function(){
    return
}                      // Função que aplica o buff
rarity = noone

text_scale = .3;

function setData(_blessData) {
    name = _blessData.name;
    description = _blessData.description;
    rarity = _blessData.rarity;
    buff_function = _blessData.buff_function;
}

function getRarityColor(rarity_str) {
    switch (rarity_str) {
        case "Comum":      
            return c_white;
        case "Rara":       
            return c_yellow;
        case "Épica":      
            return c_purple;
        case "Lendária":   
            return c_orange;
    }
}