class PlantsAdapter{
    constructor(){
        this.baseURL = "http://localhost:3001/api/v1/plants"
    }
     //getPlants(){
      //  return fetch(this.baseURL)
       // .then(res => res.json())
       // .then(json => json.data)
   // }

   getPlants(){
    return fetch(this.baseURL)
    .then(res => res.json())
    .then(json => console.log(json))

    postPlantToApi(configurationObject) {
        return fetch(this.baseURL, configurationObject)
          .then(res => res.json())
          .catch(error => console.log("Error: " + error))
      }
}


    
  
    