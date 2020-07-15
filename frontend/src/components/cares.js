class Cares {
    constructor() {
    this.adapter = new CaresAdapter();
  }
  //fetchAndLoadCares() {
    //this.adapter.getCares()
    //.then(cares => this.createPlants(plants))
   // .then(() => this.addPlantsToDom())
  //}

  fetchAndLoadCares(){
    this.adapter.getCares()
    .then(cares =>{
    return console.log(cares)
    })
 }
}

