/* const myPizza={
    size:"medium",
    crust:"original",
    bake:function(){
        return console.log(`Baking a ${this.size} ${this.crust} crust pizza`);
    }
}

myPizza.bake(); */

class Pizza{
    constructor(typePizza,sizePizza,crustPizza){
        this.type=typePizza;
        this.size=sizePizza;
        this.crust=crustPizza;
        this.toppings=[];
    }
    getToppings(){
        return this.toppings;
    }
    setToppings(toppingsPizza){
        this.toppings.push(toppingsPizza);
    }
    bake(){
        return console.log(`Baking a ${this.size} ${this.crust} crust pizza with ${this.toppings}`);
    }
}

const myPizza=new Pizza("margaritaa","small","thin")
myPizza.setToppings("sause");
myPizza.setToppings("egg");
console.log(myPizza.getToppings());
myPizza.bake();
