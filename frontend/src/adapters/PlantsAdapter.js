class PlantsAdapter{
    constructor(){
        this.baseURL = "http://localhost:3001/api/v1/plants"
    }
     getPlants(){
        return fetch(this.baseURL)
        .then(res => res.json())
        .then(json => json.data)
    }
}

//adapter = new PlantsAdapter() 
//const plants = adapter.getPlants()


    
  
    