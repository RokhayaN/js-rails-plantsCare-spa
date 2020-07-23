class Cares {
    constructor() {
    this.adapter = new CaresAdapter();
  }
  
  fetchAndLoadCares(){
    this.adapter.getCares()
    .then(cares =>{
    return console.log(cares)
    })
 }
}

