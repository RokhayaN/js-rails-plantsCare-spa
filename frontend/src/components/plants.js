class Plants{
    constructor(){
        this.plants = []
        this.adapter = new PlantsAdapter()
        //this.bindEventListeners()
        this.fetchAndLoadPlants()

    }

    fetchAndLoadPlants(){
       this.adapter.getPlants()
       .then(plants =>{
           console.log(plants)
       })
    }

}