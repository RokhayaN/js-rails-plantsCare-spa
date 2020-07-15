/*class Plants{
    constructor(){
        this.plants = []
        this.adapter = new PlantsAdapter()
        this.formSubmit = document.getElementById("form-submit");
        this.formButtons = document.getElementById("form-show-buttons")
        //this.bindEventListeners()
        this.fetchAndLoadPlants()

    }

    fetchAndLoadPlants(){
       this.adapter.getPlants()
       .then(plants =>{
        return console.log(plants)
       })
       .then(() => {
        this.render()
       })
    }

    render(){
      console.log('period pooh...')
    }
}*/

class Plants{
    constructor() {
      this.plants = [];
      this.adapter = new PlantsAdapter();
      this.formSubmit = document.getElementById("form-submit");
      this.formButtons = document.getElementById("form-show-buttons");
      this.addPlantButton = document.getElementById("add-plant");
      this.cardContainer = document.getElementById('plant-card-container');
      this.bindEventListeners();
      this.fetchAndLoadPlants();
    }


    fetchAndLoadPlants() {
      this.adapter.getPlants().then(plants => this.createPlants(plants)).then(() => this.addPlantsToDom())
    }


    bindEventListeners() {
      this.formSubmit.addEventListener("click", function() {
        event.preventDefault();
        this.addPlant();
      }.bind(this))
      this.addPlantButton.addEventListener("click", function() {
        this.switchForm();
        this.switchButtons();
      }.bind(this))
    }


    createArrayOfPlantCares(cares) {
      let careArray = [];
      for (let care of cares) {
        careArray.push(care.maintenance, care.light, care.fertilization);
      }
      return careArray
    }


    createPlants(plants) {
      for (let plant of plants) {
        let cares = this.createArrayOfPlantCares(plant.attributes.cares)
        this.plants.push(new Plant(plant.attributes.name, plant.attributes.image, plant.attributes.description, cares))
      }
    }


    addPlantsToDom() {
      for (let plant of this.plants) {
        Plant.createPlantCard()
      }
    }


    addPlant() {
      const form = event.target.parentElement
      const cares = form[3].value.split(', ')
      const plant = new Plant(form[0].value, form[1].value, form[2].value, cares)
      const configurationObject = {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
        body: JSON.stringify({
          "name": form[0].value,
          "image": form[1].value,
          "description": form[2].value,
          "cares": cares
        })
      };
      this.adapter.postPlantToApi(configurationObject).then(function(json) {
        plant.createPlantCard();
        this.switchButtons();
        this.switchForm();
      }.bind(this))
    }


    hideOrShowElement(element) {
      if (element.classList.contains("hidden")) {
        element.classList.remove("hidden");
      } else {
        element.className += " hidden";
      }
    }


    switchForm() {
      const form = this.formSubmit.parentElement;
      this.hideOrShowElement(form);
    }


    switchButtons() {
      this.hideOrShowElement(this.formButtons);
    }

    clearPlants() {
      this.cardContainer.innerHTML = "";
    }


    //getAndLoadRandomPlantByCare() {
      //this.clearPlants();
     // const care = event.target.value
     // this.adapter.getPlantByCare(care).then(json => this.loadRandomPlant(json.data.attributes))
    //}


    loadRandomPlant(plant) {
      let cares = this.createArrayOfPlantCares(plant.cares)
      const p = new Plant(plant.name, plant.image, plant.description, cares)
      p.createPlantCard();
    }
  }
