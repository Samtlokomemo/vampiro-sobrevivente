//Na frente de tudo
depth = -999999999999999999999999999999999999999999999999

randomize()
name = "Nome Irado";                        // Nome da bless
description = "Descrição Daora";            // Descrição para UI
buff_function = noone;                      // Função que aplica o buff
rarity = choose("Comum", "Rara", "Épica", "Lendária")

text_scale = .3;

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