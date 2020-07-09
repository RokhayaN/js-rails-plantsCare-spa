class CaresAdapter{
    constructor(){
        this.baseUrl = 
        "http://localhost:3001/api/v1/cares"
    }
    getCares(){
        return fetch(this.baseURL)
        .then(res => res.json())
        .then(json => json.data)
    }
}
