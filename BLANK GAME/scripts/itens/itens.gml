function defineBlesses(){
   global.blesses = [
    { 
        name: "Força", 
        description: "+20% dano", 
        rarity: "Comum", 
        buff_function: function() {
            with oPlayer dano += dano * .2 
        }

    },
    {
        name: "Velocidade", 
        description: "+1 velocidade", 
        rarity: "Rara", 
        buff_function: function() {
            with oPlayer spd += 1
        }
    },
    {
        name: "Vida Extra", 
        description: "+10% de vida", 
        rarity: "Épica", 
        buff_function: function() {
            with oPlayer maxLife += maxLife * .1
        }
    },
    {
        name: "Mais ataques", 
        description: "Aumenta a velocidade de ataque em 10%", 
        rarity: "Comum", 
        buff_function: function() {
            with oPlayer atkSpdInicial -= atkSpdInicial * .1
        }
    },
    // mais bless aqui...
    ];
}

function getRandomBlesses(n) {
    var arr = [];
    var indices = ds_list_create();
    
    // pegar indices para não repetir
    while (ds_list_size(indices) < array_length(global.blesses)) {
        ds_list_add(indices, ds_list_size(indices));
    }
    
    for (var i = 0; i < n; i++) {
        var idx = irandom(ds_list_size(indices) - 1);
        array_push(arr, global.blesses[indices[| idx]]);
        ds_list_delete(indices, idx);
    }
    
    ds_list_destroy(indices);
    return arr;
} 

